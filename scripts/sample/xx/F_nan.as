package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sxi8;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   import avm2.intrinsics.memory.lf64;
   
   public function F_nan() : void
   {
      var _loc4_:* = 0;
      var _loc14_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc3_:* = 0;
      var _loc15_:* = 0;
      var _loc5_:int = 0;
      var _loc8_:int = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 8);
      _loc3_ = int(_loc4_ - 8);
      _loc15_ = _loc3_ | 4;
      si32(0,_loc15_);
      si32(0,_loc4_ - 8);
      _loc14_ = li32(_loc4_);
      var _loc13_:* = li8(_loc14_);
      if(_loc13_ == 48)
      {
         _loc13_ = li8(_loc14_ + 1);
         _loc13_ = _loc13_ | 32;
         _loc13_ = _loc13_ & 255;
         if(_loc13_ == 120)
         {
            _loc14_ = int(_loc14_ + 2);
         }
      }
      _loc14_ = int(_loc14_ + -1);
      _loc12_ = 15;
      _loc11_ = -1;
      while(true)
      {
         _loc9_ = si8(li8(_loc14_ + 1));
         if(_loc9_ >= 0)
         {
            _loc13_ = int(__DefaultRuneLocale + (_loc9_ << 2));
            _loc13_ = li8(_loc13_ + 54);
            _loc13_ = _loc13_ & 1;
            if(_loc13_ == 0)
            {
               break;
            }
            _loc14_ = int(_loc14_ + 1);
            _loc11_ = int(_loc11_ + 1);
            _loc12_ = int(_loc12_ + 1);
            continue;
         }
         break;
      }
      if(_loc11_ <= -1)
      {
         _loc3_ = 2146959360;
      }
      else
      {
         if(uint(_loc11_) <= 15)
         {
            _loc11_ = 15;
         }
         _loc8_ = _loc12_ - _loc11_;
         _loc7_ = li32(__CurrentRuneLocale);
         _loc1_ = li32(___mb_sb_limit);
         _loc9_ = 0;
         do
         {
            _loc13_ = _loc9_ >> 31;
            _loc13_ = int(_loc13_ >>> 27);
            _loc13_ = int(_loc9_ + _loc13_);
            _loc13_ = _loc13_ >> 5;
            _loc13_ = _loc13_ << 2;
            _loc5_ = _loc3_ + _loc13_;
            _loc12_ = li32(_loc5_);
            _loc11_ = si8(li8(_loc14_));
            _loc6_ = 0;
            if(_loc11_ >= 0)
            {
               _loc6_ = 0;
               if(_loc1_ > _loc11_)
               {
                  _loc13_ = int(_loc7_ + (_loc11_ << 2));
                  _loc6_ = li8(_loc13_ + 52);
               }
            }
            _loc13_ = _loc9_ & 28;
            _loc13_ = _loc6_ << _loc13_;
            _loc13_ = _loc13_ | _loc12_;
            si32(_loc13_,_loc5_);
            _loc14_ = int(_loc14_ + -1);
            _loc9_ = int(_loc9_ + 4);
            _loc8_ = _loc8_ + -1;
         }
         while(_loc8_ != 0);
         
         _loc13_ = li32(_loc15_);
         _loc3_ = _loc13_ | 2146959360;
      }
      si32(_loc3_,_loc15_);
      var _loc10_:* = lf64(_loc4_ - 8);
      st0 = _loc10_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
