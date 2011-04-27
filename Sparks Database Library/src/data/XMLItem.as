package data
{
	import data.equipment.interfaces.IXMLObject;
	
	public class XMLItem implements IXMLObject
	{
		private static const NAME:String = "item";
		
		private var _xml:XML;
		
		public function XMLItem()
		{
			xml = new XML( "<" + xmlRoot + "/>" );
		}
		
		public function get xmlRoot():String
		{
			return NAME;
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
		
		public function throwXmlError(property:String):void
		{
		}
	}
}