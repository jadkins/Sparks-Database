package data.equipment.interfaces
{
	public interface IDescribable extends IXMLObject
	{
		function get id():String;
		function get name():String;
		function set name( value:String ):void;
		function get description():String;
		function set description( value:String ):void;
	}
}