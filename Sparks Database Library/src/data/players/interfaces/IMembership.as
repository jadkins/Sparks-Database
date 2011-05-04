package data.players.interfaces
{
	import data.equipment.interfaces.IXMLItem;
	
	public interface IMembership extends IXMLItem
	{
		function get playerId():IPlayer;
		function set playerId( value:IPlayer ):void;
		function get lastMembershipDate():Date;
		function set lastMembershipDate( value:Date ):void;
	}
}