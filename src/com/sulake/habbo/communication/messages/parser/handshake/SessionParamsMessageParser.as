package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class SessionParamsMessageParser implements IMessageParser
   {
       
      
      protected var var_1437:Boolean;
      
      protected var var_2337:Boolean;
      
      protected var var_1433:Boolean;
      
      protected var var_674:String;
      
      protected var _confPartnerIntegration:Boolean;
      
      protected var var_2336:String;
      
      protected var var_2338:Boolean;
      
      protected var var_1434:Boolean;
      
      protected var var_1436:Boolean;
      
      protected var var_1435:Boolean;
      
      public function SessionParamsMessageParser()
      {
         super();
      }
      
      public function get tutorialEnabled() : Boolean
      {
         return var_2337;
      }
      
      public function get parentEmailRequired() : Boolean
      {
         return var_1434;
      }
      
      public function flush() : Boolean
      {
         var_1435 = false;
         var_1436 = false;
         var_674 = "";
         var_1434 = false;
         var_1437 = false;
         var_1433 = false;
         _confPartnerIntegration = false;
         var_2338 = false;
         var_2336 = "";
         var_2337 = false;
         return true;
      }
      
      public function get tracking_header() : String
      {
         return var_2336;
      }
      
      public function get parentEmailRequiredInReRegistration() : Boolean
      {
         return var_1437;
      }
      
      public function get allowProfileEditing() : Boolean
      {
         return var_2338;
      }
      
      public function get allowDirectEmail() : Boolean
      {
         return var_1433;
      }
      
      public function get voucher() : Boolean
      {
         return var_1436;
      }
      
      public function get confPartnerIntegration() : Boolean
      {
         return _confPartnerIntegration;
      }
      
      public function get coppa() : Boolean
      {
         return var_1435;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc2_:int = param1.readInteger();
         Logger.log("[Parser.SessionParams] Got " + _loc2_ + " pairs");
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readInteger();
            Logger.log("[Parser.SessionParams] Got id: " + _loc4_);
            switch(_loc4_)
            {
               case 0:
                  _loc5_ = param1.readInteger();
                  var_1435 = _loc5_ > 0;
                  break;
               case 1:
                  _loc5_ = param1.readInteger();
                  var_1436 = _loc5_ > 0;
                  break;
               case 2:
                  _loc5_ = param1.readInteger();
                  var_1434 = _loc5_ > 0;
                  break;
               case 3:
                  _loc5_ = param1.readInteger();
                  var_1437 = _loc5_ > 0;
                  break;
               case 4:
                  _loc5_ = param1.readInteger();
                  var_1433 = _loc5_ > 0;
                  break;
               case 5:
                  _loc6_ = param1.readString();
                  break;
               case 6:
                  _loc5_ = param1.readInteger();
                  break;
               case 7:
                  _loc5_ = param1.readInteger();
                  break;
               case 8:
                  _loc7_ = param1.readString();
                  break;
               case 9:
                  _loc5_ = param1.readInteger();
                  break;
               default:
                  Logger.log("Unknown id: " + _loc4_);
                  break;
            }
            _loc3_++;
         }
         return true;
      }
      
      public function get date() : String
      {
         return var_674;
      }
   }
}
