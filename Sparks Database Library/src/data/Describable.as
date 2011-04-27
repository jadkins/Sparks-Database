package data
{
	import data.equipment.interfaces.IDescribable;
	
	public class Describable extends XMLItem implements IDescribable
	{
		public function Describable( name:String = "", description:String = "" )
		{
			super();
			
			this.name = name;
			this.description = description;
		}
		
		public function get id():String
		{
			if( xml && xml.id && xml.id != "" )
			{
				return xml.id;
			}
			
			return "";
		}
		
		public function get name():String
		{
			if( xml && xml.name && xml.name != "" )
			{
				return xml.name;
			}
			
			return "";
		}
		
		public function set name(value:String):void
		{
			if( !xml )
			{
				throwXmlError( "name" );
				return;
			}
			
			if( xml && xml.name )
				xml.name = value;
			else
				xml.appendChild( "<name>" + value + "</name>" );
		}
		
		public function get description():String
		{
			if( xml && xml.description && xml.description != "" )
			{
				return xml.description;
			}
			
			return "";
		}
		
		public function set description(value:String):void
		{
			if( !xml )
			{
				throwXmlError( "description" );
				return;
			}
			
			if( xml && xml.description )
				xml.description = value;
			else
				xml.appendChild( "<description>" + value + "</description>" );
		}
	}
}