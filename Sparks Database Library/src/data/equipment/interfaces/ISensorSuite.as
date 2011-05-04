//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data.equipment.interfaces {

	public interface ISensorSuite extends IAbstractEquipment {
		function getSystem( name:String ):ISensor;
		function get sensors():Vector.<ISensor>;
		function set sensors( value:Vector.<ISensor> ):void;
		function setSystem( name:String, value:ISensor ):void;
	}
}