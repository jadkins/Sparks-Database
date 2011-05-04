package data.conventions
{
	import data.equipment.interfaces.IDescribable;
	import data.players.interfaces.IAddress;
	
	public interface IConvention extends IDescribable
	{
		function get coordinatorId():String;
		function set coordinatorId( value:String ):void;
		function get location():IAddress;
		function set location( value:IAddress ):void;
		function get startTime():Date;
		function set startTime( value:Date ):void;
		function get endTime():Date;
		function set endTime( value:Date ):void;
		function get website():String;
		function set website( value:String ):void;
	}
}