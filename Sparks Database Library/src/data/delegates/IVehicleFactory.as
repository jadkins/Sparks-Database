package data.delegates
{
	import data.equipment.interfaces.IStarship;
	import data.equipment.interfaces.IVehicle;

	public interface IVehicleFactory
	{
		function createVehicle( xml:XML ):IVehicle;
		function createStarship( xml:XML ):IStarship;
	}
}