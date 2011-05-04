package data.equipment.interfaces
{
	public interface IPlayerCraftable
	{
		function get cost():String;
		function set cost( value:String ):void;
		function get creationDc():String;
		function set creationDc( value:String ):void;
	}
}