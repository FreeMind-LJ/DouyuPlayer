package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   
   public function F_hypot() : void
   {
      var _loc6_:* = 0;
      var _loc8_:* = NaN;
      var _loc7_:* = NaN;
      var _loc15_:* = 0;
      var _loc13_:* = 0;
      var _loc16_:* = 0;
      var _loc12_:* = NaN;
      var _loc10_:* = NaN;
      var _loc17_:* = NaN;
      var _loc11_:* = 0;
      var _loc4_:* = int(ESP);
      _loc6_ = _loc4_;
      _loc4_ = int(_loc4_ - 144);
      _loc8_ = lf64(_loc6_);
      sf64(_loc8_,_loc6_ - 8);
      _loc7_ = lf64(_loc6_ + 8);
      sf64(_loc7_,_loc6_ - 16);
      var _loc5_:* = int(_loc6_ - 8);
      _loc5_ = _loc5_ | 4;
      _loc5_ = li32(_loc5_);
      _loc16_ = _loc5_ & 2147483647;
      _loc5_ = int(_loc6_ - 16);
      _loc5_ = _loc5_ | 4;
      _loc5_ = li32(_loc5_);
      _loc15_ = _loc5_ & 2147483647;
      _loc12_ = _loc8_;
      if(uint(_loc15_) <= uint(_loc16_))
      {
         _loc12_ = _loc7_;
      }
      _loc10_ = _loc7_;
      if(uint(_loc15_) <= uint(_loc16_))
      {
         _loc10_ = _loc8_;
      }
      _loc13_ = _loc16_;
      if(uint(_loc15_) <= uint(_loc16_))
      {
         _loc13_ = _loc15_;
      }
      if(uint(_loc15_) <= uint(_loc16_))
      {
         _loc15_ = _loc16_;
      }
      _loc12_ = Number(Math.abs(_loc12_));
      _loc17_ = Number(Math.abs(_loc10_));
      _loc5_ = int(_loc15_ - _loc13_);
      if(_loc5_ >= 62914561)
      {
         _loc12_ = Number(_loc17_ + _loc12_);
      }
      else
      {
         _loc11_ = 0;
         if(uint(_loc15_) >= 1596981249)
         {
            if(uint(_loc15_) >= 2146435072)
            {
               sf64(_loc17_,_loc6_ - 128);
               _loc5_ = li32(_loc6_ - 128);
               _loc5_ = _loc5_ | _loc15_ & 1048575;
               if(_loc5_ != 0)
               {
                  _loc17_ = Number(Math.abs(Number(_loc8_ + 0)) - Math.abs(Number(_loc7_ + 0)));
               }
               sf64(_loc12_,_loc6_ - 136);
               var _loc9_:* = _loc13_ ^ 2146435072;
               _loc5_ = li32(_loc6_ - 136);
               _loc5_ = _loc5_ | _loc9_;
               if(_loc5_ != 0)
               {
                  _loc12_ = _loc17_;
               }
            }
            else
            {
               _loc13_ = int(_loc13_ + -629145600);
               _loc5_ = int(_loc6_ - 48);
               si32(_loc13_,_loc5_ | 4);
               _loc15_ = int(_loc15_ + -629145600);
               _loc5_ = int(_loc6_ - 32);
               si32(_loc15_,_loc5_ | 4);
               sf64(_loc12_,_loc6_ - 40);
               sf64(_loc17_,_loc6_ - 24);
               _loc5_ = li32(_loc6_ - 40);
               si32(_loc5_,_loc6_ - 48);
               _loc5_ = li32(_loc6_ - 24);
               si32(_loc5_,_loc6_ - 32);
               _loc11_ = 600;
               _loc12_ = lf64(_loc6_ - 48);
               _loc17_ = lf64(_loc6_ - 32);
            }
         }
         _loc8_ = _loc12_;
         if(_loc13_ <= 548405247)
         {
            if(_loc13_ <= 1048575)
            {
               sf64(_loc8_,_loc6_ - 88);
               _loc12_ = _loc17_;
               if((_loc13_ | li32(_loc6_ - 88)) != 0)
               {
                  _loc11_ = _loc11_ | -1022;
                  _loc17_ = Number(_loc17_ * 4.49423283715579e307);
                  _loc8_ = Number(_loc8_ * 4.49423283715579e307);
               }
            }
            else
            {
               _loc13_ = int(_loc13_ + 629145600);
               _loc5_ = int(_loc6_ - 80);
               si32(_loc13_,_loc5_ | 4);
               _loc15_ = int(_loc15_ + 629145600);
               _loc5_ = int(_loc6_ - 64);
               si32(_loc15_,_loc5_ | 4);
               sf64(_loc8_,_loc6_ - 72);
               sf64(_loc17_,_loc6_ - 56);
               _loc5_ = li32(_loc6_ - 72);
               si32(_loc5_,_loc6_ - 80);
               _loc5_ = li32(_loc6_ - 56);
               si32(_loc5_,_loc6_ - 64);
               _loc11_ = int(_loc11_ + -600);
               _loc8_ = lf64(_loc6_ - 80);
               _loc17_ = lf64(_loc6_ - 64);
            }
         }
         _loc7_ = Number(_loc17_ - _loc8_);
         if(!(_loc7_ <= _loc8_ | _loc7_ != _loc7_ | _loc8_ != _loc8_))
         {
            _loc5_ = int(_loc6_ - 112);
            si32(_loc15_,_loc5_ | 4);
            si32(0,_loc6_ - 112);
            var _loc14_:* = lf64(_loc6_ - 112);
            _loc14_ = Number(_loc14_ * _loc14_);
            _loc4_ = int(_loc4_ - 16);
            sf64(Number(_loc14_ - (Number(_loc8_ * -_loc8_ - (_loc17_ + _loc14_) * (_loc17_ - _loc14_)))),_loc4_);
            ESP = _loc4_;
            F_sqrt();
            _loc4_ = int(_loc4_ + 16);
            _loc12_ = Number(st0);
         }
         else
         {
            _loc9_ = int(_loc6_ - 104);
            si32(int(_loc15_ + 1048576),_loc9_ | 4);
            _loc5_ = int(_loc6_ - 96);
            si32(_loc13_,_loc5_ | 4);
            si32(0,_loc6_ - 104);
            si32(0,_loc6_ - 96);
            _loc14_ = lf64(_loc6_ - 104);
            var _loc1_:* = lf64(_loc6_ - 96);
            _loc14_ = Number(_loc14_ * _loc1_);
            _loc4_ = int(_loc4_ - 16);
            sf64(Number(_loc14_ - (Number(Number(_loc7_ * -_loc7_) - (Number(Number(_loc14_ * (_loc8_ - _loc1_)) + Number((_loc17_ + _loc17_ - _loc14_) * _loc8_)))))),_loc4_);
            ESP = _loc4_;
            F_sqrt();
            _loc4_ = int(_loc4_ + 16);
            _loc12_ = Number(st0);
         }
         if(_loc11_ != 0)
         {
            _loc5_ = int(_loc6_ - 120);
            _loc9_ = _loc11_ << 20;
            _loc9_ = int(_loc9_ + 1072693248);
            si32(_loc9_,_loc5_ | 4);
            si32(0,_loc6_ - 120);
            _loc14_ = lf64(_loc6_ - 120);
            _loc12_ = Number(_loc14_ * _loc12_);
         }
      }
      st0 = _loc12_;
      _loc4_ = _loc6_;
      ESP = _loc4_;
   }
}
