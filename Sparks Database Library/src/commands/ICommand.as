//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package commands {

	import mx.rpc.IResponder;

	public interface ICommand extends IResponder {
		function addResponder( responder:IResponder ):void;
		function execute():void;
	}
}