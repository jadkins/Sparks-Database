package data.equipment.interfaces
{
	public interface IVehicleWeapon extends IAbstractVehicleWeapon
	{
		function get range():Vector.<String>;
		function set range( value:Vector.<String> ):void;
	}
}