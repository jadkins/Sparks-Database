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
	import data.equipment.interfaces.ISource;
	import data.equipment.interfaces.IStarshipWeapon;
	import data.equipment.interfaces.IVehicleWeapon;
	import data.equipment.interfaces.IWeapon;
	
	public class EquipmentFactory implements IEquipmentFactory
	{
		public function EquipmentFactory()
		{
		}
		
		public function createEquipment( name:String, model:String, description:String, type:String, scale:String, skill:String, availabilityRarity:Vector.<String>,
										 availabilityLegal:Vector.<String>,  cost:String, gameNotes:String, campaignNotes:String, sources:Vector.<ISource> ):IEquipment
		{
			return new Equipment( name, description, model, type, scale, skill, availabilityRarity, availabilityLegal, cost, gameNotes, 
				campaignNotes, sources );
		}
		
		public function createArmor(name:String, description:String, type:String, scale:String, skill:String, availabilityRarity:Vector.<String>,
									availabilityLegal:Vector.<String>, cost:String, protection:Vector.<String>, penalties:Vector.<String>, gameNotes:String, campaignNotes:String, sources:Vector.<ISource>):IArmor
		{
			return new Armor(name, description, type, scale, skill, availabilityRarity,
				availabilityLegal, cost, protection, penalties, gameNotes, campaignNotes, sources);
		}
		
		public function createWeapon(name:String, description:String, type:String, scale:String, skill:String, cost:String, availabilityRarity:Vector.<String>,
									 availabilityLegal:Vector.<String>, ammo:Vector.<String>, fireRate:Vector.<String>, difficulty:Vector.<String>, damage:Vector.<String>, range:Vector.<String>, gameNotes:String, campaignNotes:String, sources:Vector.<ISource>):IWeapon
		{
			return new Weapon( name, description, type, scale, skill, cost, availabilityRarity,
				availabilityLegal, ammo, fireRate, difficulty, damage, range, gameNotes, campaignNotes, sources)
		}
		
		public function createSensor(range:String, strength:String):ISensor
		{
			return null;
		}
		
		public function createSensorSuite(passive:ISensor, scan:ISensorSuite, search:ISensorSuite, focus:ISensorSuite):ISensorSuite
		{
			return null;
		}
		
		public function createExplosive(name:String, description:String, type:String, scale:String, skill:String, cost:String, ammo:String, blastRadius:Vector.<String>, difficulty:Vector.<String>, damage:Vector.<String>, range:Vector.<String>, gameNotes:String, campaignNotes:String, sources:Vector.<ISource>):IExplosive
		{
			return null;
		}
		
		public function createVehicleWeapon(name:String, description:String, type:String, scale:String, skill:String, cost:String, fireArc:Vector.<String>, crew:String, fireControl:String, damage:String, range:Vector.<String>, gameNotes:String, campaignNotes:String, sources:Vector.<ISource>):IVehicleWeapon
		{
			return null;
		}
		
		public function createStarshipWeapon(name:String, description:String, type:String, scale:String, skill:String, cost:String, fireArc:Vector.<String>, crew:String, fireControl:String, damage:String, spaceRange:Vector.<String>, atmosphereRange:Vector.<String>, gameNotes:String, campaignNotes:String, sources:Vector.<ISource>):IStarshipWeapon
		{
			return null;
		}
	}
}