//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data.equipment {

	import data.equipment.interfaces.ISource;
	import data.equipment.interfaces.IWeapon;
	import utils.DataUtils;

	public class Weapon extends Equipment implements IWeapon {

		//----------------------------------------------------------
		//
		//
		//   Properties 
		//
		//
		//----------------------------------------------------------

		private const NAME:String = "weapon";

		private var _ammo:Vector.<String>;

		private var _damage:Vector.<String>;

		private var _difficulty:Vector.<String>;

		private var _fireRate:Vector.<String>;

		private var _range:Vector.<String>;


		//----------------------------------------------------------
		//
		//
		//   Public Functions 
		//
		//
		//----------------------------------------------------------

		public function get ammo():Vector.<String> {

			if( _ammo )
				return _ammo;

			if( !xml )
				throwXmlError( "ammo" );

			var newVector:Vector.<String> = new Vector.<String>();

			_ammo = DataUtils.getVectorFromXML( xml, "ammo", ",", newVector ) as Vector.<String>;

			return _ammo;
		}

		public function set ammo( value:Vector.<String> ):void {

			if( value == _ammo )
				return;

			_ammo = value;

			DataUtils.apendVectorToXML( _ammo, "ammo", ",", xml );
		}

		public function get damage():Vector.<String> {

			if( _damage )
				return _damage;

			if( !xml )
				throwXmlError( "damage" );

			var newVector:Vector.<String> = new Vector.<String>();

			_damage = DataUtils.getVectorFromXML( xml, "damage", "/", newVector ) as Vector.<String>;

			return _damage;
		}

		public function set damage( value:Vector.<String> ):void {

			if( value == _damage )
				return;

			_damage = value;

			DataUtils.apendVectorToXML( _damage, "damage", "/", xml );
		}

		public function get difficulty():Vector.<String> {

			if( _difficulty )
				return _difficulty;

			if( !xml )
				throwXmlError( "difficulty" );

			var newVector:Vector.<String> = new Vector.<String>();

			_difficulty = DataUtils.getVectorFromXML( xml, "difficulty", ",", newVector ) as Vector.<String>;

			return _difficulty;
		}

		public function set difficulty( value:Vector.<String> ):void {

			if( value == _difficulty )
				return;

			_difficulty = value;

			DataUtils.apendVectorToXML( _difficulty, "difficulty", ",", xml );
		}

		public function get fireRate():Vector.<String> {

			if( _fireRate )
				return _fireRate;

			if( !xml )
				throwXmlError( "fireRate" );

			var newVector:Vector.<String> = new Vector.<String>();

			_fireRate = DataUtils.getVectorFromXML( xml, "fireRate", ",", newVector ) as Vector.<String>;

			return _fireRate;
		}

		public function set fireRate( value:Vector.<String> ):void {

			if( value == _fireRate )
				return;

			_fireRate = value;

			DataUtils.apendVectorToXML( _fireRate, "fireRate", ",", xml );
		}

		public function get range():Vector.<String> {

			if( _range )
				return _range;

			if( !xml )
				throwXmlError( "range" );

			var newVector:Vector.<String> = new Vector.<String>();

			_range = DataUtils.getVectorFromXML( xml, "range", "/", newVector ) as Vector.<String>;

			return _range;
		}

		public function set range( value:Vector.<String> ):void {

			if( value == _range )
				return;

			_range = value;

			DataUtils.apendVectorToXML( _range, "range", "/", xml );
		}

		override public function get xmlRoot():String {

			return NAME;
		}

		//----------------------------------------------------------
		//
		//
		//   Constructor 
		//
		//
		//----------------------------------------------------------

		public function Weapon( xmlRoot:String=NAME, name:String="", description:String="", type:String="", scale:String="", skill:String="",
								cost:String="", availabilityRarity:Vector.<String>=null, availabilityLegal:Vector.<String>=null, ammo:Vector.<String>=
			null, fireRate:Vector.<String>=null, difficulty:Vector.<String>=null, damage:Vector.<String>=null, range:Vector.<String>=null,
								gameNotes:String="", campaignNotes:String="", sources:Vector.<ISource>=null ) {

			super( xmlRoot, name, description, model, type, scale, skill, availabilityRarity, availabilityLegal, cost, gameNotes, campaignNotes,
				   sources );

			this.ammo = ammo;
			this.fireRate = fireRate;
			this.damage = damage;
			this.range = range;
			this.difficulty = difficulty;
		}
	}
}