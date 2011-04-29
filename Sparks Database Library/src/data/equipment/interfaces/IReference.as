package data.equipment.interfaces
{
	public interface IReference extends IXMLItem
	{
		function get referenceId():String;
		function get referenceName():String;
		function set referenceName( value:String ):void;
	}
}