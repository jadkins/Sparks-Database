//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data.delegates {

	import data.equipment.interfaces.IStarship;
	import data.equipment.interfaces.IVehicle;

	public interface IVehicleFactory {
		function createStarship( xml:XML ):IStarship;
		function createVehicle( xml:XML ):IVehicle;
	}
}