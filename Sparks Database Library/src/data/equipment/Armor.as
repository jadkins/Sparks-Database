package data.equipment
{
	import data.equipment.interfaces.IArmor;
	import data.equipment.interfaces.ISource;
	
	import utils.DataUtils;
	
	public class Armor extends Equipment implements IArmor
	{
		private const NAME:String = "armor";
		
		private var _protection:Vector.<String>;
		private var _penalties:Vector.<String>;
		
		public function Armor( xmlRoot:String = NAME, name:String = "", description:String = "", type:String = "", scale:String = "", skill:String = "", availabilityRarity:Vector.<String> = null,
							  availabilityLegal:Vector.<String> = null, cost:String = "", protection:Vector.<String> = null, penalties:Vector.<String> = null, gameNotes:String = "", campaignNotes:String = "", sources:Vector.<ISource> = null)
		{
			super( xmlRoot, name, description, model, type, scale, skill, availabilityLegal, availabilityLegal, cost, gameNotes, campaignNotes, sources);
		}
		
		public function get protection():Vector.<String>
		{
			if( _protection )
				return _protection;
			
			if( !xml )
				throwXmlError( "protection" );
			
			var newVector:Vector.<String> = new Vector.<String>();
			
			_protection = DataUtils.getVectorFromXML( xml, "protection", ",", newVector ) as Vector.<String>;
			
			return _protection;
		}
		
		public function set protection(value:Vector.<String>):void
		{
			if( value == _protection )
				return;
			
			_protection = value;
			
			DataUtils.apendVectorToXML( _protection, "protection", "/", xml );
		}
		
		public function get penalties():Vector.<String>
		{
			if( _penalties )
				return _penalties;
			
			if( !xml )
				throwXmlError( "penalties" );
			
			var newVector:Vector.<String> = new Vector.<String>();
			
			_penalties = DataUtils.getVectorFromXML( xml, "penalties", ",", newVector ) as Vector.<String>;
			
			return _penalties;
		}
		
		public function set penalties(value:Vector.<String>):void
		{
			if( value == _penalties )
				return;
			
			_penalties = value;
			
			DataUtils.apendVectorToXML( _penalties, "penalties", "/", xml );
		}
	}
}