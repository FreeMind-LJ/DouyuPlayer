package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__Z8ELFHashCP10IDataCacheii() : void
   {
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = 0;
      _loc4_ = li32(_loc1_ + 8);
      if(_loc4_ >= 1)
      {
         _loc5_ = li32(_loc1_ + 4);
         _loc6_ = li32(_loc1_);
         _loc3_ = 0;
         do
         {
            var _loc7_:* = li32(_loc6_);
            var _loc8_:* = li32(_loc7_ + 20);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc5_,_loc2_ + 4);
            si32(_loc6_,_loc2_);
            ESP = _loc2_;
            ptr2fun[_loc8_]();
            _loc7_ = _loc3_ << 4;
            _loc2_ = int(_loc2_ + 16);
            var _loc9_:* = int(eax);
            _loc3_ = int(_loc9_ + _loc7_);
            if(uint(_loc3_) >= 268435456)
            {
               _loc7_ = int(_loc3_ >>> 24);
               _loc7_ = _loc7_ & 240;
               _loc9_ = _loc3_ | 268435455;
               _loc3_ = (_loc7_ ^ _loc3_) & (_loc9_ ^ -268435456);
            }
            _loc5_ = int(_loc5_ + 1);
            _loc4_ = int(_loc4_ + -1);
         }
         while(_loc4_ != 0);
         
      }
      _loc7_ = _loc3_ & 2147483647;
      eax = _loc7_;
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
