package commands
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	import mx.rpc.http.HTTPService;
	
	public class CommandBase extends EventDispatcher implements ICommand
	{
		private var url:String;
		private var token:AsyncToken;
		private var responders:Array;
		private var httpService:HTTPService;
		
		public function CommandBase( url:String )
		{
			this.url = url;
			responders = new Array();
			
			httpService = new HTTPService();
			httpService.resultFormat = "e4x";
			
			httpService.url = this.url; 
		}
		
		public function execute():void
		{
			token = httpService.send();
			token.addResponder( this );
		}
		
		public function addResponder(responder:IResponder):void
		{
			responders.push( responder );	
		}
		
		public function result(data:Object):void
		{
			trace( data.result );
			
			for each( var responder:IResponder in responders )
			{
				responder.result( data );
			}
		}
		
		public function fault(info:Object):void
		{
			trace( fault );
			
			for each( var responder:IResponder in responders )
			{
				responder.fault( info );
			}
		}
	}
}