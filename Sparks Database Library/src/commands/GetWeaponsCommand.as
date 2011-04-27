package commands
{
	import data.enums.CommandURL;

	public class GetWeaponsCommand extends CommandBase
	{
		public function GetWeaponsCommand()
		{
			super( CommandURL.WEAPONS );
		}
	}
}