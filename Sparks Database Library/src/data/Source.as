//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data {

	import data.equipment.interfaces.ISource;

	public class Source extends Describable implements ISource {

		//----------------------------------------------------------
		//
		//
		//   Public Functions 
		//
		//
		//----------------------------------------------------------

		public function get pages():String {

			if( xml && xml.pages && xml.pages != "" ) {
				return xml.pages;
			}

			return "";
		}

		public function set pages( value:String ):void {

			if( !xml ) {
				throwXmlError( "pages" );
				return;
			}

			if( xml && xml.pages )
				xml.pages = value;
			else
				xml.appendChild( "<pages>" + value + "</pages>" );
		}

		public function get referenceId():String {

			if( xml && xml.referenceId && xml.referenceId != "" ) {
				return xml.referenceId;
			}

			return "";
		}

		public function set referenceId( value:String ):void {

			if( !xml ) {
				throwXmlError( "referenceId" );
				return;
			}

			if( xml && xml.referenceId )
				xml.referenceId = value;
			else
				xml.appendChild( "<referenceId>" + value + "</referenceId>" );
		}

		//----------------------------------------------------------
		//
		//
		//   Constructor 
		//
		//
		//----------------------------------------------------------

		public function Source() {
		}
	}
}