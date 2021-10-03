package com.sulake.core.communication.connection
{
   import com.sulake.core.communication.ICoreCommunicationManager;
   import com.sulake.core.communication.encryption.IEncryption;
   import com.sulake.core.communication.messages.IMessageClassManager;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.communication.messages.IMessageConfiguration;
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.core.communication.messages.MessageClassManager;
   import com.sulake.core.communication.messages.MessageDataWrapper;
   import com.sulake.core.communication.protocol.IProtocol;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.utils.ErrorReportStorage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.Socket;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class SocketConnection extends EventDispatcher implements IConnection, IDisposable
   {
      
      public static const const_1234:int = 10000;
       
      
      private var _disposed:Boolean = false;
      
      private var var_1372:Boolean = false;
      
      private var var_74:Socket;
      
      private var var_922:IEncryption;
      
      private var var_775:int;
      
      private var var_376:ByteArray;
      
      private var _id:String;
      
      private var var_322:ICoreCommunicationManager;
      
      private var var_374:Timer;
      
      private var var_375:IConnectionStateListener;
      
      private var var_631:IProtocol;
      
      private var var_923:IMessageClassManager;
      
      public function SocketConnection(param1:String, param2:ICoreCommunicationManager, param3:IConnectionStateListener)
      {
         super();
         _id = param1;
         var_322 = param2;
         var_376 = new ByteArray();
         var_923 = new MessageClassManager();
         var_74 = new Socket();
         var_374 = new Timer(const_1234,1);
         var_374.addEventListener(TimerEvent.TIMER,onTimeOutTimer);
         var_74.addEventListener(Event.CONNECT,onConnect);
         var_74.addEventListener(Event.COMPLETE,onComplete);
         var_74.addEventListener(Event.CLOSE,onClose);
         var_74.addEventListener(ProgressEvent.SOCKET_DATA,onRead);
         var_74.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError);
         var_74.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_375 = param3;
      }
      
      private function onTimeOutTimer(param1:TimerEvent) : void
      {
         var_374.stop();
         ErrorReportStorage.addDebugData("ConnectionTimer","TimeOut in " + (getTimer() - var_775));
         var _loc2_:IOErrorEvent = new IOErrorEvent(IOErrorEvent.IO_ERROR);
         _loc2_.text = "Socket Timeout (undefined ms). Possible Firewall.";
         dispatchEvent(_loc2_);
      }
      
      public function setEncryption(param1:IEncryption) : void
      {
         var_922 = param1;
      }
      
      public function get connected() : Boolean
      {
         return var_74.connected;
      }
      
      private function onConnect(param1:Event) : void
      {
         var_374.stop();
         var_1372 = true;
         ErrorReportStorage.addDebugData("ConnectionTimer","Connected in " + (getTimer() - var_775));
         dispatchEvent(param1);
      }
      
      public function send(param1:IMessageComposer, param2:int = -1) : Boolean
      {
         if(this.disposed)
         {
            return false;
         }
         var _loc3_:ByteArray = new ByteArray();
         var _loc4_:int = this.var_923.getMessageComposerID(param1);
         if(_loc4_ < 0)
         {
            return false;
         }
         var _loc5_:ByteArray = var_631.encoder.encode(_loc4_,param1.getMessageArray(),param2);
         if(var_375)
         {
            var_375.messageSent(String(_loc4_),_loc5_.toString());
         }
         if(var_922 != null)
         {
            _loc3_ = var_922.encipher(_loc5_);
         }
         else
         {
            _loc3_ = _loc5_;
         }
         if(false)
         {
            var_74.writeBytes(_loc3_);
            var_74.flush();
            return true;
         }
         return false;
      }
      
      public function init(param1:String, param2:uint = 0) : Boolean
      {
         if(var_375)
         {
            var_375.connectionInit(param1,param2);
         }
         Security.loadPolicyFile("xmlsocket://" + param1 + ":" + param2);
         var_374.start();
         var_775 = getTimer();
         var_74.connect(param1,param2);
         return true;
      }
      
      private function onRead(param1:ProgressEvent) : void
      {
         if(!var_74)
         {
            return;
         }
         while(false)
         {
            var_376.writeByte(var_74.readUnsignedByte());
         }
      }
      
      public function get protocol() : IProtocol
      {
         return var_631;
      }
      
      public function addMessageEvent(param1:IMessageEvent) : void
      {
         var_322.addConnectionMessageEvent(_id,param1);
      }
      
      public function dispose() : void
      {
         _disposed = true;
         if(var_74)
         {
            var_74.removeEventListener(Event.CONNECT,onConnect);
            var_74.removeEventListener(Event.COMPLETE,onComplete);
            var_74.removeEventListener(Event.CLOSE,onClose);
            var_74.removeEventListener(ProgressEvent.SOCKET_DATA,onRead);
            var_74.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError);
            var_74.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
            if(var_1372)
            {
               var_74.close();
            }
         }
         var_74 = null;
         var_376 = null;
         var_375 = null;
         var_922 = null;
         var_631 = null;
         _id = null;
         var_923 = null;
         var_322 = null;
         var_375 = null;
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         var_374.stop();
         ErrorReportStorage.addDebugData("ConnectionTimer","SecurityError in " + (getTimer() - var_775));
         dispatchEvent(param1);
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function registerMessageClasses(param1:IMessageConfiguration) : void
      {
         var_923.registerMessages(param1);
      }
      
      public function set protocol(param1:IProtocol) : void
      {
         var_631 = param1;
      }
      
      private function onComplete(param1:Event) : void
      {
         var_374.stop();
         ErrorReportStorage.addDebugData("ConnectionTimer","Completed in " + (getTimer() - var_775));
         dispatchEvent(param1);
      }
      
      public function processReceivedData() : void
      {
         var id:int = 0;
         var message:Array = null;
         var data:ByteArray = null;
         var eventClasses:Array = null;
         var events:Array = null;
         var eventClass:Class = null;
         var parserInstance:IMessageParser = null;
         var parserClassCurrent:Class = null;
         var messageEventInstance:IMessageEvent = null;
         var eventsForClass:Array = null;
         var parserClass:Class = null;
         var wasParsed:Boolean = false;
         var dataClone:ByteArray = null;
         var dataWrapper:IMessageDataWrapper = null;
         var temp:ByteArray = null;
         if(disposed)
         {
            return;
         }
         var receivedMessages:Array = new Array();
         var offset:uint = var_631.getMessages(var_376,receivedMessages);
         var time:Number = new Date().getTime();
         try
         {
            for each(message in receivedMessages)
            {
               id = message[0] as int;
               data = message[1] as ByteArray;
               if(var_375)
               {
                  var_375.messageReceived(String(id),data.toString());
               }
               eventClasses = var_923.getMessageEventClasses(id);
               events = new Array();
               for each(eventClass in eventClasses)
               {
                  eventsForClass = var_322.getMessageEvents(this,eventClass);
                  events = events.concat(eventsForClass);
               }
               if(events.length == 0)
               {
               }
               parserInstance = null;
               parserClassCurrent = null;
               for each(messageEventInstance in events)
               {
                  parserClass = messageEventInstance.parserClass;
                  if(parserClass != null)
                  {
                     wasParsed = false;
                     if(parserClass != parserClassCurrent)
                     {
                        dataClone = new ByteArray();
                        dataClone.writeBytes(data);
                        dataClone.position = data.position;
                        dataWrapper = new MessageDataWrapper(dataClone,protocol.decoder);
                        parserInstance = var_322.getMessageParser(parserClass);
                        if(parserInstance.flush())
                        {
                           if(parserInstance.parse(dataWrapper))
                           {
                              parserClassCurrent = parserClass;
                              wasParsed = true;
                           }
                        }
                     }
                     else
                     {
                        wasParsed = true;
                     }
                     if(wasParsed)
                     {
                        messageEventInstance.connection = this;
                        messageEventInstance.parser = parserInstance;
                        messageEventInstance.callback.call(null,messageEventInstance);
                     }
                     else
                     {
                        parserClassCurrent = null;
                        parserInstance = null;
                     }
                  }
               }
            }
            if(offset == var_376.length)
            {
               var_376 = new ByteArray();
            }
            else if(offset > 0)
            {
               temp = new ByteArray();
               temp.writeBytes(var_376,offset);
               var_376 = temp;
            }
         }
         catch(e:Error)
         {
            if(!disposed)
            {
               ErrorReportStorage.addDebugData("SocketConnection","Crashed while processing incoming message with id=\"" + id + "\"!");
               throw e;
            }
         }
      }
      
      public function set timeout(param1:int) : void
      {
         var_374.delay = param1;
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         var_374.stop();
         ErrorReportStorage.addDebugData("ConnectionTimer","IOError in " + (getTimer() - var_775));
         switch(param1.type)
         {
            case IOErrorEvent.IO_ERROR:
               break;
            case IOErrorEvent.DISK_ERROR:
               break;
            case IOErrorEvent.NETWORK_ERROR:
               break;
            case IOErrorEvent.VERIFY_ERROR:
         }
         dispatchEvent(param1);
      }
      
      private function onClose(param1:Event) : void
      {
         var_374.stop();
         var_1372 = false;
         ErrorReportStorage.addDebugData("ConnectionTimer","Closed in " + (getTimer() - var_775));
         dispatchEvent(param1);
      }
      
      override public function toString() : String
      {
         var _loc1_:* = "";
         _loc1_ += "Socket Connection: \n";
         _loc1_ += "Protocol Encoder: undefined\n";
         _loc1_ += "Protocol Decoder: undefined\n";
         return _loc1_ + ("Encryption: " + var_922 + "\n");
      }
   }
}
