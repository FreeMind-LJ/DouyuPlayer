package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.lf64;
   
   public function F___b2d_D2A() : void
   {
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc17_:* = 0;
      var _loc12_:* = 0;
      var _loc15_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc18_:* = 0;
      var _loc14_:* = 0;
      var _loc16_:* = 0;
      var _loc3_:* = int(ESP);
      _loc5_ = _loc3_;
      _loc3_ = int(_loc3_ - 8);
      _loc4_ = li32(_loc5_);
      _loc18_ = int(_loc4_ + 20);
      _loc17_ = li32(_loc4_ + 16);
      _loc16_ = int(_loc17_ + -1);
      _loc15_ = _loc16_ << 2;
      _loc14_ = int(_loc18_ + _loc15_);
      _loc12_ = li32(_loc14_);
      _loc11_ = _loc12_ << 16;
      if(uint(_loc12_) >= 65536)
      {
         _loc11_ = _loc12_;
      }
      _loc10_ = _loc11_ << 8;
      if(uint(_loc11_) >= 16777216)
      {
         _loc10_ = _loc11_;
      }
      _loc1_ = _loc10_ << 4;
      if(uint(_loc10_) >= 268435456)
      {
         _loc1_ = _loc10_;
      }
      _loc6_ = _loc1_ << 2;
      if(uint(_loc1_) >= 1073741824)
      {
         _loc6_ = _loc1_;
      }
      _loc7_ = 16;
      if(uint(_loc12_) >= 65536)
      {
         _loc7_ = 0;
      }
      _loc8_ = _loc7_ | 8;
      if(uint(_loc11_) >= 16777216)
      {
         _loc8_ = _loc7_;
      }
      _loc7_ = _loc8_ | 4;
      if(uint(_loc10_) >= 268435456)
      {
         _loc7_ = _loc8_;
      }
      _loc8_ = _loc7_ | 2;
      if(uint(_loc1_) >= 1073741824)
      {
         _loc8_ = _loc7_;
      }
      _loc1_ = li32(_loc5_ + 4);
      if(_loc6_ >= 0)
      {
         _loc8_ = int(_loc8_ + 1);
         _loc15_ = _loc6_ & 1073741824;
         if(_loc15_ == 0)
         {
            si32(0,_loc1_);
            _loc8_ = 32;
         }
         addr257:
         _loc6_ = 0;
         if(_loc16_ >= 1)
         {
            _loc15_ = _loc17_ << 2;
            _loc15_ = int(_loc15_ + _loc4_);
            _loc6_ = li32(_loc15_ + 12);
            _loc14_ = int(_loc15_ + 12);
         }
         _loc4_ = int(_loc8_ + -11);
         addr352:
         if(_loc4_ != 0)
         {
            _loc16_ = 0;
            if(uint(_loc14_) > uint(_loc18_))
            {
               _loc16_ = li32(_loc14_ - 4);
            }
            var _loc9_:* = _loc12_ << _loc4_;
            _loc15_ = int(43 - _loc8_);
            var _loc2_:int = _loc6_ >>> _loc15_;
            _loc9_ = _loc9_ | _loc2_;
            _loc14_ = _loc9_ | 1072693248;
            _loc9_ = _loc6_ << _loc4_;
            _loc15_ = int(_loc16_ >>> _loc15_);
            _loc15_ = _loc15_ | _loc9_;
            _loc6_ = _loc15_ | 0;
         }
         else
         {
            _loc14_ = _loc12_ | 1072693248;
         }
         _loc15_ = int(_loc5_ - 8);
         _loc15_ = _loc15_ | 4;
         si32(_loc14_,_loc15_);
         si32(_loc6_,_loc5_ - 8);
         var _loc13_:* = lf64(_loc5_ - 8);
         st0 = _loc13_;
         _loc3_ = _loc5_;
         ESP = _loc3_;
         return;
      }
      _loc15_ = int(32 - _loc8_);
      si32(_loc15_,_loc1_);
      if(_loc8_ <= 10)
      {
         _loc18_ = 0;
         if(_loc16_ >= 1)
         {
            _loc15_ = _loc17_ << 2;
            _loc15_ = int(_loc15_ + _loc4_);
            _loc18_ = li32(_loc15_ + 12);
         }
         _loc15_ = int(11 - _loc8_);
         _loc9_ = int(_loc12_ >>> _loc15_);
         _loc14_ = _loc9_ | 1072693248;
         _loc15_ = int(_loc18_ >>> _loc15_);
         _loc9_ = int(_loc8_ + 21);
         _loc9_ = _loc12_ << _loc9_;
         _loc15_ = _loc15_ | _loc9_;
         _loc6_ = _loc15_ | 0;
      }
      else
      {
         §§goto(addr257);
      }
      §§goto(addr352);
   }
}
