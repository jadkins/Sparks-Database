//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data.vehicles.weapons {

	import data.equipment.interfaces.ISource;
	import data.equipment.interfaces.IStarshipWeapon;
	import utils.DataUtils;

	public class StarshipWeapon extends VehicleWeapon implements IStarshipWeapon {

		//----------------------------------------------------------
		//
		//
		//   Properties 
		//
		//
		//----------------------------------------------------------

		private var _spaceRange:Vector.<String>;


		//----------------------------------------------------------
		//
		//
		//   Public Functions 
		//
		//
		//----------------------------------------------------------

		public function get spaceRange():Vector.<String> {

			if( _spaceRange )
				return _spaceRange;

			if( !xml )
				throwXmlError( "spaceRange" );

			var newVector:Vector.<String> = new Vector.<String>();

			_spaceRange = DataUtils.getVectorFromXML( xml, "spaceRange", ",", newVector ) as Vector.<String>;

			return _spaceRange;
		}

		public function set spaceRange( value:Vector.<String> ):void {

			if( value == _spaceRange )
				return;

			_spaceRange = value;

			DataUtils.apendVectorToXML( _spaceRange, "spaceRange", ",", xml );
		}

		//----------------------------------------------------------
		//
		//
		//   Constructor 
		//
		//
		//----------------------------------------------------------

		public function StarshipWeapon( xmlRoot:String=NAME, name:String="", description:String="", type:String="", crew:String="", scale:String="",
										skill:String="", fireArc:Vector.<String>=null, fireControl:String="", cost:String="",
										availabilityRarity:Vector.<String>=null, availabilityLegal:Vector.<String>=null, ammo:Vector.<String>=null,
										fireRate:Vector.<String>=null, difficulty:Vector.<String>=null, damage:Vector.<String>=null,
										atmosphereRange:Vector.<String>=null, spaceRange:Vector.<String>=null, gameNotes:String="", campaignNotes:String="", sources:Vector.<ISource>=null ) {

			super( xmlRoot, name, description, type, crew, scale, skill, fireArc, fireControl, cost, availabilityRarity, availabilityLegal, ammo,
				   fireRate, difficulty, damage, atmosphereRange, gameNotes, campaignNotes, sources );
			this.spaceRange = spaceRange;
		}
	}
}