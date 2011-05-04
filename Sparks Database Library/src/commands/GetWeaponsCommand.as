//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package commands {

	import data.enums.CommandURL;

	public class GetWeaponsCommand extends CommandBase {

		//----------------------------------------------------------
		//
		//
		//   Constructor 
		//
		//
		//----------------------------------------------------------

		public function GetWeaponsCommand() {

			super( CommandURL.WEAPONS );
		}
	}
}