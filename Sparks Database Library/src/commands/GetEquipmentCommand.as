//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package commands {

	import data.enums.CommandURL;

	public class GetEquipmentCommand extends CommandBase {

		//----------------------------------------------------------
		//
		//
		//   Constructor 
		//
		//
		//----------------------------------------------------------

		public function GetEquipmentCommand() {

			super( CommandURL.EQUIPMENT );
		}
	}
}
