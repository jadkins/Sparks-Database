package data.equipment.interfaces
{
	public interface IAbstractVehicleWeapon extends IAbstractEquipment
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