package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._TWO52;
   
   public function F_rint() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc13_:int = 0;
      var _loc11_:* = 0;
      var _loc10_:int = 0;
      var _loc5_:int = 0;
      var _loc2_:* = 0;
      var _loc4_:* = 0;
      var _loc14_:* = 0;
      var _loc8_:* = NaN;
      var _loc1_:* = int(ESP);
      _loc3_ = _loc1_;
      _loc1_ = int(_loc1_ - 40);
      _loc8_ = lf64(_loc3_);
      sf64(_loc8_,_loc3_ - 8);
      _loc2_ = int(_loc3_ - 8);
      _loc2_ = _loc2_ | 4;
      _loc14_ = li32(_loc2_);
      _loc13_ = _loc14_ >>> 31;
      _loc2_ = int(_loc14_ >>> 20);
      _loc11_ = _loc2_ & 2047;
      _loc10_ = _loc11_ + -1023;
      _loc9_ = li32(_loc3_ - 8);
      if(_loc10_ <= 19)
      {
         if(_loc10_ <= -1)
         {
            if((_loc14_ & 2147483647 | _loc9_) != 0)
            {
               var _loc6_:* = int(_loc3_ - 24);
               si32(int((_loc9_ | int(0 - (_loc14_ & 1048575 | _loc9_))) >>> 12) & 524288 | _loc14_ & -131072,_loc6_ | 4);
               si32(_loc9_,_loc3_ - 24);
               var _loc7_:* = lf64(int(_TWO52 + (_loc13_ << 3)));
               var _loc12_:* = Number(_loc7_ + lf64(_loc3_ - 24));
               _loc7_ = Number(_loc12_ - _loc7_);
               sf64(_loc7_,_loc3_ - 32);
               _loc6_ = int(_loc3_ - 32);
               _loc6_ = _loc6_ | 4;
               _loc6_ = li32(_loc6_);
               _loc6_ = _loc6_ & 2147483647;
               _loc6_ = int(_loc3_ - 40);
               si32(_loc6_ | _loc14_ & -2147483648,_loc6_ | 4);
               si32(li32(_loc3_ - 32),_loc3_ - 40);
               _loc8_ = lf64(_loc3_ - 40);
            }
         }
         else
         {
            _loc5_ = 1048575 >>> _loc10_;
            if((_loc5_ & _loc14_ | _loc9_) != 0)
            {
               _loc5_ = _loc5_ >>> 1;
               _loc4_ = _loc9_;
               if((_loc5_ & _loc14_ | _loc9_) != 0)
               {
                  _loc4_ = 1073741824;
                  if(_loc11_ != 1042)
                  {
                     if(_loc11_ == 1041)
                     {
                        _loc4_ = -2147483648;
                     }
                     else
                     {
                        _loc6_ = _loc14_ & (_loc5_ ^ -1);
                        _loc14_ = _loc6_ | int(131072 >>> _loc10_);
                        _loc4_ = _loc9_;
                     }
                  }
               }
               addr323:
               _loc2_ = int(_loc3_ - 16);
               _loc2_ = _loc2_ | 4;
               si32(_loc14_,_loc2_);
               si32(_loc4_,_loc3_ - 16);
               _loc2_ = _loc13_ << 3;
               _loc2_ = int(_TWO52 + _loc2_);
               _loc7_ = lf64(_loc2_);
               _loc12_ = lf64(_loc3_ - 16);
               _loc12_ = Number(_loc7_ + _loc12_);
               _loc8_ = Number(_loc12_ - _loc7_);
            }
         }
      }
      else if(_loc10_ >= 52)
      {
         if(_loc10_ == 1024)
         {
            _loc8_ = Number(_loc8_ + _loc8_);
         }
      }
      else
      {
         _loc10_ = _loc11_ + -1043;
         _loc11_ = int(-1 >>> _loc10_);
         if((_loc11_ & _loc9_) != 0)
         {
            _loc11_ = int(_loc11_ >>> 1);
            _loc4_ = _loc9_;
            if((_loc11_ & _loc9_) != 0)
            {
               _loc6_ = _loc9_ & (_loc11_ ^ -1);
               _loc4_ = _loc6_ | int(1073741824 >>> _loc10_);
            }
            §§goto(addr323);
         }
      }
      st0 = _loc8_;
      _loc1_ = _loc3_;
      ESP = _loc1_;
   }
}
