package data.equipment
{
	import data.equipment.interfaces.IEquipment;
	import data.equipment.interfaces.ISource;
	
	import utils.DataUtils;
	
	public class Equipment extends AbstractEquipment implements IEquipment
	{
		public static const NAME:String = "item";
		
		private var _availabilityRarity:Vector.<String>;
		private var _availabilityLegal:Vector.<String>;
		
		public function Equipment( name:String = "", description:String = "", model:String = "", type:String = "", 
								   scale:String = "", skill:String = "", availbilityRarity:Vector.<String> = null, 
								   availbilityLegal:Vector.<String> = null, cost:String = "", gamesNotes:String = "", 
								   campaignNotes:String = "", sources:Vector.<ISource> = null )
		{
			super(name, description, type, scale, skill, cost, gamesNotes, campaignNotes, sources);
			
			this.model = model;
			this.availabilityRarity = availbilityRarity;
			this.availabilityLegal = availbilityLegal;
		}
		
		public function get model():String
		{
			if( xml && xml.model && xml.model != "" )
			{
				return xml.model;
			}
			
			return "";
		}
		
		public function set model(value:String):void
		{
			if( !xml )
			{
				throwXmlError( "model" );
				return;
			}
			
			if( xml && xml.model )
				xml.model = value;
			else
				xml.appendChild( "<model>" + value + "</model>" );
		}
		
		public function get availabilityRarity():Vector.<String>
		{
			if( _availabilityRarity )
				return _availabilityRarity;
			
			if( !xml )
				throwXmlError( "availabilityRarity" );
			
			var newVector:Vector.<String> = new Vector.<String>();
			
			_availabilityRarity = DataUtils.getVectorFromXML( xml, "availabilityRarity", ",", newVector ) as Vector.<String>;
			
			return _availabilityRarity;
		}
		
		public function set availabilityRarity(value:Vector.<String>):void
		{
			if( value == _availabilityRarity )
				return;
			
			_availabilityRarity = value;
			
			DataUtils.apendVectorToXML( _availabilityRarity, "availabilityRarity", ",", xml );
		}
		
		public function get availabilityLegal():Vector.<String>
		{
			if( _availabilityLegal )
				return _availabilityLegal;
			
			if( !xml )
				throwXmlError( "availabilityLegal" );
			
			var newVector:Vector.<String> = new Vector.<String>();
			
			_availabilityLegal = DataUtils.getVectorFromXML( xml, "availabilityLegal", ",", newVector ) as Vector.<String>;
			
			return _availabilityLegal;
		}
		
		public function set availabilityLegal(value:Vector.<String>):void
		{
			if( value == _availabilityLegal )
				return;
			
			_availabilityLegal = value;
			
			DataUtils.apendVectorToXML( _availabilityLegal, "availabilityLegal", ",", xml );
		}
		
		override public function set xml(value:XML):void
		{
			if( value == xml )
				return;
			
			_availabilityLegal = null;
			_availabilityRarity = null;
			
			super.xml = value;
		}
	}
}