//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data.equipment.interfaces {

	public interface IDescribable extends IXMLItem {
		function get description():String;
		function set description( value:String ):void;
		function get id():String;
		function get name():String;
		function set name( value:String ):void;
	}
}