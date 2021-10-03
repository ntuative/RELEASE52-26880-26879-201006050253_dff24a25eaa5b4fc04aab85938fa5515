package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_887:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_887 = new Array();
         var_887.push(param1.length);
         var_887 = var_887.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_887;
      }
   }
}
