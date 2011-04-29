package data
{
	import data.equipment.interfaces.IXMLItem;
	
	public class XMLItem implements IXMLItem
	{
		private var _propertyName:String;
		
		private var _xml:XML;
		
		public function XMLItem( propertyName:String = "item" )
		{
			this.propertyName = propertyName;
		}
		
		public function get xmlRoot():String
		{
			if( xml )
				return xml.localName();
			
			return propertyName;
		}
		
		public function get propertyName():String
		{
			return _propertyName;
		}
		
		public function set propertyName(value:String):void
		{
			if( value == _propertyName )
				return;
			
			if( value == "" )
				throwXmlError( "name" );
			
			_propertyName = value;
			setName( _propertyName );
		}
		
		
		public function get xml():XML
		{
			return _xml;
		}
		
		public function set xml(value:XML):void
		{
			if( value == _xml )
				return;
			
			if( !value )
				throwXmlError( "nullXml" );
			
			_xml = value;
		}
		
		protected function setName( value:String ):void
		{
			if( !xml )
				xml = new XML( "<" + xmlRoot + "/>" );
			else if( xml && xml.localName() != value )
				xml.setLocalName( value );
		}
		
		public function throwXmlError(property:String):void
		{
		}
	}
}