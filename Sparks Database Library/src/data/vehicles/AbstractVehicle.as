//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data.vehicles {

	import data.delegates.EquipmentXMLFactory;
	import data.delegates.IEquipmentXMLFactory;
	import data.equipment.AbstractEquipment;
	import data.equipment.SensorSuite;
	import data.equipment.interfaces.IAbstractVehicle;
	import data.equipment.interfaces.ISensorSuite;
	import data.equipment.interfaces.ISource;
	import data.equipment.interfaces.IWeapon;
	import utils.DataUtils;

	public class AbstractVehicle extends AbstractEquipment implements IAbstractVehicle {

		//----------------------------------------------------------
		//
		//
		//   Properties 
		//
		//
		//----------------------------------------------------------

		private var _sensors:ISensorSuite;

		private var _weapons:Vector.<IWeapon>;


		//----------------------------------------------------------
		//
		//
		//   Public Functions 
		//
		//
		//----------------------------------------------------------

		public function addWeapon( weapon:IWeapon ):void {

			weapons.push( weapon );

			if( !xml )
				throwXmlError( "weapons" );

			if( !( xml.weapons )) {
				xml.appendChild( "<weapons></weapons>" );
			}

			xml.weapons.appendChild( weapon.xml );
		}

		public function get cargoCapacity():String {

			if( xml && xml.cargoCapacity && xml.cargoCapacity != "" ) {
				return xml.cargoCapacity;
			}

			return "";
		}

		public function set cargoCapacity( value:String ):void {

			if( !xml ) {
				throwXmlError( "cargoCapacity" );
				return;
			}

			if( xml && xml.cargoCapacity )
				xml.cargoCapacity = value;
			else
				xml.appendChild( "<cargoCapacity>" + value + "</cargoCapacity>" );
		}

		public function get craft():String {

			if( xml && xml.craft && xml.craft != "" ) {
				return xml.craft;
			}

			return "";
		}

		public function set craft( value:String ):void {

			if( !xml ) {
				throwXmlError( "craft" );
				return;
			}

			if( xml && xml.craft )
				xml.craft = value;
			else
				xml.appendChild( "<craft>" + value + "</craft>" );
		}

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

		public function get length():String {

			if( xml && xml.length && xml.length != "" ) {
				return xml.length;
			}

			return "";
		}

		public function set length( value:String ):void {

			if( !xml ) {
				throwXmlError( "length" );
				return;
			}

			if( xml && xml.length )
				xml.length = value;
			else
				xml.appendChild( "<length>" + value + "</length>" );
		}

		public function get maneuverability():String {

			if( xml && xml.maneuverability && xml.maneuverability != "" ) {
				return xml.maneuverability;
			}

			return "";
		}

		public function set maneuverability( value:String ):void {

			if( !xml ) {
				throwXmlError( "maneuverability" );
				return;
			}

			if( xml && xml.maneuverability )
				xml.maneuverability = value;
			else
				xml.appendChild( "<maneuverability>" + value + "</maneuverability>" );
		}

		public function get passengers():String {

			if( xml && xml.passengers && xml.passengers != "" ) {
				return xml.passengers;
			}

			return "";
		}

		public function set passengers( value:String ):void {

			if( !xml ) {
				throwXmlError( "passengers" );
				return;
			}

			if( xml && xml.passengers )
				xml.passengers = value;
			else
				xml.appendChild( "<passengers>" + value + "</passengers>" );
		}

		public function removeAllWeapons():void {

			weapons = null;
		}

		public function removeWeapon( weapon:IWeapon ):void {

			if( !xml || !( xml.weapons ))
				throwXmlError( "weapons" );

			xml.weapons.replace( weapon.xmlRoot, "" );
		}

		public function get sensors():ISensorSuite {

			if( _sensors )
				return _sensors;

			if( !xml )
				throwXmlError( "sensors" );

			var itemFactory:IEquipmentXMLFactory = new EquipmentXMLFactory();
			_sensors = itemFactory.createSensorSuite( xml.sensors );

			return _sensors;
		}

		public function set sensors( value:ISensorSuite ):void {

			if( value == _sensors )
				return;

			_sensors = value;

			if( xml.sensors ) {
				xml.sensors = value.xml;
			} else {
				xml.appendChild( value.xml );
			}
		}

		public function get shields():String {

			if( xml && xml.maneuverability && xml.maneuverability != "" ) {
				return xml.maneuverability;
			}

			return "";
		}

		public function set shields( value:String ):void {

			if( !xml ) {
				throwXmlError( "maneuverability" );
				return;
			}

			if( xml && xml.maneuverability )
				xml.maneuverability = value;
			else
				xml.appendChild( "<maneuverability>" + value + "</maneuverability>" );
		}

		public function get weapons():Vector.<IWeapon> {

			if( _weapons )
				return _weapons;

			if( !xml )
				throwXmlError( "weapons" );

			var newVector:Vector.<IWeapon> = new Vector.<IWeapon>();

			return _weapons;
		}

		public function set weapons( value:Vector.<IWeapon> ):void {

			if( value == _weapons )
				return;

			_weapons = value;

			setWeapons( value );
		}

		//----------------------------------------------------------
		//
		//
		//   Protected Functions 
		//
		//
		//----------------------------------------------------------

		protected function setWeapons( value:Vector.<IWeapon> ):void {

			if( xml.weapons ) {
				xml.replace( "weapons", "" );
			}

			if( value == null )
				return;

			for each( var weapon:IWeapon in value ) {
				addWeapon( weapon );
			}
		}

		//----------------------------------------------------------
		//
		//
		//   Constructor 
		//
		//
		//----------------------------------------------------------

		public function AbstractVehicle( xmlRoot:String="", name:String="", description:String="", craft:String="", type:String="", scale:String="",
										 skill:String="", crew:String="", passengers:String="", cargoCapacity:String="", cost:String="",
										 length:String="", manueverability:String="", shields:String="", sensors:SensorSuite=null,
										 weapons:Vector.<IWeapon>=null, gamesNotes:String="", campaignNotes:String="", sources:Vector.<ISource>=null ) {

			super( xmlRoot, name, description, type, scale, skill, cost, gamesNotes, campaignNotes, sources );

			this.craft = craft;
			this.length = length;
			this.crew = crew;
			this.passengers = passengers;
			this.cargoCapacity = cargoCapacity;
			this.maneuverability = manueverability;
			this.shields = shields;
			this.weapons = weapons;
			this.sensors = sensors;
		}
	}
}