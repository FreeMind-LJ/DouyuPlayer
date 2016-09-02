package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__Z7APHashCP10IDataCacheii() : void
   {
      var _loc13_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc8_:int = 0;
      var _loc7_:int = 0;
      var _loc2_:* = 0;
      var _loc1_:* = int(ESP);
      _loc13_ = _loc1_;
      _loc2_ = 0;
      _loc3_ = li32(_loc13_ + 8);
      if(_loc3_ >= 1)
      {
         _loc4_ = li32(_loc13_ + 4);
         _loc6_ = li32(_loc13_);
         _loc7_ = 0;
         _loc2_ = _loc7_;
         do
         {
            _loc8_ = _loc4_ + _loc7_;
            var _loc9_:* = _loc7_ & 1;
            if(_loc9_ == 0)
            {
               _loc9_ = li32(_loc6_);
               var _loc10_:* = li32(_loc9_ + 20);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc8_,_loc1_ + 4);
               si32(_loc6_,_loc1_);
               ESP = _loc1_;
               ptr2fun[_loc10_]();
               _loc9_ = int(_loc2_ >>> 3);
               _loc1_ = int(_loc1_ + 16);
               _loc2_ = _loc9_ ^ _loc2_ ^ _loc2_ << 7 ^ int(eax);
            }
            else
            {
               _loc9_ = li32(_loc6_);
               var _loc12_:* = li32(_loc9_ + 20);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc8_,_loc1_ + 4);
               si32(_loc6_,_loc1_);
               ESP = _loc1_;
               ptr2fun[_loc12_]();
               _loc1_ = int(_loc1_ + 16);
               var _loc5_:int = eax;
               _loc9_ = _loc2_ ^ int(_loc2_ >>> 5) ^ (_loc5_ | _loc2_ << 11);
               _loc2_ = _loc9_ ^ -1;
            }
            _loc7_ = _loc7_ + 1;
         }
         while(_loc3_ != _loc7_);
         
      }
      _loc9_ = _loc2_ & 2147483647;
      eax = _loc9_;
      _loc1_ = _loc13_;
      ESP = _loc1_;
   }
}
