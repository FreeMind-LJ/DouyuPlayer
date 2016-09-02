package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sxi8;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   import avm2.intrinsics.memory.lf32;
   
   public function F_nanf() : void
   {
      var _loc5_:* = 0;
      var _loc11_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:int = 0;
      var _loc4_:* = 0;
      var _loc12_:int = 0;
      var _loc13_:* = 0;
      var _loc8_:int = 0;
      var _loc1_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc5_ = _loc3_;
      _loc3_ = int(_loc3_ - 16);
      si32(0,_loc5_ - 8);
      _loc4_ = li32(_loc5_);
      var _loc14_:* = li8(_loc4_);
      if(_loc14_ == 48)
      {
         _loc14_ = li8(_loc4_ + 1);
         _loc14_ = _loc14_ | 32;
         _loc14_ = _loc14_ & 255;
         if(_loc14_ == 120)
         {
            _loc4_ = int(_loc4_ + 2);
         }
      }
      _loc4_ = int(_loc4_ + -1);
      _loc13_ = 7;
      _loc12_ = -1;
      while(true)
      {
         _loc11_ = si8(li8(_loc4_ + 1));
         if(_loc11_ >= 0)
         {
            _loc14_ = int(__DefaultRuneLocale + (_loc11_ << 2));
            _loc14_ = li8(_loc14_ + 54);
            _loc14_ = _loc14_ & 1;
            if(_loc14_ == 0)
            {
               break;
            }
            _loc4_ = int(_loc4_ + 1);
            _loc12_ = _loc12_ + 1;
            _loc13_ = int(_loc13_ + 1);
            continue;
         }
         break;
      }
      _loc1_ = Number(nan);
      if(_loc12_ >= 0)
      {
         if(uint(_loc12_) <= 7)
         {
            _loc12_ = 7;
         }
         _loc12_ = _loc13_ - _loc12_;
         _loc10_ = li32(__CurrentRuneLocale);
         _loc9_ = li32(___mb_sb_limit);
         _loc8_ = 0;
         do
         {
            _loc14_ = _loc8_ >> 31;
            _loc14_ = int(_loc14_ >>> 27);
            _loc14_ = int(_loc8_ + _loc14_);
            _loc14_ = _loc14_ >> 5;
            var _loc7_:* = _loc14_ << 2;
            _loc14_ = int(_loc5_ - 8);
            _loc2_ = _loc14_ + _loc7_;
            _loc6_ = li32(_loc2_);
            _loc11_ = si8(li8(_loc4_));
            _loc13_ = 0;
            if(_loc11_ >= 0)
            {
               _loc13_ = 0;
               if(_loc9_ > _loc11_)
               {
                  _loc14_ = int(_loc10_ + (_loc11_ << 2));
                  _loc13_ = li8(_loc14_ + 52);
               }
            }
            _loc14_ = _loc13_ << _loc8_;
            _loc14_ = _loc14_ | _loc6_;
            si32(_loc14_,_loc2_);
            _loc4_ = int(_loc4_ + -1);
            _loc8_ = _loc8_ + 4;
            _loc12_ = _loc12_ + -1;
         }
         while(_loc12_ != 0);
         
         _loc14_ = li32(_loc5_ - 8);
         _loc14_ = _loc14_ | 2143289344;
         si32(_loc14_,_loc5_ - 12);
         _loc1_ = lf32(_loc5_ - 12);
      }
      st0 = _loc1_;
      _loc3_ = _loc5_;
      ESP = _loc3_;
   }
}
