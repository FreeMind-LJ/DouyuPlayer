package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._twom100060;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._tbl;
   import avm2.intrinsics.memory.si32;
   
   public function F_exp2() : void
   {
      var _loc5_:* = 0;
      var _loc7_:* = NaN;
      var _loc15_:* = 0;
      var _loc14_:* = 0;
      var _loc1_:* = NaN;
      var _loc13_:Number = NaN;
      var _loc2_:* = NaN;
      var _loc6_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc5_ = _loc3_;
      _loc3_ = int(_loc3_ - 32);
      _loc7_ = lf64(_loc5_);
      sf64(_loc7_,_loc5_ - 8);
      var _loc4_:* = int(_loc5_ - 8);
      _loc4_ = _loc4_ | 4;
      _loc15_ = li32(_loc4_);
      _loc14_ = _loc15_ & 2147483647;
      if(uint(_loc14_) >= 1083179008)
      {
         if(uint(_loc14_) >= 2146435072)
         {
            var _loc11_:* = _loc15_ & 1048575;
            _loc4_ = _loc11_ | li32(_loc5_ - 8);
            if(_loc4_ == 0)
            {
               _loc6_ = 0;
               if(_loc15_ >= 0)
               {
               }
            }
            _loc6_ = Number(_loc7_ + _loc7_);
         }
         else
         {
            _loc6_ = Number(inf);
            if(_loc7_ < 1024)
            {
               if(!(_loc7_ > -1075 | _loc7_ != _loc7_ | false))
               {
                  _loc6_ = Number(lf64(_twom100060) * lf64(_twom100060));
               }
            }
         }
         addr356:
         st0 = _loc6_;
         _loc3_ = _loc5_;
         ESP = _loc3_;
         return;
      }
      if(uint(_loc14_) <= 1016070143)
      {
         _loc6_ = Number(_loc7_ + 1);
      }
      §§goto(addr356);
      var _loc12_:Number = _loc7_ + 26388279066624;
      sf64(_loc12_,_loc5_ - 16);
      _loc12_ = _loc12_ + -26388279066624;
      var _loc9_:Number = _loc7_ - _loc12_;
      _loc4_ = li32(_loc5_ - 16);
      _loc4_ = int(_loc4_ + 128);
      var _loc10_:* = _loc4_ << 1;
      _loc10_ = _loc10_ & 510;
      var _loc8_:* = _loc10_ | 1;
      _loc8_ = _loc8_ << 3;
      _loc8_ = int(_tbl + _loc8_);
      var _loc16_:* = lf64(_loc8_);
      _loc13_ = _loc9_ - _loc16_;
      _loc11_ = _loc10_ << 3;
      _loc11_ = int(_tbl + _loc11_);
      _loc1_ = lf64(_loc11_);
      _loc4_ = _loc4_ << 12;
      _loc14_ = _loc4_ & -1048576;
      if(_loc14_ >= -1070596096)
      {
         _loc11_ = int(_loc5_ - 32);
         si32(int(_loc14_ + 1072693248),_loc11_ | 4);
         si32(0,_loc5_ - 32);
         _loc2_ = lf64(_loc5_ - 32);
      }
      else
      {
         _loc11_ = int(_loc5_ - 24);
         si32(int(_loc14_ + 2121269248),_loc11_ | 4);
         si32(0,_loc5_ - 24);
         _loc7_ = lf64(_loc5_ - 24);
      }
      _loc12_ = _loc1_ * _loc13_;
      _loc9_ = _loc13_ * 0.00133335591646302;
      _loc9_ = _loc9_ + 0.00961812984212607;
      _loc9_ = _loc9_ * _loc13_;
      _loc9_ = _loc9_ + 0.0555041086648214;
      _loc9_ = _loc9_ * _loc13_;
      _loc9_ = _loc9_ + 0.2402265069591;
      _loc9_ = _loc9_ * _loc13_;
      _loc9_ = _loc9_ + 0.693147180559945;
      _loc12_ = _loc12_ * _loc9_;
      _loc13_ = _loc12_ + _loc1_;
      if(_loc14_ >= -1070596096)
      {
         if(_loc14_ == 1073741824)
         {
            _loc12_ = _loc13_ + _loc13_;
            _loc6_ = Number(_loc12_ * 8.98846567431158e307);
         }
         else
         {
            _loc6_ = Number(_loc13_ * _loc2_);
         }
      }
      else
      {
         _loc6_ = Number(_loc13_ * _loc7_ * lf64(_twom100060));
      }
      §§goto(addr356);
   }
}
