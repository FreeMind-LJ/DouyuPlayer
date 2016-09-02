package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.LCPI185_1;
   import avm2.intrinsics.memory.lf64;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.LCPI185_0;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sf64;
   
   public function F_cosf() : void
   {
      var _loc6_:* = 0;
      var _loc1_:* = NaN;
      var _loc5_:* = 0;
      var _loc14_:* = 0;
      var _loc15_:* = NaN;
      var _loc3_:* = NaN;
      var _loc4_:* = int(ESP);
      _loc6_ = _loc4_;
      _loc4_ = int(_loc4_ - 32);
      _loc1_ = lf32(_loc6_);
      sf32(_loc1_,_loc6_ - 20);
      _loc5_ = li32(_loc6_ - 20);
      _loc14_ = _loc5_ & 2147483647;
      if(uint(_loc14_) <= 1061752794)
      {
         if(uint(_loc14_) <= 964689919)
         {
            _loc3_ = 1;
            if(int(_loc1_) != 0)
            {
            }
         }
         var _loc8_:* = _loc1_;
         _loc8_ = Number(_loc8_ * _loc8_);
         var _loc7_:Number = _loc8_ * _loc8_;
         var _loc11_:* = Number(_loc7_ * _loc8_);
         var _loc9_:Number = _loc8_ * 0.0000243904487962774;
         _loc9_ = _loc9_ + -0.00138867637746099;
         _loc11_ = Number(_loc11_ * _loc9_);
         _loc7_ = _loc7_ * 0.0416666233237391;
         _loc8_ = Number(_loc8_ * -0.499999997251031);
         _loc8_ = Number(_loc8_ + 1);
         _loc8_ = Number(_loc8_ + _loc7_);
         _loc8_ = Number(_loc8_ + _loc11_);
         _loc3_ = _loc8_;
      }
      else if(uint(_loc14_) <= 1081824209)
      {
         if(uint(_loc14_) >= 1075235812)
         {
            _loc14_ = 1;
            if(_loc5_ <= 0)
            {
               _loc14_ = 0;
            }
            _loc5_ = 8;
            if(_loc14_ == 0)
            {
               _loc5_ = 0;
            }
            var _loc13_:int = LCPI185_1 + _loc5_;
            _loc8_ = lf64(_loc13_);
            _loc11_ = _loc1_;
            _loc8_ = Number(_loc11_ + _loc8_);
            _loc11_ = Number(_loc8_ * _loc8_);
            _loc7_ = _loc11_ * _loc11_;
            _loc8_ = Number(_loc7_ * _loc11_);
            _loc9_ = _loc11_ * 0.0000243904487962774;
            _loc9_ = _loc9_ + -0.00138867637746099;
            _loc8_ = Number(_loc8_ * _loc9_);
            _loc7_ = _loc7_ * 0.0416666233237391;
            _loc11_ = Number(_loc11_ * -0.499999997251031);
            _loc11_ = Number(_loc11_ + 1);
            _loc11_ = Number(_loc11_ + _loc7_);
            _loc8_ = Number(_loc11_ + _loc8_);
            var _loc2_:* = _loc8_;
            _loc8_ = _loc2_;
            _loc8_ = Number(-_loc8_);
            _loc3_ = _loc8_;
         }
         else
         {
            _loc15_ = _loc1_;
            if(_loc5_ >= 1)
            {
               _loc8_ = Number(1.5707963267949 - _loc15_);
               _loc7_ = _loc8_ * _loc8_;
               _loc11_ = Number(_loc7_ * _loc8_);
               var _loc12_:Number = _loc7_ * 2.71831149398982e-6;
               _loc7_ = _loc7_ * 0.00833332938588946;
               _loc7_ = _loc7_ + -0.166666666416265;
               _loc11_ = Number(_loc7_ * _loc11_);
               _loc8_ = Number(_loc11_ + _loc8_);
               _loc8_ = Number(_loc8_ + Number(_loc11_ * (_loc7_ * _loc7_) * (_loc12_ + -0.000198393348360966)));
               _loc3_ = _loc8_;
            }
            else
            {
               _loc8_ = Number(_loc15_ + 1.5707963267949);
               _loc7_ = _loc8_ * _loc8_;
               _loc11_ = Number(_loc7_ * _loc8_);
               _loc12_ = _loc7_ * 2.71831149398982e-6;
               _loc7_ = _loc7_ * 0.00833332938588946;
               _loc7_ = _loc7_ + -0.166666666416265;
               _loc11_ = Number(_loc7_ * _loc11_);
               _loc8_ = Number(_loc11_ + _loc8_);
               _loc8_ = Number(_loc8_ + Number(_loc11_ * (_loc7_ * _loc7_) * (_loc12_ + -0.000198393348360966)));
               _loc3_ = _loc8_;
            }
         }
      }
      else if(uint(_loc14_) <= 1088565717)
      {
         if(uint(_loc14_) >= 1085271520)
         {
            _loc14_ = 1;
            if(_loc5_ <= 0)
            {
               _loc14_ = 0;
            }
            _loc5_ = 8;
            if(_loc14_ == 0)
            {
               _loc5_ = 0;
            }
            _loc13_ = LCPI185_0 + _loc5_;
            _loc8_ = lf64(_loc13_);
            _loc11_ = _loc1_;
            _loc8_ = Number(_loc11_ + _loc8_);
            _loc11_ = Number(_loc8_ * _loc8_);
            _loc7_ = _loc11_ * _loc11_;
            _loc8_ = Number(_loc7_ * _loc11_);
            _loc9_ = _loc11_ * 0.0000243904487962774;
            _loc9_ = _loc9_ + -0.00138867637746099;
            _loc8_ = Number(_loc8_ * _loc9_);
            _loc7_ = _loc7_ * 0.0416666233237391;
            _loc11_ = Number(_loc11_ * -0.499999997251031);
            _loc11_ = Number(_loc11_ + 1);
            _loc11_ = Number(_loc11_ + _loc7_);
            _loc8_ = Number(_loc11_ + _loc8_);
            _loc3_ = _loc8_;
         }
         else
         {
            _loc15_ = _loc1_;
            if(_loc5_ >= 1)
            {
               _loc8_ = Number(_loc15_ + -4.71238898038469);
               _loc7_ = _loc8_ * _loc8_;
               _loc11_ = Number(_loc7_ * _loc8_);
               _loc12_ = _loc7_ * 2.71831149398982e-6;
               _loc7_ = _loc7_ * 0.00833332938588946;
               _loc7_ = _loc7_ + -0.166666666416265;
               _loc11_ = Number(_loc7_ * _loc11_);
               _loc8_ = Number(_loc11_ + _loc8_);
               _loc8_ = Number(_loc8_ + Number(_loc11_ * (_loc7_ * _loc7_) * (_loc12_ + -0.000198393348360966)));
               _loc3_ = _loc8_;
            }
            else
            {
               _loc8_ = Number(-4.71238898038469 - _loc15_);
               _loc7_ = _loc8_ * _loc8_;
               _loc11_ = Number(_loc7_ * _loc8_);
               _loc12_ = _loc7_ * 2.71831149398982e-6;
               _loc7_ = _loc7_ * 0.00833332938588946;
               _loc7_ = _loc7_ + -0.166666666416265;
               _loc11_ = Number(_loc7_ * _loc11_);
               _loc8_ = Number(_loc11_ + _loc8_);
               _loc8_ = Number(_loc8_ + Number(_loc11_ * (_loc7_ * _loc7_) * (_loc12_ + -0.000198393348360966)));
               _loc3_ = _loc8_;
            }
         }
      }
      else if(uint(_loc14_) >= 2139095040)
      {
         _loc8_ = _loc1_;
         _loc8_ = Number(_loc8_ - _loc8_);
         _loc3_ = _loc8_;
      }
      else
      {
         if(uint(_loc14_) <= 1305022426)
         {
            _loc8_ = _loc1_;
            _loc11_ = Number(_loc8_ * 0.636619772367581);
            _loc11_ = Number(_loc11_ + 6755399441055740);
            _loc11_ = Number(_loc11_ + -6755399441055740);
            _loc15_ = Number(Number(_loc8_ + Number(_loc11_ * -1.57079631090164)) + Number(_loc11_ * -1.58932547735282e-8));
            _loc14_ = int(_loc11_);
         }
         else
         {
            _loc13_ = _loc14_ >>> 23;
            _loc13_ = _loc13_ + -150;
            var _loc10_:int = _loc14_ - (_loc13_ << 23);
            si32(_loc10_,_loc6_ - 24);
            _loc11_ = lf32(_loc6_ - 24);
            sf64(_loc11_,_loc6_ - 8);
            _loc4_ = int(_loc4_ - 32);
            si32(0,_loc4_ + 16);
            si32(1,_loc4_ + 12);
            si32(_loc13_,_loc4_ + 8);
            _loc13_ = _loc6_ - 16;
            si32(_loc13_,_loc4_ + 4);
            _loc13_ = _loc6_ - 8;
            si32(_loc13_,_loc4_);
            ESP = _loc4_;
            F___kernel_rem_pio2();
            _loc4_ = int(_loc4_ + 32);
            _loc14_ = int(eax);
            _loc15_ = lf64(_loc6_ - 16);
            if(_loc5_ <= -1)
            {
               _loc14_ = int(0 - _loc14_);
               _loc15_ = Number(-_loc15_);
            }
         }
         _loc5_ = _loc14_ & 3;
         if(_loc5_ != 2)
         {
            if(_loc5_ != 1)
            {
               if(_loc5_ == 0)
               {
                  _loc11_ = Number(_loc15_ * _loc15_);
                  _loc7_ = _loc11_ * _loc11_;
                  _loc9_ = _loc11_ * 0.0000243904487962774;
                  _loc11_ = Number(_loc11_ * -0.499999997251031);
                  _loc11_ = Number(_loc11_ + 1);
                  _loc11_ = Number(_loc11_ + Number(_loc7_ * 0.0416666233237391));
                  _loc8_ = Number(_loc11_ + Number(_loc7_ * _loc11_ * (_loc9_ + -0.00138867637746099)));
                  _loc3_ = _loc8_;
               }
               else
               {
                  _loc7_ = _loc15_ * _loc15_;
                  _loc8_ = Number(_loc7_ * _loc15_);
                  _loc9_ = _loc7_ * 2.71831149398982e-6;
                  _loc7_ = _loc7_ * 0.00833332938588946;
                  _loc7_ = _loc7_ + -0.166666666416265;
                  _loc8_ = Number(_loc7_ * _loc8_);
                  _loc8_ = Number(_loc8_ + _loc15_);
                  _loc8_ = Number(_loc8_ + Number(_loc8_ * (_loc7_ * _loc7_) * (_loc9_ + -0.000198393348360966)));
                  _loc3_ = _loc8_;
               }
            }
            else
            {
               _loc11_ = Number(_loc15_ * _loc15_);
               _loc8_ = Number(_loc11_ * -_loc15_);
               _loc9_ = _loc11_ * 2.71831149398982e-6;
               _loc11_ = Number(_loc11_ * 0.00833332938588946);
               _loc11_ = Number(_loc11_ + -0.166666666416265);
               _loc8_ = Number(_loc11_ * _loc8_);
               _loc8_ = Number(_loc8_ - _loc15_);
               _loc8_ = Number(_loc8_ + Number(_loc8_ * (_loc11_ * _loc11_) * (_loc9_ + -0.000198393348360966)));
               _loc3_ = _loc8_;
            }
         }
         else
         {
            _loc8_ = Number(_loc15_ * _loc15_);
            _loc7_ = _loc8_ * _loc8_;
            _loc9_ = _loc8_ * 0.0000243904487962774;
            _loc8_ = Number(_loc8_ * -0.499999997251031);
            _loc8_ = Number(_loc8_ + 1);
            _loc8_ = Number(_loc8_ + Number(_loc7_ * 0.0416666233237391));
            _loc8_ = Number(_loc8_ + Number(_loc7_ * _loc8_ * (_loc9_ + -0.00138867637746099)));
            _loc8_ = _loc8_;
            _loc8_ = Number(-_loc8_);
            _loc3_ = _loc8_;
         }
      }
      st0 = _loc3_;
      _loc4_ = _loc6_;
      ESP = _loc4_;
   }
}
