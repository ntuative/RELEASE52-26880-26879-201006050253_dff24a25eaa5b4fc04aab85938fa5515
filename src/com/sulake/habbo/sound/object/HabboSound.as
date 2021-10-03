package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1134:SoundChannel = null;
      
      private var var_949:Boolean;
      
      private var var_1133:Sound = null;
      
      private var var_764:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1133 = param1;
         var_1133.addEventListener(Event.COMPLETE,onComplete);
         var_764 = 1;
         var_949 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_949;
      }
      
      public function stop() : Boolean
      {
         var_1134.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_949 = false;
         var_1134 = var_1133.play(0);
         this.volume = var_764;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_764;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1134.position;
      }
      
      public function get length() : Number
      {
         return var_1133.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_764 = param1;
         if(var_1134 != null)
         {
            var_1134.soundTransform = new SoundTransform(var_764);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_949 = true;
      }
   }
}
