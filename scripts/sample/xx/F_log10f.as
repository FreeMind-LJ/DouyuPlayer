package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_log10f() : void
   {
      var _loc6_:* = 0;
      var _loc5_:int = 0;
      var _loc18_:* = 0;
      var _loc1_:* = NaN;
      var _loc3_:* = NaN;
      var _loc4_:* = int(ESP);
      _loc6_ = _loc4_;
      _loc4_ = int(_loc4_ - 16);
      _loc1_ = lf32(_loc6_);
      sf32(_loc1_,_loc6_ - 4);
      _loc5_ = -127;
      _loc18_ = li32(_loc6_ - 4);
      if(_loc18_ <= 8388607)
      {
         _loc3_ = Number(-inf);
         var _loc15_:* = _loc18_ & 2147483647;
         if(_loc15_ != 0)
         {
            if(_loc18_ <= -1)
            {
               var _loc7_:* = _loc1_;
               _loc7_ = Number(_loc7_ - _loc7_);
               var _loc16_:* = _loc7_;
               _loc7_ = _loc16_;
               var _loc9_:* = Number(_loc7_ / 0);
               _loc3_ = _loc9_;
            }
            else
            {
               _loc16_ = 33554432;
               _loc9_ = Number(_loc1_ * _loc16_);
               _loc1_ = _loc9_;
               sf32(_loc1_,_loc6_ - 8);
               _loc5_ = -152;
               _loc18_ = li32(_loc6_ - 8);
            }
         }
         addr215:
         st0 = _loc3_;
         _loc4_ = _loc6_;
         ESP = _loc4_;
         return;
      }
      if(_loc18_ >= 2139095040)
      {
         _loc9_ = _loc1_;
         _loc9_ = Number(_loc9_ + _loc9_);
         _loc3_ = _loc9_;
      }
      else
      {
         _loc15_ = _loc18_ >> 23;
         var _loc14_:int = _loc15_ + _loc5_;
         _loc15_ = int(_loc14_ >>> 31);
         var _loc12_:int = 127 - _loc15_;
         _loc4_ = int(_loc4_ - 16);
         si32(_loc12_ << 23 | _loc18_ & 8388607,_loc4_);
         _loc15_ = int(_loc15_ + _loc14_);
         _loc9_ = 0.301029205322266;
         _loc9_ = Number(Number(_loc15_) * _loc9_);
         _loc9_ = _loc9_;
         var _loc17_:* = 7.90341516676563e-7;
         _loc7_ = Number(_loc15_ * _loc17_);
         _loc16_ = _loc7_;
         ESP = _loc4_;
         F_logf();
         _loc17_ = 0.434294492006302;
         _loc4_ = int(_loc4_ + 16);
         var _loc11_:Number = st0;
         var _loc10_:* = _loc11_;
         var _loc13_:Number = _loc10_ * _loc17_;
         _loc17_ = _loc13_;
         _loc7_ = Number(_loc16_ + _loc17_);
         _loc16_ = _loc7_;
         _loc9_ = Number(_loc9_ + _loc16_);
         _loc3_ = _loc9_;
      }
      §§goto(addr215);
   }
}
