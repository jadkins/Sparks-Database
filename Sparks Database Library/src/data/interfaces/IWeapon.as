package data.interfaces
{
	public interface IWeapon extends IGear
	{
		function get ammo():String;
		function set ammo( value:String ):void;
		function get fireRate():Array;
		function set fireRate( value:Array ):void;
		function get difficulty():String;
		function set difficulty( value:String ):void;
		function get range():Array;
		function set range( value:Array ):void;
		function get damage():Array;
		function set damage( value:Array ):void;
	}
}