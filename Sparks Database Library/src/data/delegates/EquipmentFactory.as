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
	import data.equipment.interfaces.ISource;
	import data.equipment.interfaces.IStarshipWeapon;
	import data.equipment.interfaces.IVehicleWeapon;
	import data.equipment.interfaces.IWeapon;
	import data.vehicles.weapons.StarshipWeapon;
	import data.vehicles.weapons.VehicleWeapon;

	public class EquipmentFactory implements IEquipmentFactory {

		//----------------------------------------------------------
		//
		//
		//   Public Functions 
		//
		//
		//----------------------------------------------------------

		public function createArmor( name:String, description:String, type:String, scale:String, skill:String, availabilityRarity:Vector.<String>,
									 availabilityLegal:Vector.<String>, cost:String, protection:Vector.<String>, penalties:Vector.<String>,
									 gameNotes:String, campaignNotes:String, sources:Vector.<ISource> ):IArmor {

			return new Armor( "armor", name, description, type, scale, skill, availabilityRarity, availabilityLegal, cost, protection, penalties,
							  gameNotes, campaignNotes, sources );
		}

		public function createEquipment( name:String, model:String, description:String, type:String, scale:String, skill:String,
										 availabilityRarity:Vector.<String>, availabilityLegal:Vector.<String>, cost:String, gameNotes:String,
										 campaignNotes:String, sources:Vector.<ISource> ):IEquipment {

			return new Equipment( "item", name, description, model, type, scale, skill, availabilityRarity, availabilityLegal, cost, gameNotes,
								  campaignNotes, sources );
		}

		public function createExplosive( name:String, description:String, type:String, scale:String, skill:String, cost:String,
										 availabilityRarity:Vector.<String>, availabilityLegal:Vector.<String>, ammo:Vector.<String>,
										 fireRate:Vector.<String>, difficulty:Vector.<String>, blastRadius:Vector.<String>, damage:Vector.<String>,
										 range:Vector.<String>, gameNotes:String, campaignNotes:String, sources:Vector.<ISource> ):IExplosive {

			return new Explosive( "explosive", name, description, type, scale, skill, cost, availabilityRarity, availabilityLegal, null, null,
								  difficulty, damage, range, blastRadius, gameNotes, campaignNotes, sources );
		}

		public function createSensor( name:String, range:String, strength:String ):ISensor {

			return new Sensor( name, range, strength );
		}

		public function createSensorSuite( passive:ISensor, scan:ISensor, search:ISensor, focus:ISensor, skill:String, cost:String, creationDC:String,
										   campaignNotes:String, sources:Vector.<ISource> ):ISensorSuite {

			var sensors:Vector.<ISensor> = new Vector.<ISensor>();
			sensors.push( passive, scan, search, focus );
			return new SensorSuite( "sensorSuite", skill, sensors, cost, creationDC, campaignNotes, sources );
		}

		public function createStarshipWeapon( name:String, description:String, type:String, scale:String, skill:String,
											  availabilityRarity:Vector.<String>, availabilityLegal:Vector.<String>, ammo:Vector.<String>,
											  fireRate:Vector.<String>, difficulty:Vector.<String>, cost:String, fireArc:Vector.<String>, crew:String,
											  fireControl:String, damage:Vector.<String>, spaceRange:Vector.<String>, atmosphereRange:Vector.<String>,
											  gameNotes:String, campaignNotes:String, sources:Vector.<ISource> ):IStarshipWeapon {

			return new StarshipWeapon( "starshipWeapon", name, description, type, crew, scale, skill, fireArc, fireControl, cost, availabilityRarity,
									   availabilityLegal, ammo, fireRate, difficulty, damage, atmosphereRange, spaceRange, gameNotes, campaignNotes,
									   sources );
		}

		public function createVehicleWeapon( name:String, description:String, type:String, scale:String, skill:String,
											 availabilityRarity:Vector.<String>, availabilityLegal:Vector.<String>, ammo:Vector.<String>,
											 fireRate:Vector.<String>, difficulty:Vector.<String>, cost:String, fireArc:Vector.<String>, crew:String,
											 fireControl:String, damage:Vector.<String>, range:Vector.<String>, gameNotes:String,
											 campaignNotes:String, sources:Vector.<ISource> ):IVehicleWeapon {

			return new VehicleWeapon( "vehicleWeapon", name, description, type, crew, scale, skill, fireArc, fireControl, cost, availabilityRarity,
									  availabilityLegal, ammo, fireRate, difficulty, damage, range, gameNotes, campaignNotes, sources );
		}

		public function createWeapon( name:String, description:String, type:String, scale:String, skill:String, cost:String,
									  availabilityRarity:Vector.<String>, availabilityLegal:Vector.<String>, ammo:Vector.<String>,
									  fireRate:Vector.<String>, difficulty:Vector.<String>, damage:Vector.<String>, range:Vector.<String>,
									  gameNotes:String, campaignNotes:String, sources:Vector.<ISource> ):IWeapon {

			return new Weapon( "weapon", name, description, type, scale, skill, cost, availabilityRarity, availabilityLegal, ammo, fireRate,
							   difficulty, damage, range, gameNotes, campaignNotes, sources )
		}

		//----------------------------------------------------------
		//
		//
		//   Constructor 
		//
		//
		//----------------------------------------------------------

		public function EquipmentFactory() {
		}
	}
}