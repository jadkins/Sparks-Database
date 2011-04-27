package data.equipment.interfaces
{
	public interface IReference extends IXMLObject
	{
		function get referenceId():String;
		function get referenceName():String;
		function set referenceName( value:String ):void;
	}
}