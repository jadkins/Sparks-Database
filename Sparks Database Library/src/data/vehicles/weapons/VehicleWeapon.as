//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data.vehicles.weapons {

	import data.equipment.Weapon;
	import data.equipment.interfaces.ISource;
	import data.equipment.interfaces.IVehicleWeapon;
	import utils.DataUtils;

	public class VehicleWeapon extends Weapon implements IVehicleWeapon {

		//----------------------------------------------------------
		//
		//
		//   Properties 
		//
		//
		//----------------------------------------------------------

		private var _fireArc:Vector.<String>;


		//----------------------------------------------------------
		//
		//
		//   Public Functions 
		//
		//
		//----------------------------------------------------------

		public function get crew():String {

			if( xml && xml.crew && xml.crew != "" ) {
				return xml.crew;
			}

			return "";
		}

		public function set crew( value:String ):void {

			if( !xml ) {
				throwXmlError( "crew" );
				return;
			}

			if( xml && xml.crew )
				xml.crew = value;
			else
				xml.appendChild( "<crew>" + value + "</crew>" );
		}

		public function get fireArc():Vector.<String> {

			if( _fireArc )
				return _fireArc;

			if( !xml )
				throwXmlError( "fireArc" );

			var newVector:Vector.<String> = new Vector.<String>();

			_fireArc = DataUtils.getVectorFromXML( xml, "fireArc", ",", newVector ) as Vector.<String>;

			return _fireArc;
		}

		public function set fireArc( value:Vector.<String> ):void {

			if( value == _fireArc )
				return;

			_fireArc = value;

			DataUtils.apendVectorToXML( _fireArc, "fireArc", "/", xml );
		}

		public function get fireControl():String {

			if( xml && xml.fireControl && xml.fireControl != "" ) {
				return xml.fireControl;
			}

			return "";
		}

		public function set fireControl( value:String ):void {

			if( !xml ) {
				throwXmlError( "fireControl" );
				return;
			}

			if( xml && xml.fireControl )
				xml.fireControl = value;
			else
				xml.appendChild( "<fireControl>" + value + "</fireControl>" );
		}

		//----------------------------------------------------------
		//
		//
		//   Constructor 
		//
		//
		//----------------------------------------------------------

		public function VehicleWeapon( xmlRoot:String=NAME, name:String="", description:String="", type:String="", crew:String="", scale:String="",
									   skill:String="", fireArc:Vector.<String>=null, fireControl:String="", cost:String="",
									   availabilityRarity:Vector.<String>=null, availabilityLegal:Vector.<String>=null, ammo:Vector.<String>=null,
									   fireRate:Vector.<String>=null, difficulty:Vector.<String>=null, damage:Vector.<String>=null,
									   range:Vector.<String>=null, gameNotes:String="", campaignNotes:String="", sources:Vector.<ISource>=null ) {

			super( xmlRoot, name, description, type, scale, skill, cost, availabilityRarity, availabilityLegal, ammo, fireRate, difficulty, damage,
				   range, gameNotes, campaignNotes, sources );

			this.crew = crew;
			this.fireArc = fireArc;
			this.fireControl = fireControl;
		}
	}
}