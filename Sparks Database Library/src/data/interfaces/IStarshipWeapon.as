package data.interfaces
{
	public interface IStarshipWeapon extends IAbstractVehicleWeapon
	{
		function get spaceRange():Vector.<String>;
		function set spaceRange( value:Vector.<String> ):void;
		function get atmosphereRange():Vector.<String>;
		function set atmosphereRange( value:Vector.<String> ):void;
	}
}