package utils
{
	public class DataUtils
	{
		public static function getVectorFromXML( xml:XML, property:String, delimeter:String, vector:Object ):Object
		{
			var string:String = xml.child( property ).children();
			var array:Array = string.split( delimeter );
			
			for each( var value:String in array )
			{
				vector.push( value );
			}
			
			return vector;
		}
		
		public static function apendVectorToXML( vector:Object, property:String, delimeter:String, xml:XML):XML
		{
			var newList:XML = new XML( "<" + property + "></" + property + ">" );
			var newItems:String = "";
			
			for each( var value:String in vector )
			{
				if( newItems != "" )
					newItems += delimeter;
				newItems += value;
			}
			
			newList.appendChild( newItems );
			
			if( xml.child( property ) != null )
				xml.replace( property, newList );
			else
				xml.appendChild( newList );
			
			return xml;
		}
	}
}