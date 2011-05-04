//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data.equipment.interfaces {

	public interface IExplosive extends IWeapon {
		function get blastRadius():Vector.<String>;
		function set blastRadius( value:Vector.<String> ):void;
	}
}