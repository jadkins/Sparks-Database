package data
{
	import data.equipment.interfaces.ISource;
	
	public class Source extends XMLItem implements ISource
	{
		public function Source()
		{
		}
		
		public function get sourceId():String
		{
			if( xml && xml.id && xml.id != "" )
			{
				return xml.id;
			}
			
			return "";
		}
		
		public function get referenceId():String
		{
			if( xml && xml.referenceId && xml.referenceId != "" )
			{
				return xml.referenceId;
			}
			
			return "";
		}
		
		public function set referenceId(value:String):void
		{
			if( !xml )
			{
				throwXmlError( "referenceId" );
				return;
			}
			
			if( xml && xml.referenceId )
				xml.referenceId = value;
			else
				xml.appendChild( "<referenceId>" + value + "</referenceId>" );
		}
		
		public function get pages():String
		{
			if( xml && xml.pages && xml.pages != "" )
			{
				return xml.pages;
			}
			
			return "";
		}
		
		public function set pages(value:String):void
		{
			if( !xml )
			{
				throwXmlError( "pages" );
				return;
			}
			
			if( xml && xml.pages )
				xml.pages = value;
			else
				xml.appendChild( "<pages>" + value + "</pages>" );
		}
	}
}