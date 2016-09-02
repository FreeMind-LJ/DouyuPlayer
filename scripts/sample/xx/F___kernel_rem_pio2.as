package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._init_jk;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._ipio2;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.lf64;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._PIo2;
   
   public function F___kernel_rem_pio2() : void
   {
      var _loc15_:* = 0;
      var _loc39_:* = 0;
      var _loc47_:* = 0;
      var _loc30_:* = 0;
      var _loc42_:* = 0;
      var _loc45_:* = 0;
      var _loc36_:int = 0;
      var _loc16_:int = 0;
      var _loc19_:int = 0;
      var _loc28_:int = 0;
      var _loc18_:int = 0;
      var _loc9_:int = 0;
      var _loc2_:Number = NaN;
      var _loc8_:Number = NaN;
      var _loc35_:int = 0;
      var _loc20_:int = 0;
      var _loc41_:int = 0;
      var _loc43_:* = 0;
      var _loc12_:int = 0;
      var _loc46_:int = 0;
      var _loc27_:* = 0;
      var _loc40_:* = 0;
      var _loc22_:* = NaN;
      var _loc34_:int = 0;
      var _loc29_:* = 0;
      var _loc23_:* = NaN;
      var _loc32_:int = 0;
      var _loc33_:* = 0;
      var _loc26_:Number = NaN;
      var _loc14_:int = 0;
      var _loc10_:int = 0;
      var _loc38_:int = 0;
      var _loc25_:Number = NaN;
      var _loc37_:int = 0;
      var _loc4_:Number = NaN;
      var _loc7_:Number = NaN;
      var _loc6_:Number = NaN;
      var _loc5_:Number = NaN;
      var _loc11_:int = ESP;
      _loc15_ = _loc11_;
      _loc11_ = _loc11_ - 560;
      _loc30_ = li32(_loc15_ + 8);
      _loc47_ = int(_loc30_ + -3);
      _loc46_ = 0;
      if(_loc47_ >= -23)
      {
         _loc46_ = _loc47_ / 24;
      }
      _loc45_ = li32(_loc15_ + 16);
      var _loc44_:* = _loc45_ << 2;
      _loc44_ = int(_init_jk + _loc44_);
      _loc43_ = li32(_loc44_);
      _loc42_ = li32(_loc15_ + 12);
      _loc41_ = _loc42_ + -1;
      _loc44_ = int(_loc43_ + _loc41_);
      if(_loc44_ >= 0)
      {
         _loc40_ = int(_loc43_ + _loc42_);
         _loc44_ = int(_loc46_ + 1);
         _loc47_ = int(_loc44_ - _loc42_);
         _loc27_ = int(_loc15_ - 240);
         addr167:
         _loc22_ = 0;
         if(_loc47_ >= 0)
         {
            _loc44_ = int(_ipio2 + (_loc47_ << 2));
            _loc44_ = li32(_loc44_);
            _loc22_ = Number(_loc44_);
         }
         sf64(_loc22_,_loc27_);
         _loc47_ = int(_loc47_ + 1);
         _loc27_ = int(_loc27_ + 8);
         _loc40_ = int(_loc40_ + -1);
         if(_loc40_ != 0)
         {
            §§goto(addr167);
         }
      }
      _loc35_ = _loc46_ * 24;
      _loc36_ = _loc35_ + 24;
      _loc37_ = _loc30_ - _loc36_;
      _loc47_ = li32(_loc15_ + 4);
      _loc39_ = li32(_loc15_);
      if(_loc41_ >= 0)
      {
         _loc44_ = int((_loc42_ << 3) + (int(_loc15_ - 240)));
         _loc27_ = int(_loc44_ + -8);
         _loc32_ = _loc43_ + 1;
         _loc33_ = int(_loc15_ - 560);
         addr375:
         _loc23_ = 0;
         _loc34_ = 0;
         _loc40_ = _loc39_;
         addr309:
         _loc29_ = _loc42_;
         _loc44_ = _loc34_ << 3;
         _loc44_ = int(_loc27_ + _loc44_);
         var _loc21_:* = lf64(_loc44_);
         var _loc24_:* = lf64(_loc40_);
         _loc24_ = Number(_loc24_ * _loc21_);
         _loc23_ = Number(_loc24_ + _loc23_);
         _loc34_ = _loc34_ + -1;
         _loc40_ = int(_loc40_ + 8);
         _loc29_ = int(_loc29_ + -1);
         if(_loc29_ == 0)
         {
            sf64(_loc23_,_loc33_);
            _loc32_ = _loc32_ + -1;
            _loc33_ = int(_loc33_ + 8);
            _loc27_ = int(_loc27_ + 8);
            if(_loc32_ != 0)
            {
               §§goto(addr375);
            }
         }
         §§goto(addr309);
      }
      else
      {
         _loc11_ = _loc11_ - 16;
         si32(0,_loc11_ + 4);
         _loc44_ = int(_loc15_ - 560);
         si32(_loc44_,_loc11_);
         _loc44_ = _loc43_ << 3;
         _loc44_ = int(_loc44_ + 8);
         si32(_loc44_,_loc11_ + 8);
         ESP = _loc11_;
         Fmemset();
         _loc11_ = _loc11_ + 16;
      }
      _loc44_ = _loc46_ << 2;
      _loc32_ = _ipio2 + _loc44_;
      var _loc31_:* = _loc42_ << 3;
      _loc44_ = int(_loc15_ - 240);
      _loc28_ = _loc44_ + _loc31_;
      _loc33_ = _loc43_ << 2;
      _loc20_ = _loc15_ - 80;
      _loc44_ = int(_loc33_ + _loc20_);
      _loc18_ = _loc44_ + -8;
      _loc19_ = 23 - _loc37_;
      _loc16_ = 24 - _loc37_;
      _loc22_ = 0;
      _loc27_ = _loc43_;
      continue loop3;
   }
}
