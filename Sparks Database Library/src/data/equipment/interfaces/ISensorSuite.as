package data.equipment.interfaces
{
	public interface ISensorSuite extends IAbstractEquipment
	{
		function get sensors():Vector.<ISensor>;
		function set sensors( value:Vector.<ISensor> ):void;
		function getSystem( name:String ):ISensor;
		function setSystem( name:String, value:ISensor ):void;
	}
}