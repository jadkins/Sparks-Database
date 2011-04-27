package commands
{
	import data.enums.CommandURL;

	public class GetEquipmentCommand extends CommandBase
	{
		public function GetEquipmentCommand()
		{
			super( CommandURL.EQUIPMENT );
		}
	}
}