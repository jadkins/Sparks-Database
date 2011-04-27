package data.equipment.interfaces
{
	public interface ISensor extends IXMLObject
	{
		function get range():String;
		function set range( value:String ):void;
		function get strength():String;
		function set strength( value:String ):void;
	}
}