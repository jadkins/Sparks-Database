//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data.equipment {

	import data.delegates.EquipmentXMLFactory;
	import data.delegates.IEquipmentXMLFactory;
	import data.equipment.interfaces.IPlayerCraftable;
	import data.equipment.interfaces.ISensor;
	import data.equipment.interfaces.ISensorSuite;
	import data.equipment.interfaces.ISource;
	
	import flash.utils.Dictionary;

	public class SensorSuite extends AbstractEquipment implements ISensorSuite, IPlayerCraftable {

		//----------------------------------------------------------
		//
		//
		//   Properties 
		//
		//
		//----------------------------------------------------------

		protected var sensorDictionary:Dictionary;

		private const NAME:String = "sensorSuite";

		private var _sensors:Vector.<ISensor>;


		//----------------------------------------------------------
		//
		//
		//   Public Functions 
		//
		//
		//----------------------------------------------------------

		public function getSystem( name:String ):ISensor {

			var system:ISensor;

			if( sensorDictionary && sensorDictionary[ name ]) {
				//The system exists
				system = sensorDictionary[ name ] as ISensor;
			} else if( xml && xml.child( name )) {
				var equipmentFactory:IEquipmentXMLFactory = new EquipmentXMLFactory();
				system = equipmentFactory.createSensor( xml.passive );
				setSystem( name, system );
			}

			return system;
		}

		public function get sensors():Vector.<ISensor> {

			if( !_sensors ) {
				_sensors = new Vector.<ISensor>
			}
			return _sensors;
		}

		public function set sensors( value:Vector.<ISensor> ):void {

			for each( var system:ISensor in value ) {
				setSystem( system.xmlRoot, system );
			}
		}
		
		public function get creationDc():String {
			
			if( xml && xml.creationDc && xml.creationDc != "" ) {
				return xml.creationDc;
			}
			
			return "";
		}
		
		public function set creationDc( value:String ):void {
			
			if( !xml ) {
				throwXmlError( "creationDc" );
				return;
			}
			
			if( xml && xml.creationDc )
				xml.creationDc = value;
			else
				xml.appendChild( "<creationDc>" + value + "</creationDc>" );
		}

		public function setSystem( name:String, system:ISensor ):void {

			if( system == null )
				removeSystem( name, system );
			else
				addSystem( name, system );
		}

		//----------------------------------------------------------
		//
		//
		//   Protected Functions 
		//
		//
		//----------------------------------------------------------

		protected function addSystem( name:String, value:ISensor ):void {

			if( !sensorDictionary )
				sensorDictionary = new Dictionary();

			if( !sensors )
				sensors = new Vector.<ISensor>();

			sensorDictionary[ name ] = value;
			sensors.push( value );

			if( xml.sensors == null ) {
				xml.appendChild( "sensors" );
			}

			if( xml.sensors && xml.sensors.child( name ))
				xml.sensors.replace( name, value );
			else
				xml.sensors.appendChild( value );
		}

		protected function removeSystem( name:String, system:ISensor ):void {

			sensorDictionary[ name ] = null;

			var newSensors:Vector.<ISensor> = new Vector.<ISensor>();

			for each( var item:ISensor in sensors ) {
				if( item != system )
					newSensors.push( item );
			}

			sensors = newSensors;
		}

		//----------------------------------------------------------
		//
		//
		//   Constructor 
		//
		//
		//----------------------------------------------------------

		public function SensorSuite( xmlRoot:String=NAME, skill:String="", sensors:Vector.<ISensor>=null, cost:String="", creationDc:String="", campaignNotes:String="",
									 sources:Vector.<ISource>=null ) {

			super( xmlRoot, "", "", "", "", skill, cost, "", campaignNotes, sources );

			this.sensors = sensors;
			this.creationDc = creationDc;
		}
	}
}