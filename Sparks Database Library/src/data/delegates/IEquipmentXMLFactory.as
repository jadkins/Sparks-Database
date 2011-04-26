package data.delegates
{
	import data.interfaces.IArmor;
	import data.interfaces.IExplosive;
	import data.interfaces.IGear;
	import data.interfaces.ISensor;
	import data.interfaces.ISensorSuite;
	import data.interfaces.IStarshipWeapon;
	import data.interfaces.IVehicleWeapon;
	import data.interfaces.IWeapon;

	public interface IEquipmentXMLFactory
	{
		function createEquipment( xml:XML ):IGear;
		function createArmor( xml:XML ):IArmor;
		function createWeapon( xml:XML ):IWeapon;
		function createSensor( xml:XML ):ISensor;
		function createSensorSuite( xml:XML ):ISensorSuite;
		function createExplosive( xml:XML ):IExplosive;
		function createVehicleWeapon( xml:XML ):IVehicleWeapon;
		function createStarshipWeapon( xml:XML ):IStarshipWeapon;
	}
}