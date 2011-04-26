package data.interfaces
{
	public interface IArmor extends IGear
	{
		function get protection():Vector.<String>;
		function set protection( value:Vector.<String> ):void;
		function get penalties():Vector.<String>;
		function set penalties( value:Vector.<String> ):void;
	}
}