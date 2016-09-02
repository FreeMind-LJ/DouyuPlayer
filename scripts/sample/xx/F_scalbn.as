package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_scalbn() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc5_:* = NaN;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 88);
      _loc5_ = lf64(_loc3_);
      sf64(_loc5_,_loc3_ - 8);
      _loc1_ = int(_loc3_ - 8);
      _loc1_ = _loc1_ | 4;
      _loc9_ = li32(_loc1_);
      _loc1_ = int(_loc9_ >>> 20);
      _loc8_ = _loc1_ & 2047;
      _loc7_ = li32(_loc3_ + 8);
      if(_loc8_ == 0)
      {
         var _loc6_:* = _loc9_ & 2147483647;
         if((_loc6_ | li32(_loc3_ - 8)) != 0)
         {
            _loc5_ = Number(_loc5_ * 18014398509482000);
            sf64(_loc5_,_loc3_ - 16);
            _loc9_ = li32(int(_loc3_ - 16) | 4);
            _loc8_ = int((int(_loc9_ >>> 20) & 2047) + -54);
            if(_loc7_ <= -50001)
            {
               _loc5_ = Number(_loc5_ * 1.0e-300);
            }
         }
         addr357:
         st0 = _loc5_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      if(_loc8_ == 2047)
      {
         _loc5_ = Number(_loc5_ + _loc5_);
      }
      else
      {
         _loc8_ = int(_loc8_ + _loc7_);
         if(_loc8_ >= 2047)
         {
            sf64(_loc5_,_loc3_ - 80);
            _loc6_ = int(_loc3_ - 80);
            _loc6_ = _loc6_ | 4;
            _loc6_ = li32(_loc6_);
            _loc6_ = _loc6_ & -2147483648;
            _loc6_ = _loc6_ | 2117592124;
            si32(_loc6_,int(_loc3_ - 88) | 4);
            si32(-2013235812,_loc3_ - 88);
            var _loc4_:* = lf64(_loc3_ - 88);
            _loc5_ = Number(_loc4_ * 1.0e300);
         }
         else if(_loc8_ >= 1)
         {
            _loc6_ = int(_loc3_ - 72);
            si32(_loc9_ & -2146435073 | _loc8_ << 20,_loc6_ | 4);
            sf64(_loc5_,_loc3_ - 64);
            si32(li32(_loc3_ - 64),_loc3_ - 72);
            _loc5_ = lf64(_loc3_ - 72);
         }
         else if(_loc8_ <= -54)
         {
            sf64(_loc5_,_loc3_ - 40);
            _loc9_ = li32(int(_loc3_ - 40) | 4) & -2147483648;
            if(_loc7_ >= 50001)
            {
               _loc6_ = int(_loc3_ - 56);
               si32(_loc9_ | 2117592124,_loc6_ | 4);
               si32(-2013235812,_loc3_ - 56);
               _loc4_ = lf64(_loc3_ - 56);
               _loc5_ = Number(_loc4_ * 1.0e300);
            }
            else
            {
               _loc6_ = int(_loc3_ - 48);
               si32(_loc9_ | 27618847,_loc6_ | 4);
               si32(-1023872167,_loc3_ - 48);
               _loc4_ = lf64(_loc3_ - 48);
               _loc5_ = Number(_loc4_ * 1.0e-300);
            }
         }
         else
         {
            _loc6_ = _loc8_ << 20;
            _loc6_ = int(_loc6_ + 56623104);
            _loc6_ = int(_loc3_ - 32);
            si32(_loc6_ | _loc9_ & -2146435073,_loc6_ | 4);
            sf64(_loc5_,_loc3_ - 24);
            si32(li32(_loc3_ - 24),_loc3_ - 32);
            _loc4_ = lf64(_loc3_ - 32);
            _loc5_ = Number(_loc4_ * 5.55111512312578e-17);
         }
      }
      §§goto(addr357);
   }
}
