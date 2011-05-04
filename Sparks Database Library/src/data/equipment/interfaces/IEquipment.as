//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data.equipment.interfaces {

	public interface IEquipment extends IAbstractEquipment {
		function get availabilityLegal():Vector.<String>;
		function set availabilityLegal( value:Vector.<String> ):void;
		function get availabilityRarity():Vector.<String>;
		function set availabilityRarity( value:Vector.<String> ):void;
		function get model():String;
		function set model( value:String ):void;
	}
}