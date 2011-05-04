//------------------------------------------------------------------------------
//
//   Copyright 2011 
//   All rights reserved. 
//
//------------------------------------------------------------------------------

package commands {

	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	import mx.rpc.http.HTTPService;

	public class CommandBase extends EventDispatcher implements ICommand {

		//----------------------------------------------------------
		//
		//
		//   Properties 
		//
		//
		//----------------------------------------------------------

		private var httpService:HTTPService;

		private var responders:Array;

		private var token:AsyncToken;

		private var url:String;

		//----------------------------------------------------------
		//
		//
		//   Function 
		//
		//
		//----------------------------------------------------------

		public function addResponder( responder:IResponder ):void {

			responders.push( responder );
		}

		public function execute():void {

			token = httpService.send();
			token.addResponder( this );
		}

		public function fault( info:Object ):void {

			trace( fault );

			for each( var responder:IResponder in responders ) {
				responder.fault( info );
			}
		}

		public function result( data:Object ):void {

			trace( data );

			for each( var responder:IResponder in responders ) {
				responder.result( data );
			}
		}

		//----------------------------------------------------------
		//
		//
		//   Constructor 
		//
		//
		//----------------------------------------------------------

		public function CommandBase( url:String ) {

			this.url = url;
			responders = new Array();

			httpService = new HTTPService();
			httpService.resultFormat = "e4x";

			httpService.url = this.url;
		}
	}
}