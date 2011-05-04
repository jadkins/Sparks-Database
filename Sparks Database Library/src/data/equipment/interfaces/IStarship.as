//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data.equipment.interfaces {

	public interface IStarship extends IAbstractVehicle {
		function get atmosphere():String;
		function set atmosphere( value:String ):void;
		function get consumables():String;
		function set consumables( value:String ):void;
		function get hull():String;
		function set hull( value:String ):void;
		function get hyperdriveBackup():String;
		function set hyperdriveBackup( value:String ):void;
		function get hyperdriveMultiplier():String;
		function set hyperdriveMultiplier( value:String ):void;
		function get navComputer():String;
		function set navComputer( value:String ):void;
		function get space():String;
		function set space( value:String ):void;
	}
}