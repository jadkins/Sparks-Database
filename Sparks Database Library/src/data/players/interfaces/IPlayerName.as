package data.players.interfaces
{
	import data.equipment.interfaces.IXMLItem;
	
	public interface IPlayerName extends IXMLItem
	{
		function get firstName():String;
		function set firstName( value:String ):void;
		function get nickName():String;
		function set nickName( value:String ):void;
		function get middleName():String;
		function set middleName( value:String ):void;
		function get lastName():String;
		function set lastName( value:String ):void;
		function get suffix():String;
		function set suffix( value:String ):void;
	}
}