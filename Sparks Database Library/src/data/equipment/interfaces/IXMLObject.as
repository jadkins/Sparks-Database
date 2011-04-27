package data.equipment.interfaces
{
	public interface IXMLObject
	{
		function get xmlRoot():String;
		function get xml():XML;
		function set xml( value:XML ):void;
		function throwXmlError( property:String ):void;
	}
}