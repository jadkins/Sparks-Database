package data.equipment.interfaces
{
	public interface ISource extends IXMLItem
	{
		function get sourceId():String;
		function get referenceId():String;
		function set referenceId( value:String ):void;
		function get pages():String;
		function set pages( value:String ):void;
	}
}