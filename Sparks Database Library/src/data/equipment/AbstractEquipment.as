package data.equipment
{
	import data.Describable;
	import data.Source;
	import data.equipment.interfaces.IAbstractEquipment;
	import data.equipment.interfaces.ISource;
	
	public class AbstractEquipment extends Describable implements IAbstractEquipment
	{
		private var _sources:Vector.<ISource>;
		
		public function AbstractEquipment( xmlRoot:String = "", name:String = "", description:String = "", type:String = "", scale:String = "", skill:String = "",
										   cost:String = "", gamesNotes:String = "", campaignNotes:String = "", sources:Vector.<ISource> = null )
		{
			super( xmlRoot, name, description );
			
			this.type = type;
			this.scale = scale;
			this.skill = skill;
			this.cost = cost;
			this.gameNotes = gamesNotes;
			this.campaignNotes = campaignNotes;
			this.sources = sources;
		}
		
		public function get type():String
		{
			if( xml && xml.type && xml.type != "" )
			{
				return xml.type;
			}
			
			return "";
		}
		
		public function set type(value:String):void
		{
			if( !xml )
			{
				throwXmlError( "type" );
				return;
			}
			
			if( xml && xml.type )
				xml.type = value;
			else
				xml.appendChild( "<type>" + value + "</type>" );
		}
		
		public function get scale():String
		{
			if( xml && xml.scale && xml.scale != "" )
			{
				return xml.scale;
			}
			
			return "";
		}
		
		public function set scale(value:String):void
		{
			if( !xml )
			{
				throwXmlError( "scale" );
				return;
			}
			
			if( xml && xml.skill )
				xml.skill = value;
			else
				xml.appendChild( "<scale>" + value + "</scale>" );
		}
		
		public function get skill():String
		{
			if( xml && xml.skill && xml.skill != "" )
			{
				return xml.skill;
			}
			
			return "";
		}
		
		public function set skill(value:String):void
		{
			if( !xml )
			{
				throwXmlError( "skill" );
				return;
			}
			
			if( xml && xml.skill )
				xml.skill = value;
			else
				xml.appendChild( "<skill>" + value + "</skill>" );
		}
		
		public function get cost():String
		{
			if( xml && xml.cost && xml.cost != "" )
			{
				return xml.cost;
			}
			
			return "";
		}
		
		public function set cost(value:String):void
		{
			if( !xml )
			{
				throwXmlError( "cost" );
				return;
			}
			
			if( xml && xml.cost )
				xml.cost = value;
			else
				xml.appendChild( "<cost>" + value + "</cost>" );
		}
		
		public function get gameNotes():String
		{
			if( xml && xml.gameNotes && xml.gameNotes != "" )
			{
				return xml.gameNotes;
			}
			
			return "";
		}
		
		public function set gameNotes(value:String):void
		{
			if( !xml )
			{
				throwXmlError( "gameNotes" );
				return;
			}
			
			if( xml && xml.gameNotes )
				xml.gameNotes = value;
			else
				xml.appendChild( "<gameNotes>" + value + "</gameNotes>" );
		}
		
		public function get campaignNotes():String
		{
			if( xml && xml.campaignNotes && xml.campaignNotes != "" )
			{
				return xml.campaignNotes;
			}
			
			return "";
		}
		
		public function set campaignNotes(value:String):void
		{
			if( !xml )
			{
				throwXmlError( "campaignNotes" );
				return;
			}
			
			if( xml && xml.campaignNotes )
				xml.campaignNotes = value;
			else
				xml.appendChild( "<campaignNotes>" + value + "</campaignNotes>" );
		}
		
		public function get sources():Vector.<ISource>
		{
			if( _sources )
				return _sources;
			
			if( !xml )
				throwXmlError( "sources" );
			
			_sources = new Vector.<ISource>();
			
			for each( var sourceXML:XML in xml.sources.children() )
			{
				var source:ISource = new Source();
				source.xml = sourceXML;
				_sources.push( source );
			}
			
			return _sources;
		}
		
		public function set sources(value:Vector.<ISource>):void
		{
			if( value == _sources )
				return;
			
			_sources = value;
			
			var newSourceList:XML = <sources></sources>;
			
			for each( var source:ISource in _sources )
			{
				newSourceList.appendChild( source.xml );
			}
			
			if( xml.child( "sources" ) != null )
				xml.sources = newSourceList;
			else
				xml.appendChild( newSourceList );
		}
		
		override public function set xml(value:XML):void
		{
			if( value == xml )
				return;
			
			_sources = null;
			
			super.xml = value;
		}
	}
}