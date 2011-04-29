package data.equipment
{
	import data.XMLItem;
	import data.equipment.interfaces.ISensor;
	
	public class Sensor extends XMLItem implements ISensor
	{
		public function Sensor( name:String = "", range:String = "", strength:String = "" )
		{
			super( name );
			
			this.range = range;
			this.strength = strength;
		}
		
		public function get range():String
		{
			if( xml && xml.range && xml.range != "" )
			{
				return xml.range;
			}
			
			return "";
		}
		
		public function set range( value:String ):void
		{
			if( !xml )
			{
				throwXmlError( "range" );
				return;
			}
			
			if( xml && xml.range )
				xml.range = value;
			else
				xml.appendChild( "<range>" + value + "</range>" );
		}
		
		public function get strength():String
		{
			if( xml && xml.strength && xml.strength != "" )
			{
				return xml.strength;
			}
			
			return "";
		}
		
		public function set strength( value:String ):void
		{
			if( !xml )
			{
				throwXmlError( "strength" );
				return;
			}
			
			if( xml && xml.strength )
				xml.strength = value;
			else
				xml.appendChild( "<strength>" + value + "</strength>" );
		}
	}
}