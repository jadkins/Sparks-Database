//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data.equipment.interfaces {

	public interface IStarshipWeapon extends IVehicleWeapon {
		function get spaceRange():Vector.<String>;
		function set spaceRange( value:Vector.<String> ):void;
	}
}