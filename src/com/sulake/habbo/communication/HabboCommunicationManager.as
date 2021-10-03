package com.sulake.habbo.communication
{
   import com.sulake.core.Core;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.ICoreCommunicationManager;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.connection.IConnectionStateListener;
   import com.sulake.core.communication.enum.ConnectionType;
   import com.sulake.core.communication.messages.IMessageConfiguration;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.protocol.IProtocol;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.habbo.communication.enum.HabboConnectionType;
   import com.sulake.habbo.communication.enum.HabboProtocolType;
   import com.sulake.habbo.communication.messages.outgoing.handshake.DisconnectMessageComposer;
   import com.sulake.habbo.communication.protocol.WedgieProtocol;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.configuration.enum.HabboConfigurationEvent;
   import com.sulake.habbo.tracking.HabboErrorVariableEnum;
   import com.sulake.iid.IIDCoreCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class HabboCommunicationManager extends Component implements IHabboCommunicationManager, IConnectionStateListener
   {
       
      
      private var var_785:int;
      
      private var var_36:String = "";
      
      private var var_1390:Timer;
      
      private var var_287:Array;
      
      private var var_2264:Boolean = false;
      
      private var var_89:String = "";
      
      private var _habboConfiguration:IHabboConfigurationManager;
      
      private var var_1130:IMessageConfiguration;
      
      private const const_1744:int = 2;
      
      private var var_377:int = -1;
      
      private var var_322:ICoreCommunicationManager;
      
      private var var_938:int = 1;
      
      private var var_2263:Boolean = false;
      
      private var var_2265:Boolean = false;
      
      private var _connection:IConnection;
      
      public function HabboCommunicationManager(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_785 = HabboConnectionType.const_310;
         var_1130 = new HabboMessages();
         var_287 = [];
         var_1390 = new Timer(100,1);
         super(param1,param2,param3);
         this.queueInterface(new IIDCoreCommunicationManager(),onCoreCommunicationManagerInit);
         this.queueInterface(new IIDHabboConfigurationManager(),onHabboConfigurationInit);
         param1.events.addEventListener(Event.UNLOAD,unloading);
      }
      
      public function get port() : int
      {
         if(var_377 < 0 || var_377 >= var_287.length)
         {
            return 0;
         }
         return var_287[var_377];
      }
      
      private function unloading(param1:Event) : void
      {
         if(_connection)
         {
            _connection.send(new DisconnectMessageComposer());
            _connection.dispose();
            _connection = null;
         }
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         Logger.log("[HabboCommunicationManager] Security Error: " + param1.text);
         ErrorReportStorage.addDebugData("Communication Security Error","SecurityError on connect: " + param1.text + ". Port was " + var_287[var_377]);
         tryNextPort();
      }
      
      private function onConnect(param1:Event) : void
      {
         ErrorReportStorage.addDebugData("Connection","Connected with " + var_938 + " attempts");
      }
      
      private function onConfigurationReady(param1:Event = null) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         Logger.log("Habbo Communication Manager: init based on configuration: " + _habboConfiguration);
         if(_habboConfiguration == null)
         {
            Core.crash("Received configuration ready event but configuration was null",Core.const_169);
         }
         else
         {
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config Ready");
            var_287 = [];
            var_36 = _habboConfiguration.getKey("connection.info.host",null);
            if(var_36 == null)
            {
               Core.crash("connection.info.host was not defined",Core.const_330);
               return;
            }
            _loc2_ = _habboConfiguration.getKey("connection.info.port",null);
            if(_loc2_ == null)
            {
               Core.crash("connection.info.port was not defined",Core.const_330);
               return;
            }
            if(_habboConfiguration.keyExists("local.environment"))
            {
               var_36 = _habboConfiguration.getKey("connection.info.host.local");
               _loc2_ = _habboConfiguration.getKey("connection.info.port.local");
            }
            _loc3_ = _loc2_.split(",");
            for each(_loc4_ in _loc3_)
            {
               var_287.push(parseInt(_loc4_.replace(" ","")));
            }
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config Host: " + var_36);
            Logger.log("Connection Host: " + var_36);
            Logger.log("Connection Ports: " + var_287);
            Logger.log("Habbo Connection Info:" + _connection);
            var_2263 = true;
            if(var_2265)
            {
               nextPort();
            }
         }
      }
      
      public function messageReceived(param1:String, param2:String) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1311,String(new Date().getTime()));
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1425,param1 + " " + param2);
         if(false)
         {
            var_89 += ",R:" + param1;
         }
         else
         {
            var_89 = "R:" + param1;
         }
         if(false)
         {
            var_89 = var_89.substring(-150);
         }
         ErrorReportStorage.addDebugData("MESSAGE_QUEUE",var_89);
      }
      
      private function nextPort() : void
      {
         if(false)
         {
            return;
         }
         ++var_377;
         if(var_377 >= var_287.length)
         {
            ++var_938;
            ErrorReportStorage.addDebugData("ConnectionRetry","Connection attempt " + var_938);
            if(var_938 > const_1744)
            {
               if(var_2264)
               {
                  return;
               }
               var_2264 = true;
               Core.error("Connection failed to host " + var_36 + " ports " + var_287,true,Core.const_330);
               return;
            }
            var_377 = 0;
         }
         _connection.timeout = var_938 * 10000;
         _connection.init(var_36,var_287[var_377]);
      }
      
      private function onTryNextPort(param1:TimerEvent) : void
      {
         var_1390.stop();
         nextPort();
      }
      
      public function get mode() : int
      {
         return var_785;
      }
      
      override public function dispose() : void
      {
         if(_connection)
         {
            _connection.dispose();
            _connection = null;
         }
         if(var_322)
         {
            var_322.release(new IIDCoreCommunicationManager());
            var_322 = null;
         }
         if(_habboConfiguration)
         {
            _habboConfiguration.release(new IIDHabboConfigurationManager());
            _habboConfiguration = null;
         }
         super.dispose();
      }
      
      public function initConnection(param1:String) : void
      {
         switch(param1)
         {
            case HabboConnectionType.const_297:
               if(_habboConfiguration == null)
               {
                  Core.crash("Tried to connect to proxy but configuration was null",Core.const_330);
                  return;
               }
               if(_connection == null)
               {
                  Core.crash("Tried to connect to proxy but connection was null",Core.const_330);
                  return;
               }
               var_2265 = true;
               if(var_2263)
               {
                  nextPort();
               }
               break;
            default:
               Logger.log("Unknown Habbo Connection Type: " + param1);
         }
      }
      
      public function habboWebLogin(param1:String, param2:String) : IHabboWebLogin
      {
         var _loc3_:String = "";
         _loc3_ = _habboConfiguration.getKey("url.prefix",_loc3_);
         _loc3_ = _loc3_.replace("http://","");
         _loc3_ = _loc3_.replace("https://","");
         return new HabboWebLogin(param1,param2,_loc3_);
      }
      
      public function addHabboConnectionMessageEvent(param1:IMessageEvent) : void
      {
         var_322.addConnectionMessageEvent(HabboConnectionType.const_297,param1);
      }
      
      public function connectionInit(param1:String, param2:int) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1391,param1);
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1253,String(param2));
      }
      
      public function messageSent(param1:String, param2:String) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1276,String(new Date().getTime()));
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1352,param1 + " " + param2);
         if(false)
         {
            var_89 += ",S:" + param1;
         }
         else
         {
            var_89 = "S:" + param1;
         }
         if(false)
         {
            var_89 = var_89.substring(-150);
         }
         ErrorReportStorage.addDebugData("MESSAGE_QUEUE",var_89);
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         Logger.log("[HabboCommunicationManager] IO Error: " + param1.text);
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
         ErrorReportStorage.addDebugData("Communication IO Error","IOError " + param1.type + " on connect: " + param1.text + ". Port was " + var_287[var_377]);
         tryNextPort();
      }
      
      public function set mode(param1:int) : void
      {
         var_785 = param1;
      }
      
      private function onCoreCommunicationManagerInit(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:* = null;
         Logger.log("Habbo Communication Manager: Core Communication Manager found:: " + [param1,param2]);
         if(param2 != null)
         {
            var_322 = param2 as ICoreCommunicationManager;
            var_322.connectionStateListener = this;
            var_322.registerProtocolType(HabboProtocolType.const_853,WedgieProtocol);
            _connection = var_322.createConnection(HabboConnectionType.const_297,ConnectionType.const_923);
            _loc3_ = var_322.getProtocolInstanceOfType(HabboProtocolType.const_853);
            _connection.registerMessageClasses(var_1130);
            _connection.protocol = _loc3_;
            _connection.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
            _connection.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError);
            _connection.addEventListener(Event.CONNECT,onConnect);
         }
      }
      
      private function tryNextPort() : void
      {
         var_1390.addEventListener(TimerEvent.TIMER,onTryNextPort);
         var_1390.start();
      }
      
      private function onHabboConfigurationInit(param1:IID = null, param2:IUnknown = null) : void
      {
         if(param2 != null)
         {
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config Received");
            _habboConfiguration = param2 as IHabboConfigurationManager;
            (_habboConfiguration as Component).events.addEventListener(HabboConfigurationEvent.INIT,onConfigurationReady);
         }
         else
         {
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config NOT received");
         }
      }
      
      public function getHabboMainConnection(param1:Function) : IConnection
      {
         return !!var_322 ? var_322.queueConnection(HabboConnectionType.const_297,param1) : null;
      }
   }
}
