//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package data {

	import data.equipment.interfaces.IReference;

	public class Reference extends Describable implements IReference {

		//----------------------------------------------------------
		//
		//
		//   Constructor 
		//
		//
		//----------------------------------------------------------

		public function Reference( xmlRoot:String="", name:String="", description:String="" ) {

			super( xmlRoot, name, description );
		}
	}
}