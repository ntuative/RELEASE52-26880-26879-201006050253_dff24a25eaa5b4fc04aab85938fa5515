package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   
   public class TextMargins implements IMargins, IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_962:int;
      
      private var _right:int;
      
      private var var_964:int;
      
      private var var_963:int;
      
      private var var_190:Function;
      
      public function TextMargins(param1:int, param2:int, param3:int, param4:int, param5:Function)
      {
         super();
         var_964 = param1;
         var_963 = param2;
         _right = param3;
         var_962 = param4;
         var_190 = param5 != null ? param5 : nullCallback;
      }
      
      public function set bottom(param1:int) : void
      {
         var_962 = param1;
         var_190(this);
      }
      
      public function get left() : int
      {
         return var_964;
      }
      
      public function get isZeroes() : Boolean
      {
         return var_964 == 0 && _right == 0 && var_963 == 0 && var_962 == 0;
      }
      
      public function get right() : int
      {
         return _right;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function set top(param1:int) : void
      {
         var_963 = param1;
         var_190(this);
      }
      
      public function get top() : int
      {
         return var_963;
      }
      
      public function set left(param1:int) : void
      {
         var_964 = param1;
         var_190(this);
      }
      
      public function get bottom() : int
      {
         return var_962;
      }
      
      public function clone(param1:Function) : TextMargins
      {
         return new TextMargins(var_964,var_963,_right,var_962,param1);
      }
      
      public function dispose() : void
      {
         var_190 = null;
         _disposed = true;
      }
      
      public function set right(param1:int) : void
      {
         _right = param1;
         var_190(this);
      }
      
      private function nullCallback(param1:IMargins) : void
      {
      }
   }
}
