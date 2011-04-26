package data
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.utils.getQualifiedClassName;
	
	import mx.collections.IList;
	import mx.core.IPropertyChangeNotifier;
	import mx.events.CollectionEvent;
	import mx.events.CollectionEventKind;
	import mx.events.PropertyChangeEvent;
	import mx.events.PropertyChangeEventKind;
	import mx.resources.IResourceManager;
	import mx.resources.ResourceManager;
	import mx.utils.ArrayUtil;
	import mx.utils.UIDUtil;
	
	public class VectorList extends EventDispatcher implements IList, IExternalizable, IPropertyChangeNotifier
	{
		protected var _source:Object;
		
		private var resourceManager:IResourceManager =
			ResourceManager.getInstance();
		
		private var _dispatchEvents:int = 0;
		
		private var _uid:String;
		
		public function VectorList( source:Object = null )
		{
			super();
			
			disableEvents();
			this.source = source;
			enableEvents();
			_uid = UIDUtil.createUID();
		}
		
		[Bindable("collectionChange")]
		public function get length():int
		{
			if (source)
				return source.length;
			else
				return 0;
		}
		
		public function get source():Object
		{
			return _source;
		}
		
		public function set source(s:Object):void
		{
			var i:int;
			var len:int;
			if (_source && _source.length)
			{
				len = _source.length;
				for (i = 0; i < len; i++)
				{
					stopTrackUpdates(_source[i]);
				}
			}
			_source  = s ? s : new Vector.<Object>;
			len = _source.length;
			for (i = 0; i < len; i++)
			{
				startTrackUpdates(_source[i]);
			}
			
			if (_dispatchEvents == 0)
			{
				var event:CollectionEvent =
					new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
				event.kind = CollectionEventKind.RESET;
				dispatchEvent(event);
			}
		}
		
		public function addItem(item:Object):void
		{
			addItemAt(item, length);
		}
		
		public function addItemAt(item:Object, index:int):void
		{
			if (index < 0 || index > length) 
			{
				var message:String = resourceManager.getString(
					"collections", "outOfBounds", [ index ]);
				throw new RangeError(message);
			}
			
			source.splice(index, 0, item);
			
			startTrackUpdates(item);
			internalDispatchEvent(CollectionEventKind.ADD, item, index);
		}
		
		public function getItemAt(index:int, prefetch:int = 0):Object
		{
			if (index < 0 || index >= length)
			{
				var message:String = resourceManager.getString(
					"collections", "outOfBounds", [ index ]);
				throw new RangeError(message);
			}
			
			return source[index];
		}
		
		public function getItemIndex(item:Object):int
		{
			var n:int = source.length;
			for (var i:int = 0; i < n; i++)
			{
				if (source[i] === item)
					return i;
			}
			
			return -1;
		}
		
		public function itemUpdated(item:Object, property:Object = null, 
									oldValue:Object = null, 
									newValue:Object = null):void
		{
			var event:PropertyChangeEvent =
				new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_CHANGE);
			
			event.kind = PropertyChangeEventKind.UPDATE;
			event.source = item;
			event.property = property;
			event.oldValue = oldValue;
			event.newValue = newValue;
			
			itemUpdateHandler(event);        
		}   
		
		public function removeAll():void
		{
			if (length > 0)
			{
				var len:int = length;
				for (var i:int = 0; i < len; i++)
				{
					stopTrackUpdates(source[i]);
				}
				
				source.splice(0, length);
				internalDispatchEvent(CollectionEventKind.RESET);
			}    
		}
		
		public function removeItem(item:Object):Boolean
		{
			var index:int = getItemIndex(item);
			var result:Boolean = index >= 0;
			if (result)
				removeItemAt(index);
			
			return result;
		}
		
		public function removeItemAt(index:int):Object
		{
			if (index < 0 || index >= length)
			{
				var message:String = resourceManager.getString(
					"collections", "outOfBounds", [ index ]);
				throw new RangeError(message);
			}
			
			var removed:Object = source.splice(index, 1)[0];
			stopTrackUpdates(removed);
			internalDispatchEvent(CollectionEventKind.REMOVE, removed, index);
			return removed;
		}
		
		public function setItemAt(item:Object, index:int):Object
		{
			if (index < 0 || index >= length) 
			{
				var message:String = resourceManager.getString(
					"collections", "outOfBounds", [ index ]);
				throw new RangeError(message);
			}
			
			var oldItem:Object = source[index];
			source[index] = item;
			stopTrackUpdates(oldItem);
			startTrackUpdates(item);
			
			//dispatch the appropriate events 
			if (_dispatchEvents == 0)
			{
				var hasCollectionListener:Boolean = 
					hasEventListener(CollectionEvent.COLLECTION_CHANGE);
				var hasPropertyListener:Boolean = 
					hasEventListener(PropertyChangeEvent.PROPERTY_CHANGE);
				var updateInfo:PropertyChangeEvent; 
				
				if (hasCollectionListener || hasPropertyListener)
				{
					updateInfo = new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_CHANGE);
					updateInfo.kind = PropertyChangeEventKind.UPDATE;
					updateInfo.oldValue = oldItem;
					updateInfo.newValue = item;
					updateInfo.property = index;
				}
				
				if (hasCollectionListener)
				{
					var event:CollectionEvent =
						new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
					event.kind = CollectionEventKind.REPLACE;
					event.location = index;
					event.items.push(updateInfo);
					dispatchEvent(event);
				}
				
				if (hasPropertyListener)
				{
					dispatchEvent(updateInfo);
				}
			}
			return oldItem;    
		}
		
		public function toArray():Array
		{
			return null;
			//return source.concat();
		}
		
		
		
		/**
		 *  Ensures that only the source property is seralized.
		 *  @private
		 */
		public function readExternal(input:IDataInput):void
		{
			source = input.readObject();
		}
		
		/**
		 *  Ensures that only the source property is serialized.
		 *  @private
		 */
		public function writeExternal(output:IDataOutput):void
		{
			output.writeObject(_source);
		}
		
		public function get uid():String
		{
			return _uid;
		}
		
		public function set uid(value:String):void
		{
			_uid = value;
		}
		
		override public function toString():String
		{
			if (source)
				return source.toString();
			else
				return getQualifiedClassName(this); 
		}  
		
		private function enableEvents():void
		{
			_dispatchEvents++;
			if (_dispatchEvents > 0)
				_dispatchEvents = 0;
		}
		
		private function disableEvents():void
		{
			_dispatchEvents--;
		}
		
		private function internalDispatchEvent(kind:String, item:Object = null, location:int = -1):void
		{
			if (_dispatchEvents == 0)
			{
				if (hasEventListener(CollectionEvent.COLLECTION_CHANGE))
				{
					var event:CollectionEvent =
						new CollectionEvent(CollectionEvent.COLLECTION_CHANGE);
					event.kind = kind;
					event.items.push(item);
					event.location = location;
					dispatchEvent(event);
				}
				
				// now dispatch a complementary PropertyChangeEvent
				if (hasEventListener(PropertyChangeEvent.PROPERTY_CHANGE) && 
					(kind == CollectionEventKind.ADD || kind == CollectionEventKind.REMOVE))
				{
					var objEvent:PropertyChangeEvent =
						new PropertyChangeEvent(PropertyChangeEvent.PROPERTY_CHANGE);
					objEvent.property = location;
					if (kind == CollectionEventKind.ADD)
						objEvent.newValue = item;
					else
						objEvent.oldValue = item;
					dispatchEvent(objEvent);
				}
			}
		}
		
		protected function itemUpdateHandler(event:PropertyChangeEvent):void
		{
			internalDispatchEvent(CollectionEventKind.UPDATE, event);
			// need to dispatch object event now
			if (_dispatchEvents == 0 && hasEventListener(PropertyChangeEvent.PROPERTY_CHANGE))
			{
				var objEvent:PropertyChangeEvent = PropertyChangeEvent(event.clone());
				var index:uint = getItemIndex(event.target);
				objEvent.property = index.toString() + "." + event.property;
				dispatchEvent(objEvent);
			}
		}
		
		protected function startTrackUpdates(item:Object):void
		{
			if (item && (item is IEventDispatcher))
			{
				IEventDispatcher(item).addEventListener(
					PropertyChangeEvent.PROPERTY_CHANGE, 
					itemUpdateHandler, false, 0, true);
			}
		}
		
		protected function stopTrackUpdates(item:Object):void
		{
			if (item && item is IEventDispatcher)
			{
				IEventDispatcher(item).removeEventListener(
					PropertyChangeEvent.PROPERTY_CHANGE, 
					itemUpdateHandler);    
			}
		}
	}
}