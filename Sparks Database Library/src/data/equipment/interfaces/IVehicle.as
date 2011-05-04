//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data.equipment.interfaces {

	public interface IVehicle extends IAbstractVehicle {
		function get altitudeRange():Vector.<String>;
		function set altitudeRange( value:Vector.<String> ):void;
		function get bodyStrength():String;
		function set bodyStrength( value:String ):void;
		function get cover():String;
		function set cover( value:String ):void;
		function get move():String;
		function set move( value:String ):void;
	}
}