//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data.equipment.interfaces {

	public interface IXMLItem {
		function throwXmlError( property:String ):void;
		function get xml():XML;
		function set xml( value:XML ):void;
		function get xmlRoot():String;
	}
}