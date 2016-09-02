package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.lf64;
   
   public function F___ieee754_rem_pio2f() : void
   {
      var _loc5_:* = 0;
      var _loc1_:* = NaN;
      var _loc13_:* = 0;
      var _loc4_:* = 0;
      var _loc14_:* = 0;
      var _loc9_:* = NaN;
      var _loc12_:int = 0;
      var _loc3_:* = int(ESP);
      _loc5_ = _loc3_;
      _loc3_ = int(_loc3_ - 32);
      _loc1_ = lf32(_loc5_);
      sf32(_loc1_,_loc5_ - 20);
      _loc4_ = li32(_loc5_ - 20);
      _loc14_ = _loc4_ & 2147483647;
      _loc13_ = li32(_loc5_ + 4);
      if(uint(_loc14_) <= 1305022426)
      {
         var _loc7_:* = _loc1_;
         var _loc6_:* = Number(_loc7_ * 0.636619772367581);
         _loc6_ = Number(_loc6_ + 6755399441055740);
         _loc6_ = Number(_loc6_ + -6755399441055740);
         _loc7_ = Number(Number(_loc7_ + Number(_loc6_ * -1.57079631090164)) + Number(_loc6_ * -1.58932547735282e-8));
         sf64(_loc7_,_loc13_);
         _loc12_ = _loc6_;
      }
      else if(uint(_loc14_) >= 2139095040)
      {
         _loc6_ = _loc1_;
         _loc6_ = Number(_loc6_ - _loc6_);
         _loc6_ = _loc6_;
         sf64(_loc6_,_loc13_);
         _loc12_ = 0;
      }
      else
      {
         var _loc10_:int = _loc14_ >>> 23;
         _loc10_ = _loc10_ + -150;
         var _loc8_:int = _loc14_ - (_loc10_ << 23);
         si32(_loc8_,_loc5_ - 24);
         _loc7_ = lf32(_loc5_ - 24);
         sf64(_loc7_,_loc5_ - 8);
         _loc3_ = int(_loc3_ - 32);
         si32(0,_loc3_ + 16);
         si32(1,_loc3_ + 12);
         si32(_loc10_,_loc3_ + 8);
         _loc10_ = _loc5_ - 16;
         si32(_loc10_,_loc3_ + 4);
         _loc10_ = _loc5_ - 8;
         si32(_loc10_,_loc3_);
         ESP = _loc3_;
         F___kernel_rem_pio2();
         _loc3_ = int(_loc3_ + 32);
         _loc12_ = eax;
         _loc9_ = lf64(_loc5_ - 16);
         if(_loc4_ <= -1)
         {
            _loc6_ = Number(-_loc9_);
            sf64(_loc6_,_loc13_);
            _loc12_ = 0 - _loc12_;
         }
         else
         {
            sf64(_loc9_,_loc13_);
         }
      }
      eax = _loc12_;
      _loc3_ = _loc5_;
      ESP = _loc3_;
   }
}
