package data.delegates
{
	import data.interfaces.IStarship;
	import data.interfaces.IVehicle;

	public interface IVehicleXMLFactory
	{
		function createVehicle( xml:XML ):IVehicle;
		function createStarship( xml:XML ):IStarship;
	}
}