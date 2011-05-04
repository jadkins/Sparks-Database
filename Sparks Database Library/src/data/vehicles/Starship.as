//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data.vehicles {

	import data.equipment.SensorSuite;
	import data.equipment.interfaces.ISource;
	import data.equipment.interfaces.IStarship;
	import data.equipment.interfaces.IWeapon;

	public class Starship extends AbstractVehicle implements IStarship {

		//----------------------------------------------------------
		//
		//
		//   Public Functions 
		//
		//
		//----------------------------------------------------------

		public function get atmosphere():String {

			if( xml && xml.atmosphere ) {
				return xml.atmosphere;
			}

			return "";
		}

		public function set atmosphere( value:String ):void {

			if( !xml ) {
				throwXmlError( "atmosphere" );
				return;
			}

			if( xml && xml.atmosphere )
				xml.atmosphere = value;
			else
				xml.appendChild( "<atmosphere>" + value + "</atmosphere>" );
		}

		public function get consumables():String {

			if( xml && xml.consumables ) {
				return xml.consumables;
			}

			return "";
		}

		public function set consumables( value:String ):void {

			if( !xml ) {
				throwXmlError( "consumables" );
				return;
			}

			if( xml && xml.consumables )
				xml.consumables = value;
			else
				xml.appendChild( "<consumables>" + value + "</consumables>" );
		}

		public function get hull():String {

			if( xml && xml.hull ) {
				return xml.hull;
			}

			return "";
		}

		public function set hull( value:String ):void {

			if( !xml ) {
				throwXmlError( "hull" );
				return;
			}

			if( xml && xml.hull )
				xml.hull = value;
			else
				xml.appendChild( "<hull>" + value + "</hull>" );
		}

		public function get hyperdriveBackup():String {

			if( xml && xml.hyperdriveBackup ) {
				return xml.hyperdriveBackup;
			}

			return "";
		}

		public function set hyperdriveBackup( value:String ):void {

			if( !xml ) {
				throwXmlError( "hull" );
				return;
			}

			if( xml && xml.hyperdriveBackup )
				xml.hyperdriveBackup = value;
			else
				xml.appendChild( "<hyperdriveBackup>" + value + "</hyperdriveBackup>" );
		}

		public function get hyperdriveMultiplier():String {

			if( xml && xml.hyperdriveMultiplier ) {
				return xml.hyperdriveMultiplier;
			}

			return "";
		}

		public function set hyperdriveMultiplier( value:String ):void {

			if( !xml ) {
				throwXmlError( "hyperdriveMultiplier" );
				return;
			}

			if( xml && xml.hyperdriveMultiplier )
				xml.hyperdriveMultiplier = value;
			else
				xml.appendChild( "<hyperdriveMultiplier>" + value + "</hyperdriveMultiplier>" );
		}

		public function get navComputer():String {

			if( xml && xml.navComputer ) {
				return xml.navComputer;
			}

			return "";
		}

		public function set navComputer( value:String ):void {

			if( !xml ) {
				throwXmlError( "navComputer" );
				return;
			}

			if( xml && xml.navComputer )
				xml.navComputer = value;
			else
				xml.appendChild( "<navComputer>" + value + "</navComputer>" );
		}

		public function get space():String {

			if( xml && xml.space ) {
				return xml.space;
			}

			return "";
		}

		public function set space( value:String ):void {

			if( !xml ) {
				throwXmlError( "space" );
				return;
			}

			if( xml && xml.space )
				xml.space = value;
			else
				xml.appendChild( "<space>" + value + "</space>" );
		}

		//----------------------------------------------------------
		//
		//
		//   Constructor 
		//
		//
		//----------------------------------------------------------

		public function Starship( xmlRoot:String="", name:String="", description:String="", craft:String="", type:String="", scale:String="",
								  skill:String="", crew:String="", passengers:String="", navComputer:String="", hyperdriveMultiplier:String="",
								  hyperdriveBackup:String="", atmosphere:String="", cargoCapacity:String="", consumables:String="", cost:String="",
								  length:String="", manueverability:String="", hull:String="", shields:String="", space:String="",
								  sensors:SensorSuite=null, weapons:Vector.<IWeapon>=null, gamesNotes:String="", campaignNotes:String="",
								  sources:Vector.<ISource>=null ) {

			super( xmlRoot, name, description, craft, type, scale, skill, crew, passengers, cargoCapacity, cost, length, manueverability, shields,
				   sensors, weapons, gamesNotes, campaignNotes, sources );
		}
	}
}
