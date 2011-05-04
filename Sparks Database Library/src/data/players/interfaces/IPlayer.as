package data.players.interfaces
{
	import data.equipment.interfaces.IXMLItem;
	
	public interface IPlayer extends IXMLItem
	{
		function get id():String;
		function get playerName():IPlayerName;
		function set playerName( value:IPlayerName ):void;
		function get joinDate():Date;
		function set joinDate( value:Date ):void;
		function get lastMembershipDate():Date;
		function set lastMembershipDate( value:Date ):void;
		function get address():IAddress;
		function set address( value:IAddress ):void;
		function get email():String;
		function set email( value:String ):void;
		function get phone():String;
		function set phone( value:String ):void;
	}
}