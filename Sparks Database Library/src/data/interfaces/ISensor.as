package data.interfaces
{
	public interface ISensor
	{
		function get range():String;
		function set range( value:String ):void;
		function get strength():String;
		function set strength( value:String ):void;
	}
}