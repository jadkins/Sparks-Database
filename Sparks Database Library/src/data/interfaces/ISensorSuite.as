package data.interfaces
{
	public interface ISensorSuite extends IEquipment
	{
		function get passive():ISensor;
		function set passive( value:ISensor ):void;
		function get scan():ISensor;
		function set scan( value:ISensor ):void;
		function get search():ISensor;
		function set search( value:ISensor ):void;
		function get focus():ISensor;
		function set focus( value:ISensor ):void;
	}
}