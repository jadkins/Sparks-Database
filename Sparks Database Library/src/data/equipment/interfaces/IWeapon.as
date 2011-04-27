package data.equipment.interfaces
{
	public interface IWeapon extends IEquipment
	{
		function get ammo():Vector.<String>;
		function set ammo( value:Vector.<String> ):void;
		function get fireRate():Vector.<String>;
		function set fireRate( value:Vector.<String> ):void;
		function get difficulty():Vector.<String>;
		function set difficulty( value:Vector.<String> ):void;
		function get range():Vector.<String>;
		function set range( value:Vector.<String> ):void;
		function get damage():Vector.<String>;
		function set damage( value:Vector.<String> ):void;
	}
}