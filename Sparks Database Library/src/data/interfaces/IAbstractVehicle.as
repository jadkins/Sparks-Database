package data.interfaces
{
	public interface IAbstractVehicle extends IEquipment
	{
		function get craft():String;
		function set craft( value:String ):void;
		function get length():String;
		function set length( value:String ):void;
		function get crew():String;
		function set crew( value:String ):void;
		function get passengers():String;
		function set passengers( value:String ):void;
		function get cargoCapacity():String;
		function set cargoCapacity( value:String ):void;
		function get maneuverability():String;
		function set maneuverability( value:String ):void;
		function get shields():String;
		function set shields( value:String ):void;
		function get sensors():ISensorSuite;
		function set sensors( value:ISensorSuite ):void;
		function get weapons():Array;
		function set weapons( value:Array ):void;
	}
}