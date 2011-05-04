package data.modules
{
	import data.equipment.interfaces.IDescribable;
	
	public interface IModule extends IDescribable
	{
		function get moduleNum():String;
		function set moduleNum( value:String ):void;
		function get authorId():String;
		function set authorId( value:String ):void;
		function get coauthorId():String;
		function set coauthorId( value:String ):void;
		function get editorId():String;
		function set editorId( value:String ):void;
		function get premierDate():Date;
		function set permierDate( value:Date ):void;
	}
}