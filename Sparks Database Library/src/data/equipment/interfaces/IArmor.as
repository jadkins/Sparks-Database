//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data.equipment.interfaces {

	public interface IArmor extends IEquipment {
		function get penalties():Vector.<String>;
		function set penalties( value:Vector.<String> ):void;
		function get protection():Vector.<String>;
		function set protection( value:Vector.<String> ):void;
	}
}