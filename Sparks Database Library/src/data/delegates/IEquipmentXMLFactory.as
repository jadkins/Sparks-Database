//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data.delegates {

	import data.equipment.interfaces.IArmor;
	import data.equipment.interfaces.IEquipment;
	import data.equipment.interfaces.IExplosive;
	import data.equipment.interfaces.ISensor;
	import data.equipment.interfaces.ISensorSuite;
	import data.equipment.interfaces.IStarshipWeapon;
	import data.equipment.interfaces.IVehicleWeapon;
	import data.equipment.interfaces.IWeapon;

	public interface IEquipmentXMLFactory {
		function createArmor( xml:XML ):IArmor;
		function createArmorList( xml:XML ):Vector.<IArmor>;
		function createEquipment( xml:XML ):IEquipment;
		function createEquipmentList( xml:XML ):Vector.<IEquipment>;
		function createExplosive( xml:XML ):IExplosive;
		function createSensor( xml:XML ):ISensor;
		function createSensorSuite( xml:XML ):ISensorSuite;
		function createStarshipWeapon( xml:XML ):IStarshipWeapon;
		function createVehicleWeapon( xml:XML ):IVehicleWeapon;
		function createWeapon( xml:XML ):IWeapon;
		function createWeaponList( xml:XML ):Vector.<IWeapon>;
	}
}