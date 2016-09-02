package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   
   public function F_csqrt() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc10_:* = 0;
      var _loc12_:* = 0;
      var _loc9_:Number = NaN;
      var _loc2_:* = 0;
      var _loc14_:* = 0;
      var _loc4_:* = NaN;
      var _loc6_:* = NaN;
      var _loc1_:* = int(ESP);
      _loc3_ = _loc1_;
      _loc1_ = int(_loc1_ - 48);
      _loc2_ = int(_loc3_ - 16);
      _loc2_ = _loc2_ | 4;
      _loc14_ = li32(_loc3_ + 16);
      si32(_loc14_,_loc2_);
      _loc2_ = int(_loc3_ - 8);
      _loc2_ = _loc2_ | 4;
      _loc12_ = li32(_loc3_ + 8);
      si32(_loc12_,_loc2_);
      _loc2_ = li32(_loc3_ + 12);
      si32(_loc2_,_loc3_ - 16);
      _loc10_ = li32(_loc3_ + 4);
      si32(_loc10_,_loc3_ - 8);
      _loc8_ = li32(_loc3_);
      _loc6_ = lf64(_loc3_ - 16);
      _loc4_ = lf64(_loc3_ - 8);
      if(!(_loc4_ != 0 | _loc4_ != _loc4_ | false))
      {
         if(!(_loc6_ != 0 | _loc6_ != _loc6_ | false))
         {
            si32(0,_loc8_ + 4);
            si32(0,_loc8_);
            sf64(_loc6_,_loc8_ + 8);
         }
         addr597:
         _loc1_ = _loc3_;
         ESP = _loc1_;
         return;
      }
      _loc1_ = int(_loc1_ - 16);
      sf64(_loc6_,_loc1_);
      ESP = _loc1_;
      F_isinf();
      _loc1_ = int(_loc1_ + 16);
      _loc2_ = int(eax);
      if(_loc2_ != 0)
      {
         si32(2146435072,_loc8_ + 4);
         si32(0,_loc8_);
         sf64(_loc6_,_loc8_ + 8);
      }
      else if(!(_loc4_ == _loc4_ & _loc4_ == _loc4_))
      {
         sf64(_loc4_,_loc8_);
         var _loc11_:Number = _loc6_ - _loc6_;
         _loc11_ = _loc11_ / _loc11_;
         sf64(_loc11_,_loc8_ + 8);
      }
      else
      {
         _loc1_ = int(_loc1_ - 16);
         sf64(_loc4_,_loc1_);
         ESP = _loc1_;
         F_isinf();
         _loc1_ = int(_loc1_ + 16);
         if(int(eax) != 0)
         {
            _loc6_ = Number(_loc6_ - _loc6_);
            if(_loc12_ <= -1)
            {
               _loc11_ = Math.abs(_loc6_);
               sf64(_loc11_,_loc8_);
               si32(_loc10_,_loc8_ + 8);
               var _loc7_:* = _loc14_ & -2147483648;
               si32(_loc7_ | _loc12_ & 2147483647,_loc8_ + 12);
            }
            else
            {
               sf64(_loc4_,_loc8_);
               sf64(_loc6_,_loc3_ - 24);
               si32(li32(_loc3_ - 24),_loc8_ + 8);
               _loc7_ = int(_loc3_ - 24);
               _loc7_ = _loc7_ | 4;
               _loc7_ = li32(_loc7_);
               _loc7_ = _loc7_ & 2147483647;
               si32(_loc7_ | _loc14_ & -2147483648,_loc8_ + 12);
            }
         }
         else
         {
            _loc11_ = Math.abs(_loc4_);
            if(_loc11_ < 7.44628877444977e307)
            {
               _loc11_ = Math.abs(_loc6_);
               _loc14_ = 0;
               if(_loc11_ < 7.44628877444977e307 | _loc11_ != _loc11_ | false)
               {
               }
               addr356:
               _loc1_ = int(_loc1_ - 16);
               sf64(_loc6_,_loc1_ + 8);
               sf64(_loc4_,_loc1_);
               ESP = _loc1_;
               F_hypot();
               _loc1_ = int(_loc1_ + 16);
               _loc9_ = st0;
               if(!(_loc4_ < 0 | _loc4_ != _loc4_ | false))
               {
                  _loc11_ = _loc9_ + _loc4_;
                  _loc1_ = int(_loc1_ - 16);
                  sf64(Number(_loc11_ * 0.5),_loc1_);
                  ESP = _loc1_;
                  F_sqrt();
                  _loc1_ = int(_loc1_ + 16);
                  _loc4_ = Number(st0);
                  _loc6_ = Number(_loc6_ / (Number(_loc4_ + _loc4_)));
               }
               else
               {
                  _loc11_ = _loc9_ - _loc4_;
                  _loc1_ = int(_loc1_ - 16);
                  sf64(Number(_loc11_ * 0.5),_loc1_);
                  ESP = _loc1_;
                  F_sqrt();
                  _loc1_ = int(_loc1_ + 16);
                  _loc11_ = st0;
                  sf64(_loc11_,_loc3_ - 32);
                  sf64(_loc6_,_loc3_ - 40);
                  _loc7_ = int(_loc3_ - 40);
                  _loc7_ = _loc7_ | 4;
                  _loc7_ = li32(_loc7_);
                  var _loc5_:* = int(_loc3_ - 32);
                  _loc5_ = _loc5_ | 4;
                  _loc5_ = li32(_loc5_);
                  _loc5_ = _loc5_ & 2147483647;
                  _loc5_ = int(_loc3_ - 48);
                  si32(_loc5_ | _loc7_ & -2147483648,_loc5_ | 4);
                  _loc7_ = li32(_loc3_ - 32);
                  si32(_loc7_,_loc3_ - 48);
                  _loc4_ = Number(Number(Math.abs(_loc6_)) / (Number(_loc11_ + _loc11_)));
                  _loc6_ = lf64(_loc3_ - 48);
               }
               if(_loc14_ != 0)
               {
                  var _loc13_:Number = _loc4_ + _loc4_;
                  _loc11_ = _loc13_ - _loc6_ * 0;
                  sf64(_loc11_,_loc8_);
                  _loc13_ = _loc4_ * 0;
                  _loc11_ = _loc13_ + (Number(_loc6_ + _loc6_));
                  sf64(_loc11_,_loc8_ + 8);
               }
               else
               {
                  sf64(_loc4_,_loc8_);
                  sf64(_loc6_,_loc8_ + 8);
               }
            }
            _loc6_ = Number(_loc6_ * 0.25);
            _loc4_ = Number(_loc4_ * 0.25);
            _loc14_ = 1;
            §§goto(addr356);
         }
      }
      §§goto(addr597);
   }
}
