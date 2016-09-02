package sample.xx
{
   import flash.utils.ByteArray;
   
   public class BinaryData extends ByteArray
   {
       
      
      public function BinaryData()
      {
         var _loc5_:* = null;
         var _loc8_:* = 0;
         var _loc10_:* = 0;
         var _loc4_:int = 0;
         var _loc6_:int = 0;
         var _loc1_:int = 0;
         super();
         if(length)
         {
            return;
         }
         var _loc7_:XML = CModule.describeType(this);
         var _loc12_:* = _loc7_..metadata;
         var _loc13_:int = 0;
         var _loc15_:* = new XMLList("");
         var _loc21_:int = 0;
         var _loc20_:* = _loc7_..metadata.(@name == "HexData");
         for each(var _loc9_ in _loc7_..metadata.(@name == "HexData"))
         {
            var _loc16_:* = _loc9_..arg;
            var _loc17_:int = 0;
            _loc12_ = new XMLList("");
            var _loc19_:int = 0;
            var _loc18_:* = _loc9_..arg.(@key == "");
            while(§§hasnext(_loc9_..arg.(@key == ""),_loc19_))
            {
               _loc8_ = uint(_loc5_.length);
               _loc10_ = uint(0);
               while(_loc10_ < _loc8_)
               {
                  _loc4_ = _loc5_.charCodeAt(_loc10_);
                  _loc6_ = _loc5_.charCodeAt(_loc10_ + 1);
                  _loc1_ = 0;
                  if(_loc4_ < 58)
                  {
                     _loc1_ = _loc4_ - 48;
                  }
                  else if(_loc4_ < 71)
                  {
                     _loc1_ = 10 + (_loc4_ - 65);
                  }
                  else if(_loc4_ < 103)
                  {
                     _loc1_ = 10 + (_loc4_ - 97);
                  }
                  _loc1_ = _loc1_ * 16;
                  if(_loc6_ < 58)
                  {
                     _loc1_ = _loc1_ + (_loc6_ - 48);
                  }
                  else if(_loc6_ < 71)
                  {
                     _loc1_ = _loc1_ + (10 + (_loc6_ - 65));
                  }
                  else if(_loc6_ < 103)
                  {
                     _loc1_ = _loc1_ + (10 + (_loc6_ - 97));
                  }
                  writeByte(_loc1_);
                  _loc10_ = uint(_loc10_ + 2);
               }
            }
         }
         position = 0;
      }
   }
}

const §7§;
