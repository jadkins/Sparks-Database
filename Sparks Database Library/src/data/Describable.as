//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data {

	import data.equipment.interfaces.IDescribable;

	public class Describable extends XMLItem implements IDescribable {

		//----------------------------------------------------------
		//
		//
		//   Public Functions 
		//
		//
		//----------------------------------------------------------

		public function get description():String {

			if( xml && xml.description && xml.description != "" ) {
				return xml.description;
			}

			return "";
		}

		public function set description( value:String ):void {

			if( !xml ) {
				throwXmlError( "description" );
				return;
			}

			if( xml && xml.description )
				xml.description = value;
			else
				xml.appendChild( "<description>" + value + "</description>" );
		}

		public function get id():String {

			if( xml && xml.id && xml.id != "" ) {
				return xml.id;
			}

			return "";
		}

		public function get name():String {

			if( xml && xml.name && xml.name != "" ) {
				return xml.name;
			}

			return "";
		}

		public function set name( value:String ):void {

			if( !xml ) {
				throwXmlError( "name" );
				return;
			}

			if( xml && xml.name )
				xml.name = value;
			else
				xml.appendChild( "<name>" + value + "</name>" );
		}

		//----------------------------------------------------------
		//
		//
		//   Constructor 
		//
		//
		//----------------------------------------------------------

		public function Describable( xmlRoot:String="", name:String="", description:String="" ) {

			super( xmlRoot );

			this.name = name;
			this.description = description;
		}
	}
}