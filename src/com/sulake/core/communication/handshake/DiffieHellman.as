package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1163:BigInteger;
      
      private var var_575:BigInteger;
      
      private var var_1446:BigInteger;
      
      private var var_1447:BigInteger;
      
      private var var_1685:BigInteger;
      
      private var var_1686:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1163 = param1;
         var_1446 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1685.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1447 = new BigInteger();
         var_1447.fromRadix(param1,param2);
         var_1685 = var_1447.modPow(var_575,var_1163);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1686.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1163.toString() + ",generator: " + var_1446.toString() + ",secret: " + param1);
         var_575 = new BigInteger();
         var_575.fromRadix(param1,param2);
         var_1686 = var_1446.modPow(var_575,var_1163);
         return true;
      }
   }
}
