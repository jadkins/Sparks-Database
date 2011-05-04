//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data.delegates {

	import data.equipment.Armor;
	import data.equipment.Equipment;
	import data.equipment.Explosive;
	import data.equipment.Sensor;
	import data.equipment.SensorSuite;
	import data.equipment.Weapon;
	import data.equipment.interfaces.IArmor;
	import data.equipment.interfaces.IEquipment;
	import data.equipment.interfaces.IExplosive;
	import data.equipment.interfaces.ISensor;
	import data.equipment.interfaces.ISensorSuite;
	import data.equipment.interfaces.IStarshipWeapon;
	import data.equipment.interfaces.IVehicleWeapon;
	import data.equipment.interfaces.IWeapon;
	import data.vehicles.weapons.StarshipWeapon;
	import data.vehicles.weapons.VehicleWeapon;

	public class EquipmentXMLFactory implements IEquipmentXMLFactory {

		//----------------------------------------------------------
		//
		//
		//   Public Functions 
		//
		//
		//----------------------------------------------------------

		public function createArmor( xml:XML ):IArmor {

			var item:IArmor = new Armor();
			item.xml = xml;
			return item;
		}

		public function createArmorList( xml:XML ):Vector.<IArmor> {

			var list:Vector.<IArmor> = new Vector.<IArmor>();

			for each( var item:XML in xml.child( "armor" )) {
				var equipment:IArmor = createArmor( item );
				list.push( equipment );
			}

			return list;
		}

		public function createEquipment( xml:XML ):IEquipment {

			var item:IEquipment = new Equipment();
			item.xml = xml;
			return item;
		}

		public function createEquipmentList( xml:XML ):Vector.<IEquipment> {

			var list:Vector.<IEquipment> = new Vector.<IEquipment>();

			for each( var item:XML in xml.child( "item" )) {
				var equipment:IEquipment = createEquipment( item );
				list.push( equipment );
			}

			return list;
		}

		public function createExplosive( xml:XML ):IExplosive {

			var item:IExplosive = new Explosive();
			item.xml = xml;
			return item;
		}

		public function createSensor( xml:XML ):ISensor {

			var item:ISensor = new Sensor();
			item.xml = xml;
			return item;
		}

		public function createSensorSuite( xml:XML ):ISensorSuite {

			var item:ISensorSuite = new SensorSuite();
			item.xml = xml;
			return item;
		}

		public function createStarshipWeapon( xml:XML ):IStarshipWeapon {

			var item:IStarshipWeapon = new StarshipWeapon();
			item.xml = xml;
			return item;
		}

		public function createVehicleWeapon( xml:XML ):IVehicleWeapon {

			var item:IVehicleWeapon = new VehicleWeapon();
			item.xml = xml;
			return item;
		}

		public function createWeapon( xml:XML ):IWeapon {

			var item:IWeapon = new Weapon();
			item.xml = xml;
			return item;
		}

		public function createWeaponList( xml:XML ):Vector.<IWeapon> {

			var list:Vector.<IWeapon> = new Vector.<IWeapon>();

			for each( var item:XML in xml.child( "weapon" )) {
				var equipment:IWeapon = createWeapon( item );
				list.push( equipment );
			}

			return list;
		}

		//----------------------------------------------------------
		//
		//
		//   Constructor 
		//
		//
		//----------------------------------------------------------

		public function EquipmentXMLFactory() {
		}
	}
}