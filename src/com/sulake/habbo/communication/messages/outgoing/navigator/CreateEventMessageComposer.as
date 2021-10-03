package com.sulake.habbo.communication.messages.outgoing.navigator
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class CreateEventMessageComposer implements IMessageComposer, IDisposable
   {
       
      
      private var var_33:Array;
      
      public function CreateEventMessageComposer(param1:int, param2:String, param3:String, param4:Array)
      {
         var _loc5_:* = null;
         var_33 = new Array();
         super();
         this.var_33.push(param1);
         this.var_33.push(param2);
         this.var_33.push(param3);
         this.var_33.push(param4.length);
         for each(_loc5_ in param4)
         {
            this.var_33.push(_loc5_);
         }
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
      
      public function getMessageArray() : Array
      {
         return this.var_33;
      }
      
      public function dispose() : void
      {
         this.var_33 = null;
      }
   }
}
