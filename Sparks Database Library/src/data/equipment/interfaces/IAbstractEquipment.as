package data.equipment.interfaces
{
	public interface IAbstractEquipment extends IDescribable
	{
		function get type():String;
		function set type( value:String ):void;
		function get scale():String;
		function set scale( value:String ):void;
		function get skill():String;
		function set skill( value:String ):void;
		function get cost():String;
		function set cost( value:String ):void;
		function get gameNotes():String;
		function set gameNotes( value:String ):void;
		function get campaignNotes():String;
		function set campaignNotes( value:String ):void;
		function get sources():Vector.<ISource>;
		function set sources( value:Vector.<ISource> ):void;
	}
}