//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data.equipment.interfaces {

	public interface IVehicleWeapon extends IWeapon {
		function get crew():String;
		function set crew( value:String ):void;
		function get fireArc():Vector.<String>;
		function set fireArc( value:Vector.<String> ):void;
		function get fireControl():String;
		function set fireControl( value:String ):void;
	}
}