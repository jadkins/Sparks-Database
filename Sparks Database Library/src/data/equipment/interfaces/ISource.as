//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data.equipment.interfaces {

	public interface ISource extends IXMLItem {
		function get pages():String;
		function set pages( value:String ):void;
		function get referenceId():String;
		function set referenceId( value:String ):void;
	}
}