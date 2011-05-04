//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data.equipment {

	import data.equipment.interfaces.IExplosive;
	import data.equipment.interfaces.ISource;
	import utils.DataUtils;

	public class Explosive extends Weapon implements IExplosive {

		//----------------------------------------------------------
		//
		//
		//   Properties 
		//
		//
		//----------------------------------------------------------

		private var _blastRadius:Vector.<String>;


		//----------------------------------------------------------
		//
		//
		//   Public Functions 
		//
		//
		//----------------------------------------------------------

		public function get blastRadius():Vector.<String> {

			if( _blastRadius )
				return _blastRadius;

			if( !xml )
				throwXmlError( "protection" );

			var newVector:Vector.<String> = new Vector.<String>();

			_blastRadius = DataUtils.getVectorFromXML( xml, "blastRadius", "/", newVector ) as Vector.<String>;

			return _blastRadius;
		}

		public function set blastRadius( value:Vector.<String> ):void {

			if( value == _blastRadius )
				return;

			_blastRadius = value;

			DataUtils.apendVectorToXML( _blastRadius, "blastRadius", "/", xml );
		}

		//----------------------------------------------------------
		//
		//
		//   Constructor 
		//
		//
		//----------------------------------------------------------

		public function Explosive( xmlRoot:String=NAME, name:String="", description:String="", type:String="", scale:String="", skill:String="",
								   cost:String="", availabilityRarity:Vector.<String>=null, availabilityLegal:Vector.<String>=null,
								   ammo:Vector.<String>=null, fireRate:Vector.<String>=null, difficulty:Vector.<String>=null, damage:Vector.<String>=
			null, range:Vector.<String>=null, blastRadius:Vector.<String>=null, gameNotes:String="", campaignNotes:String="",
								   sources:Vector.<ISource>=null ) {

			super( xmlRoot, name, description, type, scale, skill, cost, availabilityRarity, availabilityLegal, ammo, fireRate, difficulty, damage,
				   range, gameNotes, campaignNotes, sources );
		}
	}
}