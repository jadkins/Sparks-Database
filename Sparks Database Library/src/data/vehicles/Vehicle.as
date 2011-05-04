//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data.vehicles {

	import data.equipment.SensorSuite;
	import data.equipment.interfaces.ISource;
	import data.equipment.interfaces.IVehicle;
	import data.equipment.interfaces.IWeapon;
	import utils.DataUtils;

	public class Vehicle extends AbstractVehicle implements IVehicle {

		//----------------------------------------------------------
		//
		//
		//   Properties 
		//
		//
		//----------------------------------------------------------

		private var _altitudeRange:Vector.<String>;


		//----------------------------------------------------------
		//
		//
		//   Public Functions 
		//
		//
		//----------------------------------------------------------

		public function get altitudeRange():Vector.<String> {

			if( _altitudeRange )
				return _altitudeRange;

			if( !xml )
				throwXmlError( "altitudeRange" );

			var newVector:Vector.<String> = new Vector.<String>();

			_altitudeRange = DataUtils.getVectorFromXML( xml, "altitudeRange", "/", newVector ) as Vector.<String>;

			return _altitudeRange;
		}

		public function set altitudeRange( value:Vector.<String> ):void {

			if( value == _altitudeRange )
				return;

			_altitudeRange = value;

			DataUtils.apendVectorToXML( _altitudeRange, "altitudeRange", "/", xml );
		}

		public function get bodyStrength():String {

			if( xml && xml.bodyStrength ) {
				return xml.bodyStrength;
			}

			return "";
		}

		public function set bodyStrength( value:String ):void {

			if( !xml ) {
				throwXmlError( "bodyStrength" );
				return;
			}

			if( xml && xml.bodyStrength )
				xml.bodyStrength = value;
			else
				xml.appendChild( "<bodyStrength>" + value + "</bodyStrength>" );
		}

		public function get cover():String {

			if( xml && xml.cover ) {
				return xml.cover;
			}

			return "";
		}

		public function set cover( value:String ):void {

			if( !xml ) {
				throwXmlError( "cover" );
				return;
			}

			if( xml && xml.cover )
				xml.cover = value;
			else
				xml.appendChild( "<cover>" + value + "</cover>" );
		}

		public function get move():String {

			if( xml && xml.move ) {
				return xml.move;
			}

			return "";
		}

		public function set move( value:String ):void {

			if( !xml ) {
				throwXmlError( "move" );
				return;
			}

			if( xml && xml.move )
				xml.move = value;
			else
				xml.appendChild( "<move>" + value + "</move>" );
		}

		//----------------------------------------------------------
		//
		//
		//   Constructor 
		//
		//
		//----------------------------------------------------------

		public function Vehicle( xmlRoot:String="", name:String="", description:String="", craft:String="", type:String="", scale:String="",
								 skill:String="", crew:String="", passengers:String="", cargoCapacity:String="", cost:String="", length:String="",
								 altitudeRange:String="", cover:String="", move:String="", manueverability:String="", bodyStrength:String="",
								 shields:String="", sensors:SensorSuite=null, weapons:Vector.<IWeapon>=null, gamesNotes:String="",
								 campaignNotes:String="", sources:Vector.<ISource>=null ) {

			super( xmlRoot, name, description, craft, type, scale, skill, crew, passengers, cargoCapacity, cost, length, manueverability, shields,
				   sensors, weapons, gamesNotes, campaignNotes, sources );
		}
	}
}