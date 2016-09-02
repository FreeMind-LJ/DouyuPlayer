package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.lf64;
   
   public function F___extendsfdf2() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_);
      _loc9_ = _loc1_ & -2147483648;
      _loc8_ = _loc1_ & 2147483647;
      var _loc7_:* = int(_loc8_ + -8388608);
      if(uint(_loc7_) <= 2130706431)
      {
         _loc6_ = _loc8_ << 29;
         _loc7_ = int(_loc8_ >>> 3);
         _loc1_ = int(_loc7_ + 939524096);
      }
      else if(uint(_loc8_) >= 2139095040)
      {
         _loc6_ = _loc1_ & 4194303;
         _loc7_ = int(_loc1_ >>> 3);
         _loc7_ = _loc7_ & 524288;
         _loc1_ = _loc7_ | 2146435072;
      }
      else
      {
         _loc6_ = 0;
         _loc1_ = _loc6_;
         if(_loc8_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(0,_loc2_ + 4);
            si32(_loc8_,_loc2_);
            var _loc5_:* = _loc8_ | int(_loc8_ >>> 1);
            _loc5_ = _loc5_ | int(_loc5_ >>> 2);
            _loc5_ = _loc5_ | int(_loc5_ >>> 4);
            _loc5_ = _loc5_ | int(_loc5_ >>> 8);
            _loc7_ = _loc5_ | int(_loc5_ >>> 16);
            _loc7_ = _loc7_ ^ -1;
            _loc5_ = int(_loc7_ >>> 1);
            _loc5_ = int(_loc7_ - (_loc5_ & 1431655765));
            _loc5_ = int(_loc5_ >>> 2);
            _loc5_ = int((_loc5_ & 858993459) + (_loc5_ & 858993459));
            _loc7_ = int(_loc5_ + (int(_loc5_ >>> 4)));
            _loc7_ = _loc7_ & 252645135;
            _loc7_ = int(_loc7_ * 16843009);
            _loc7_ = int(_loc7_ >>> 24);
            _loc5_ = int(_loc7_ + 21);
            si32(_loc5_,_loc2_ + 8);
            _loc7_ = int(905 - _loc7_);
            ESP = _loc2_;
            F___ashldi3();
            _loc2_ = int(_loc2_ + 16);
            _loc6_ = int(eax);
            _loc5_ = int(edx);
            _loc5_ = _loc5_ ^ 1048576;
            _loc1_ = _loc5_ | _loc7_ << 20;
         }
      }
      _loc7_ = _loc1_ | _loc9_;
      _loc5_ = int(_loc3_ - 8);
      _loc5_ = _loc5_ | 4;
      si32(_loc7_,_loc5_);
      si32(_loc6_,_loc3_ - 8);
      var _loc4_:* = lf64(_loc3_ - 8);
      st0 = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
