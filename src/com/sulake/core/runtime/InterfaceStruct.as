package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_391:uint;
      
      private var var_1005:IUnknown;
      
      private var var_1184:String;
      
      private var var_1004:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1004 = param1;
         var_1184 = getQualifiedClassName(var_1004);
         var_1005 = param2;
         var_391 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1004;
      }
      
      public function get disposed() : Boolean
      {
         return var_1005 == null;
      }
      
      public function get references() : uint
      {
         return var_391;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_391) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1005;
      }
      
      public function get iis() : String
      {
         return var_1184;
      }
      
      public function reserve() : uint
      {
         return ++var_391;
      }
      
      public function dispose() : void
      {
         var_1004 = null;
         var_1184 = null;
         var_1005 = null;
         var_391 = 0;
      }
   }
}
