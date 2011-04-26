package data.interfaces
{
	public interface IVehicle extends IAbstractVehicle
	{
		function get altitudeRange():Array;
		function set altitudeRange( value:Array ):void;
		function get cover():String;
		function set cover( value:String ):void;
		function get move():String;
		function set move( value:String ):void;
		function get bodyStrength():String;
		function set bodyStrength( value:String ):void;
	}
}