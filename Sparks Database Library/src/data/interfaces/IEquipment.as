package data.interfaces
{
	public interface IEquipment
	{
		function get id():String;
		function set id( value:String ):void;
		function get name():String;
		function set name( value:String ):void;
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
		function get xml():XML;
		function set xml( value:XML ):void;
	}
}