package data.delegates
{
	import data.equipment.interfaces.IArmor;
	import data.equipment.interfaces.IEquipment;
	import data.equipment.interfaces.IExplosive;
	import data.equipment.interfaces.ISensor;
	import data.equipment.interfaces.ISensorSuite;
	import data.equipment.interfaces.IStarshipWeapon;
	import data.equipment.interfaces.IVehicleWeapon;
	import data.equipment.interfaces.IWeapon;

	public interface IEquipmentXMLFactory
	{
		function createEquipmentList( xml:XML ):Vector.<IEquipment>;
		function createEquipment( xml:XML ):IEquipment;
		function createArmorList( xml:XML ):Vector.<IArmor>;
		function createArmor( xml:XML ):IArmor;
		function createWeaponList( xml:XML ):Vector.<IWeapon>;
		function createWeapon( xml:XML ):IWeapon;
		function createSensor( xml:XML ):ISensor;
		function createSensorSuite( xml:XML ):ISensorSuite;
		function createExplosive( xml:XML ):IExplosive;
		function createVehicleWeapon( xml:XML ):IVehicleWeapon;
		function createStarshipWeapon( xml:XML ):IStarshipWeapon;
	}
}