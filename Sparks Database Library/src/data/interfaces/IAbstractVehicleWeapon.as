package data.interfaces
{
	public interface IAbstractVehicleWeapon extends IEquipment
	{
		function get fireArc():Vector.<String>;
		function set fireArc( value:Vector.<String> ):void;
		function get crew():String;
		function set crew( value:String ):void;
		function get fireControl():String;
		function set fireControl( value:String ):void;
		function get damage():String;
		function set damage( value:String ):void;
	}
}