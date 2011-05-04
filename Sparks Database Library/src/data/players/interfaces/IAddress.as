package data.players.interfaces
{
	import data.equipment.interfaces.IXMLItem;
	
	public interface IAddress extends IXMLItem
	{
		function get houseNumber():String;
		function set houseNumber( value:String ):void;
		function get street():String;
		function set street( value:String ):void;
		function get street2():String;
		function set street2( value:String ):void;
		function get city():String;
		function set city( value:String ):void;
		function get state():String;
		function set state( value:String ):void;
		function get country():String;
		function set country( value:String ):void;
		function get zip():String;
		function set zip( value:String ):void;
	}
}