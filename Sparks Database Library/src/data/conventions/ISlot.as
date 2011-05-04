package data.conventions
{
	import data.equipment.interfaces.IXMLItem;
	
	public interface ISlot extends IXMLItem
	{
		function get id():String;
		function get judgeId():String;
		function set judgeId( value:String ):void;
		function get conventionId():String;
		function set conventionId( value:String ):void;
		function get moduleId():String;
		function set moduleId( value:String ):void;
	}
}