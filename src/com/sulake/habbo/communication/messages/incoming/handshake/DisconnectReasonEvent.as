package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1665:int = 5;
      
      public static const const_1619:int = 113;
      
      public static const const_1528:int = 29;
      
      public static const const_1707:int = 0;
      
      public static const const_1603:int = 102;
      
      public static const const_1627:int = 25;
      
      public static const const_1623:int = 20;
      
      public static const const_1576:int = 116;
      
      public static const const_1487:int = 114;
      
      public static const const_1568:int = 101;
      
      public static const const_1507:int = 108;
      
      public static const const_1505:int = 112;
      
      public static const const_1634:int = 100;
      
      public static const const_1690:int = 24;
      
      public static const const_1341:int = 10;
      
      public static const const_1501:int = 111;
      
      public static const const_1702:int = 23;
      
      public static const const_1495:int = 26;
      
      public static const const_1245:int = 2;
      
      public static const const_1594:int = 22;
      
      public static const const_1513:int = 17;
      
      public static const const_1546:int = 18;
      
      public static const const_1694:int = 3;
      
      public static const const_1556:int = 109;
      
      public static const const_1330:int = 1;
      
      public static const const_1693:int = 103;
      
      public static const const_1639:int = 11;
      
      public static const const_1592:int = 28;
      
      public static const const_1509:int = 104;
      
      public static const const_1695:int = 13;
      
      public static const const_1643:int = 107;
      
      public static const const_1669:int = 27;
      
      public static const const_1496:int = 118;
      
      public static const const_1539:int = 115;
      
      public static const const_1555:int = 16;
      
      public static const const_1632:int = 19;
      
      public static const const_1589:int = 4;
      
      public static const const_1667:int = 105;
      
      public static const const_1617:int = 117;
      
      public static const const_1541:int = 119;
      
      public static const const_1535:int = 106;
      
      public static const const_1566:int = 12;
      
      public static const const_1635:int = 110;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_7 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(reason)
         {
            case const_1330:
            case const_1341:
               return "banned";
            case const_1245:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
