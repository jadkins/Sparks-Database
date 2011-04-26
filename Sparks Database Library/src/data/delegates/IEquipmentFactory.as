package data.delegates
{
	import data.interfaces.IArmor;
	import data.interfaces.IExplosive;
	import data.interfaces.IGear;
	import data.interfaces.ISensor;
	import data.interfaces.ISensorSuite;
	import data.interfaces.ISource;
	import data.interfaces.IStarshipWeapon;
	import data.interfaces.IVehicleWeapon;
	import data.interfaces.IWeapon;

	public interface IEquipmentFactory
	{
		function createEquipment( name:String, type:String, scale:String, skill:String, cost:String, 
								  gameNotes:String, campaignNotes:String, sources:Vector.<ISource> ):IGear;
		function createArmor( name:String, type:String, scale:String, skill:String, cost:String, protection:Vector.<String>, 
							  penalties:Vector.<String>, gameNotes:String, campaignNotes:String, sources:Vector.<ISource> ):IArmor;
		function createWeapon( name:String, type:String, scale:String, skill:String, cost:String, ammo:String, 
							   fireRate:Vector.<String>, difficulty:Vector.<String>, damage:Vector.<String>, range:Vector.<String>,
							   gameNotes:String, campaignNotes:String, sources:Vector.<ISource> ):IWeapon;
		function createSensor( range:String, strength:String ):ISensor;
		function createSensorSuite( passive:ISensor, scan:ISensorSuite, search:ISensorSuite, focus:ISensorSuite ):ISensorSuite;
		function createExplosive( name:String, type:String, scale:String, skill:String, cost:String, ammo:String, 
								  blastRadius:Vector.<String>, difficulty:Vector.<String>, damage:Vector.<String>, range:Vector.<String>,
								  gameNotes:String, campaignNotes:String, sources:Vector.<ISource> ):IExplosive;
		function createVehicleWeapon( name:String, type:String, scale:String, skill:String, cost:String,
									  fireArc:Vector.<String>, crew:String, fireControl:String, damage:String, range:Vector.<String>,
									  gameNotes:String, campaignNotes:String, sources:Vector.<ISource> ):IVehicleWeapon;
		function createStarshipWeapon( name:String, type:String, scale:String, skill:String, cost:String,
									   fireArc:Vector.<String>, crew:String, fireControl:String, 
									   damage:String, spaceRange:Vector.<String>, atmosphereRange:Vector.<String>,
									   gameNotes:String, campaignNotes:String, sources:Vector.<ISource> ):IStarshipWeapon;
	}
}