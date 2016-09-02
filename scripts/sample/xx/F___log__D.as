package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   
   public function F___log__D() : void
   {
      var _loc10_:* = 0;
      var _loc20_:* = 0;
      var _loc15_:* = NaN;
      var _loc22_:* = 0;
      var _loc23_:Number = NaN;
      var _loc21_:Number = NaN;
      var _loc2_:Number = NaN;
      var _loc3_:Number = NaN;
      var _loc16_:Number = NaN;
      var _loc9_:* = 0;
      var _loc18_:Number = NaN;
      var _loc19_:int = 0;
      var _loc8_:* = int(ESP);
      _loc10_ = _loc8_;
      _loc8_ = int(_loc8_ - 112);
      _loc15_ = lf64(_loc10_ + 4);
      sf64(_loc15_,_loc10_ - 32);
      _loc9_ = int(_loc10_ - 32);
      _loc9_ = _loc9_ | 4;
      _loc9_ = li32(_loc9_);
      _loc22_ = _loc9_ & 2147483647;
      _loc9_ = li32(_loc10_ - 32);
      _loc9_ = _loc22_ | _loc9_;
      _loc20_ = li32(_loc10_);
      if(_loc9_ == 0)
      {
         _loc18_ = -1 / Math.abs(_loc15_);
      }
      else if(uint(_loc22_) >= 2146435072)
      {
         _loc18_ = _loc15_ * _loc15_;
      }
      else if(uint(_loc22_) <= 1048575)
      {
         var _loc13_:* = Number(_loc15_ * 18014398509482000);
         sf64(_loc13_,_loc10_ - 40);
         _loc9_ = int(_loc10_ - 40);
         _loc9_ = _loc9_ | 4;
         _loc9_ = li32(_loc9_);
         _loc9_ = int(_loc9_ >>> 20);
         _loc9_ = _loc9_ & 2047;
         _loc9_ = int(_loc9_ + -1077);
         _loc18_ = _loc9_;
      }
      else
      {
         _loc9_ = int(_loc22_ >>> 20);
         _loc9_ = int(_loc9_ + -1023);
         _loc18_ = _loc9_;
      }
      _loc8_ = int(_loc8_ - 16);
      sf64(_loc15_,_loc8_);
      _loc19_ = _loc18_;
      _loc9_ = int(0 - _loc19_);
      si32(_loc9_,_loc8_ + 8);
      ESP = _loc8_;
      F_ldexp();
      _loc8_ = int(_loc8_ + 16);
      _loc16_ = st0;
      if(_loc19_ == -1022)
      {
         sf64(_loc16_,_loc10_ - 48);
         _loc9_ = int(_loc10_ - 48);
         _loc9_ = _loc9_ | 4;
         _loc9_ = li32(_loc9_);
         _loc22_ = _loc9_ & 2147483647;
         _loc9_ = _loc22_ | li32(_loc10_ - 48);
         if(_loc9_ == 0)
         {
            _loc18_ = -1 / Math.abs(_loc16_);
         }
         else if(uint(_loc22_) >= 2146435072)
         {
            _loc18_ = _loc16_ * _loc16_;
         }
         else if(uint(_loc22_) <= 1048575)
         {
            _loc13_ = Number(_loc16_ * 18014398509482000);
            sf64(_loc13_,_loc10_ - 56);
            _loc9_ = int(_loc10_ - 56);
            _loc9_ = _loc9_ | 4;
            _loc9_ = li32(_loc9_);
            _loc9_ = int(_loc9_ >>> 20);
            _loc9_ = _loc9_ & 2047;
            _loc9_ = int(_loc9_ + -1077);
            _loc18_ = _loc9_;
         }
         else
         {
            _loc9_ = int(_loc22_ >>> 20);
            _loc9_ = int(_loc9_ + -1023);
            _loc18_ = _loc9_;
         }
         _loc8_ = int(_loc8_ - 16);
         sf64(_loc16_,_loc8_);
         var _loc17_:* = int(_loc18_);
         _loc9_ = int(0 - _loc17_);
         si32(_loc9_,_loc8_ + 8);
         _loc19_ = _loc17_ + _loc19_;
         ESP = _loc8_;
         F_ldexp();
         _loc8_ = int(_loc8_ + 16);
         _loc16_ = st0;
      }
      _loc13_ = Number(_loc16_ + -1);
      _loc13_ = Number(_loc13_ * 128);
      _loc13_ = Number(_loc13_ + 0.5);
      _loc22_ = int(_loc13_);
      _loc13_ = Number(_loc22_);
      _loc13_ = Number(_loc13_ * 0.0078125);
      _loc23_ = _loc13_ + 1;
      _loc21_ = _loc16_ - _loc23_;
      _loc13_ = Number(_loc21_ + _loc21_);
      var _loc1_:* = Number(_loc23_ + _loc23_);
      _loc1_ = Number(_loc1_ + _loc21_);
      _loc2_ = 1 / _loc1_;
      _loc3_ = _loc13_ * _loc2_;
      _loc1_ = Number(_loc3_ * _loc3_);
      _loc13_ = Number(_loc3_ * _loc1_);
      var _loc4_:* = Number(_loc1_ * 0.000434887777707615);
      _loc4_ = Number(_loc4_ + 0.00223213998791945);
      _loc4_ = Number(_loc4_ * _loc1_);
      _loc4_ = Number(_loc4_ + 0.0125000000037718);
      _loc1_ = Number(_loc4_ * _loc1_);
      _loc1_ = Number(_loc1_ + 0.0833333333333318);
      _loc16_ = _loc13_ * _loc1_;
      _loc9_ = _loc22_ | _loc19_;
      if(_loc9_ != 0)
      {
         _loc13_ = Number(_loc3_ + 513);
         sf64(_loc13_,_loc10_ - 8);
         _loc13_ = lf64(_loc10_ - 8);
         _loc13_ = Number(_loc13_ + -513);
         sf64(_loc13_,_loc10_ - 8);
      }
      else
      {
         sf64(_loc3_,_loc10_ - 8);
         sf64(lf64(_loc10_ - 8),_loc10_ - 72);
         _loc17_ = int(_loc10_ - 80);
         var _loc14_:* = int(_loc10_ - 72);
         _loc14_ = _loc14_ | 4;
         _loc14_ = li32(_loc14_);
         si32(_loc14_,_loc17_ | 4);
         sf64(lf64(_loc10_ - 8),_loc10_ - 64);
         _loc9_ = li32(_loc10_ - 64);
         _loc9_ = _loc9_ & -134217728;
         si32(_loc9_,_loc10_ - 80);
         _loc13_ = lf64(_loc10_ - 80);
         sf64(_loc13_,_loc10_ - 8);
      }
      _loc17_ = _loc22_ << 3;
      _loc9_ = int(_logF_head + _loc17_);
      _loc4_ = lf64(_loc9_);
      _loc13_ = Number(_loc19_);
      var _loc7_:* = Number(_loc13_ * 0.693147180560118);
      var _loc6_:Number = _loc7_ + _loc4_;
      _loc4_ = lf64(_loc10_ - 8);
      _loc7_ = lf64(_loc10_ - 8);
      var _loc5_:* = lf64(_loc10_ - 8);
      _loc5_ = Number(_loc6_ + _loc5_);
      sf64(_loc5_,_loc10_ - 8);
      _loc7_ = Number(_loc7_ * _loc21_);
      _loc4_ = Number(_loc23_ * _loc4_);
      _loc4_ = Number(_loc21_ - _loc4_);
      _loc4_ = Number(_loc4_ + _loc4_);
      _loc4_ = Number(_loc4_ - _loc7_);
      _loc4_ = Number(_loc4_ * _loc2_);
      _loc17_ = int(_logF_tail + _loc17_);
      _loc1_ = lf64(_loc17_);
      _loc1_ = Number(_loc1_ + _loc4_);
      _loc1_ = Number(_loc1_ + _loc16_);
      _loc13_ = Number(_loc13_ * -1.72394445256148e-13);
      _loc13_ = Number(_loc13_ + _loc1_);
      _loc1_ = lf64(_loc10_ - 8);
      _loc1_ = Number(_loc1_ + _loc13_);
      sf64(_loc1_,_loc10_ - 24);
      _loc4_ = lf64(_loc10_ - 24);
      _loc1_ = lf64(_loc10_ - 24);
      sf64(_loc1_,_loc10_ - 96);
      _loc17_ = int(_loc10_ - 104);
      var _loc12_:* = _loc17_ | 4;
      _loc17_ = int(_loc10_ - 96);
      _loc17_ = _loc17_ | 4;
      _loc17_ = li32(_loc17_);
      si32(_loc17_,_loc12_);
      sf64(_loc4_,_loc10_ - 88);
      _loc14_ = li32(_loc10_ - 88);
      var _loc11_:* = _loc14_ & -134217728;
      si32(_loc11_,_loc10_ - 104);
      _loc7_ = lf64(_loc10_ - 104);
      sf64(_loc7_,_loc10_ - 24);
      _loc4_ = lf64(_loc10_ - 8);
      si32(_loc17_,_loc20_ + 4);
      si32(_loc11_,_loc20_);
      _loc1_ = Number(_loc4_ - _loc7_);
      _loc13_ = Number(_loc1_ + _loc13_);
      sf64(_loc13_,_loc20_ + 8);
      _loc8_ = _loc10_;
      ESP = _loc8_;
   }
}
