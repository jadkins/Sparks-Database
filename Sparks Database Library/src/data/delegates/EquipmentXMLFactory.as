package data.delegates
{
	import data.equipment.Armor;
	import data.equipment.Equipment;
	import data.equipment.Weapon;
	import data.equipment.interfaces.IArmor;
	import data.equipment.interfaces.IEquipment;
	import data.equipment.interfaces.IExplosive;
	import data.equipment.interfaces.ISensor;
	import data.equipment.interfaces.ISensorSuite;
	import data.equipment.interfaces.IStarshipWeapon;
	import data.equipment.interfaces.IVehicleWeapon;
	import data.equipment.interfaces.IWeapon;
	
	public class EquipmentXMLFactory implements IEquipmentXMLFactory
	{
		public function EquipmentXMLFactory()
		{
		}
		
		public function createEquipmentList( xml:XML ):Vector.<IEquipment>
		{
			var list:Vector.<IEquipment> = new Vector.<IEquipment>();
			
			for each( var item:XML in xml.child( "item" ) )
			{
				var equipment:IEquipment = createEquipment( item );
				list.push( equipment );
			}
			
			return list;
		}
		
		public function createEquipment(xml:XML):IEquipment
		{
			var item:IEquipment = new Equipment();
			item.xml = xml;
			return item;
		}
		
		public function createArmorList( xml:XML ):Vector.<IArmor>
		{
			var list:Vector.<IArmor> = new Vector.<IArmor>();
			
			for each( var item:XML in xml.child( "armor" ) )
			{
				var equipment:IArmor = createArmor( item );
				list.push( equipment );
			}
			
			return list;
		}
		
		public function createArmor(xml:XML):IArmor
		{
			var item:IArmor = new Armor();
			item.xml = xml;
			return item;
		}
		
		public function createWeaponList( xml:XML ):Vector.<IWeapon>
		{
			var list:Vector.<IWeapon> = new Vector.<IWeapon>();
			
			for each( var item:XML in xml.child( "weapon" ) )
			{
				var equipment:IWeapon = createWeapon( item );
				list.push( equipment );
			}
			
			return list;
		}
		
		public function createWeapon(xml:XML):IWeapon
		{
			var item:IWeapon = new Weapon();
			item.xml = xml;
			return item;
		}
		
		public function createSensor(xml:XML):ISensor
		{
			return null;
		}
		
		public function createSensorSuite(xml:XML):ISensorSuite
		{
			return null;
		}
		
		public function createExplosive(xml:XML):IExplosive
		{
			return null;
		}
		
		public function createVehicleWeapon(xml:XML):IVehicleWeapon
		{
			return null;
		}
		
		public function createStarshipWeapon(xml:XML):IStarshipWeapon
		{
			return null;
		}
	}
}