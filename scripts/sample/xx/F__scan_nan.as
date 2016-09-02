package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sxi8;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   
   public function F__scan_nan() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc13_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:int = 0;
      var _loc11_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      si32(0,_loc2_ + 4);
      _loc3_ = li32(_loc4_);
      si32(_loc3_,_loc2_);
      _loc13_ = li32(_loc4_ + 4);
      var _loc12_:* = _loc13_ << 2;
      si32(_loc12_,_loc2_ + 8);
      ESP = _loc2_;
      Fmemset();
      _loc2_ = int(_loc2_ + 16);
      _loc11_ = li32(_loc4_ + 8);
      _loc12_ = li8(_loc11_);
      if(_loc12_ == 48)
      {
         _loc12_ = li8(_loc11_ + 1);
         _loc12_ = _loc12_ | 32;
         _loc12_ = _loc12_ & 255;
         if(_loc12_ == 120)
         {
            _loc11_ = int(_loc11_ + 2);
         }
      }
      _loc10_ = -2;
      _loc9_ = -1;
      while(true)
      {
         _loc12_ = int(_loc11_ + _loc10_);
         _loc8_ = si8(li8(_loc12_ + 2));
         if(_loc8_ >= 0)
         {
            _loc12_ = int(__DefaultRuneLocale + (_loc8_ << 2));
            _loc12_ = li8(_loc12_ + 54);
            _loc12_ = _loc12_ & 1;
            if(_loc12_ == 0)
            {
               break;
            }
            _loc9_ = int(_loc9_ + 1);
            _loc10_ = int(_loc10_ + 1);
            continue;
         }
         break;
      }
      _loc13_ = _loc13_ << 5;
      if(_loc13_ >= 1)
      {
         _loc8_ = 0;
         if(_loc9_ >= 0)
         {
            while(true)
            {
               _loc9_ = _loc10_;
               _loc12_ = int(_loc11_ + _loc9_);
               _loc7_ = si8(li8(_loc12_ + 1));
               _loc12_ = _loc8_ >> 31;
               _loc12_ = int(_loc12_ >>> 27);
               _loc12_ = int(_loc8_ + _loc12_);
               _loc12_ = _loc12_ >> 5;
               _loc12_ = _loc12_ << 2;
               _loc6_ = _loc3_ + _loc12_;
               _loc10_ = li32(_loc6_);
               _loc1_ = 0;
               if(_loc7_ >= 0)
               {
                  _loc1_ = 0;
                  if(li32(___mb_sb_limit) > _loc7_)
                  {
                     var _loc5_:* = li32(__CurrentRuneLocale);
                     _loc12_ = int(_loc5_ + (_loc7_ << 2));
                     _loc1_ = li8(_loc12_ + 52);
                  }
               }
               _loc7_ = int(_loc8_ + 4);
               _loc12_ = _loc8_ & 28;
               _loc12_ = _loc1_ << _loc12_;
               _loc12_ = _loc12_ | _loc10_;
               si32(_loc12_,_loc6_);
               if(_loc13_ > _loc7_)
               {
                  _loc10_ = int(_loc9_ + -1);
                  _loc8_ = _loc7_;
                  if(_loc9_ <= -1)
                  {
                     break;
                  }
                  continue;
               }
               break;
            }
         }
      }
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
