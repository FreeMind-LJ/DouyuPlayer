package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F___kernel_tan() : void
   {
      var _loc4_:* = 0;
      var _loc11_:* = 0;
      var _loc14_:* = 0;
      var _loc12_:* = 0;
      var _loc1_:Number = NaN;
      var _loc3_:* = 0;
      var _loc5_:* = NaN;
      var _loc7_:* = NaN;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 40);
      _loc7_ = lf64(_loc4_);
      sf64(_loc7_,_loc4_ - 8);
      _loc3_ = int(_loc4_ - 8);
      _loc3_ = _loc3_ | 4;
      _loc14_ = li32(_loc3_);
      _loc12_ = _loc14_ & 2147483640;
      _loc5_ = lf64(_loc4_ + 8);
      if(uint(_loc12_) >= 1072010280)
      {
         if(_loc14_ <= -1)
         {
            _loc5_ = Number(-_loc5_);
            _loc7_ = Number(-_loc7_);
         }
         var _loc10_:* = Number(3.06161699786838e-17 - _loc5_);
         var _loc9_:Number = 0.785398163397448 - _loc7_;
         _loc7_ = Number(_loc9_ + _loc10_);
         _loc5_ = 0;
      }
      _loc11_ = li32(_loc4_ + 16);
      _loc9_ = _loc7_ * _loc7_;
      _loc10_ = Number(_loc9_ * _loc9_);
      var _loc15_:Number = _loc10_ * 0.0000259073051863634;
      _loc15_ = _loc15_ + 0.0000714072491382608;
      _loc15_ = _loc15_ * _loc10_;
      _loc15_ = _loc15_ + 0.00024646313481847;
      _loc15_ = _loc15_ * _loc10_;
      _loc15_ = _loc15_ + 0.00145620945432529;
      _loc15_ = _loc15_ * _loc10_;
      _loc15_ = _loc15_ + 0.0088632398235993;
      _loc15_ = _loc15_ * _loc10_;
      _loc15_ = _loc15_ + 0.0539682539762261;
      _loc15_ = _loc15_ * _loc9_;
      var _loc13_:* = Number(_loc10_ * -0.0000185586374855275);
      _loc13_ = Number(_loc13_ + 0.0000781794442939557);
      _loc13_ = Number(_loc13_ * _loc10_);
      _loc13_ = Number(_loc13_ + 0.000588041240820264);
      _loc13_ = Number(_loc13_ * _loc10_);
      _loc13_ = Number(_loc13_ + 0.00359207910759131);
      _loc13_ = Number(_loc13_ * _loc10_);
      _loc13_ = Number(_loc13_ + 0.0218694882948595);
      _loc10_ = Number(_loc13_ * _loc10_);
      _loc10_ = Number(_loc10_ + 0.133333333333201);
      _loc15_ = _loc10_ + _loc15_;
      _loc10_ = Number(_loc9_ * _loc7_);
      _loc15_ = _loc15_ * _loc10_;
      _loc15_ = _loc15_ + _loc5_;
      _loc9_ = _loc15_ * _loc9_;
      _loc9_ = _loc9_ + _loc5_;
      _loc10_ = Number(_loc10_ * 0.333333333333334);
      _loc1_ = _loc10_ + _loc9_;
      _loc5_ = Number(_loc7_ + _loc1_);
      if(uint(_loc12_) >= 1072010280)
      {
         _loc9_ = _loc11_;
         _loc10_ = Number(_loc5_ * _loc5_);
         _loc10_ = Number(_loc10_ / (Number(_loc5_ + _loc9_)));
         _loc10_ = Number(_loc7_ - (Number(_loc10_ - _loc1_)));
         _loc10_ = Number(_loc10_ * -2);
         var _loc8_:* = int(_loc14_ >>> 30);
         _loc8_ = int(1 - (_loc8_ & 2));
         _loc10_ = Number(_loc8_);
         _loc5_ = Number(_loc10_ * (_loc10_ + _loc9_));
      }
      else if(_loc11_ != 1)
      {
         sf64(_loc5_,_loc4_ - 16);
         _loc8_ = int(_loc4_ - 16);
         _loc8_ = _loc8_ | 4;
         _loc8_ = li32(_loc8_);
         si32(_loc8_,int(_loc4_ - 24) | 4);
         _loc9_ = -1 / _loc5_;
         sf64(_loc9_,_loc4_ - 32);
         _loc8_ = int(_loc4_ - 40);
         var _loc6_:* = int(_loc4_ - 32);
         _loc6_ = _loc6_ | 4;
         _loc6_ = li32(_loc6_);
         si32(_loc6_,_loc8_ | 4);
         si32(0,_loc4_ - 24);
         si32(0,_loc4_ - 40);
         _loc13_ = lf64(_loc4_ - 24);
         _loc10_ = lf64(_loc4_ - 40);
         _loc13_ = Number(_loc10_ * _loc13_);
         _loc15_ = Number(_loc10_ * (_loc1_ - (Number(_loc13_ - _loc7_)))) + (Number(_loc13_ + 1));
         _loc9_ = _loc15_ * _loc9_;
         _loc5_ = Number(_loc9_ + _loc10_);
      }
      st0 = _loc5_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
