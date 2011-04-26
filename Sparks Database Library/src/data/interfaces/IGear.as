package data.interfaces
{
	public interface IGear extends IEquipment
	{
		function get model():String;
		function set model( value:String ):void;
		function get availabilityRarity():Vector.<String>;
		function set availabilityRarity( value:Vector.<String> ):void;
		function get availabilityLegal():Vector.<String>;
		function set availabilityLegal( value:Vector.<String> ):void;
	}
}