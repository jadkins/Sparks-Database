//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data {

	import data.equipment.interfaces.IXMLItem;

	public class XMLItem implements IXMLItem {

		//----------------------------------------------------------
		//
		//
		//   Properties 
		//
		//
		//----------------------------------------------------------

		private var _propertyName:String;

		private var _xml:XML;


		//----------------------------------------------------------
		//
		//
		//   Public Functions 
		//
		//
		//----------------------------------------------------------

		public function get propertyName():String {

			return _propertyName;
		}

		public function set propertyName( value:String ):void {

			if( value == _propertyName )
				return;

			if( value == "" )
				throwXmlError( "name" );

			_propertyName = value;
			setName( _propertyName );
		}

		public function throwXmlError( property:String ):void {
		}


		public function get xml():XML {

			return _xml;
		}

		public function set xml( value:XML ):void {

			if( value == _xml )
				return;

			if( !value )
				throwXmlError( "nullXml" );

			_xml = value;
		}

		public function get xmlRoot():String {

			if( xml )
				return xml.localName();

			return propertyName;
		}

		//----------------------------------------------------------
		//
		//
		//   Protected Functions 
		//
		//
		//----------------------------------------------------------

		protected function setName( value:String ):void {

			if( !xml )
				xml = new XML( "<" + xmlRoot + "/>" );
			else if( xml && xml.localName() != value )
				xml.setLocalName( value );
		}

		//----------------------------------------------------------
		//
		//
		//   Constructor 
		//
		//
		//----------------------------------------------------------

		public function XMLItem( propertyName:String="item" ) {

			this.propertyName = propertyName;
		}
	}
}