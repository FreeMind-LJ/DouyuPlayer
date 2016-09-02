package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.LCPI291_1;
   import avm2.intrinsics.memory.lf64;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.LCPI291_0;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sf64;
   
   public function F_sinf() : void
   {
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc13_:* = 0;
      var _loc12_:* = NaN;
      var _loc1_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc5_ = _loc3_;
      _loc3_ = int(_loc3_ - 32);
      _loc1_ = lf32(_loc5_);
      sf32(_loc1_,_loc5_ - 20);
      _loc4_ = li32(_loc5_ - 20);
      _loc13_ = _loc4_ & 2147483647;
      if(uint(_loc13_) <= 1061752794)
      {
         if(uint(_loc13_) <= 964689919)
         {
            var _loc11_:int = _loc1_;
            if(_loc11_ != 0)
            {
            }
         }
         var _loc7_:* = _loc1_;
         var _loc6_:Number = _loc7_ * _loc7_;
         var _loc10_:* = Number(_loc6_ * _loc7_);
         var _loc8_:Number = _loc6_ * _loc6_;
         _loc8_ = _loc10_ * _loc8_;
         var _loc14_:Number = _loc6_ * 2.71831149398982e-6;
         _loc14_ = _loc14_ + -0.000198393348360966;
         _loc8_ = _loc8_ * _loc14_;
         _loc6_ = _loc6_ * 0.00833332938588946;
         _loc6_ = _loc6_ + -0.166666666416265;
         _loc10_ = Number(_loc6_ * _loc10_);
         _loc7_ = Number(_loc10_ + _loc7_);
         _loc7_ = Number(_loc7_ + _loc8_);
         _loc1_ = _loc7_;
      }
      else if(uint(_loc13_) <= 1081824209)
      {
         if(uint(_loc13_) <= 1075235811)
         {
            _loc12_ = _loc1_;
            if(_loc4_ >= 1)
            {
               _loc7_ = Number(_loc12_ + -1.5707963267949);
               _loc10_ = Number(_loc7_ * _loc7_);
               _loc8_ = _loc10_ * _loc10_;
               _loc6_ = _loc10_ * 0.0000243904487962774;
               _loc10_ = Number(_loc10_ * -0.499999997251031);
               _loc10_ = Number(_loc10_ + 1);
               _loc10_ = Number(_loc10_ + Number(_loc8_ * 0.0416666233237391));
               _loc7_ = Number(_loc10_ + Number(_loc8_ * _loc10_ * (_loc6_ + -0.00138867637746099)));
               _loc1_ = _loc7_;
            }
            else
            {
               _loc7_ = Number(_loc12_ + 1.5707963267949);
               _loc7_ = Number(_loc7_ * _loc7_);
               _loc8_ = _loc7_ * _loc7_;
               _loc6_ = _loc7_ * 0.0000243904487962774;
               _loc7_ = Number(_loc7_ * -0.499999997251031);
               _loc7_ = Number(_loc7_ + 1);
               _loc7_ = Number(_loc7_ + Number(_loc8_ * 0.0416666233237391));
               _loc7_ = Number(_loc7_ + Number(_loc8_ * _loc7_ * (_loc6_ + -0.00138867637746099)));
               _loc7_ = _loc7_;
               _loc7_ = Number(-_loc7_);
               _loc1_ = _loc7_;
            }
         }
         else
         {
            _loc13_ = 1;
            if(_loc4_ <= 0)
            {
               _loc13_ = 0;
            }
            _loc4_ = 8;
            if(_loc13_ == 0)
            {
               _loc4_ = 0;
            }
            _loc11_ = LCPI291_1 + _loc4_;
            _loc10_ = lf64(_loc11_);
            _loc7_ = _loc1_;
            _loc7_ = Number(_loc10_ - _loc7_);
            _loc6_ = _loc7_ * _loc7_;
            _loc10_ = Number(_loc6_ * _loc7_);
            _loc8_ = _loc6_ * _loc6_;
            _loc8_ = _loc10_ * _loc8_;
            _loc14_ = _loc6_ * 2.71831149398982e-6;
            _loc14_ = _loc14_ + -0.000198393348360966;
            _loc8_ = _loc8_ * _loc14_;
            _loc6_ = _loc6_ * 0.00833332938588946;
            _loc6_ = _loc6_ + -0.166666666416265;
            _loc10_ = Number(_loc6_ * _loc10_);
            _loc7_ = Number(_loc10_ + _loc7_);
            _loc7_ = Number(_loc7_ + _loc8_);
            _loc1_ = _loc7_;
         }
      }
      else if(uint(_loc13_) <= 1088565717)
      {
         if(uint(_loc13_) <= 1085271519)
         {
            _loc12_ = _loc1_;
            if(_loc4_ >= 1)
            {
               _loc7_ = Number(_loc12_ + -4.71238898038469);
               _loc7_ = Number(_loc7_ * _loc7_);
               _loc8_ = _loc7_ * _loc7_;
               _loc6_ = _loc7_ * 0.0000243904487962774;
               _loc7_ = Number(_loc7_ * -0.499999997251031);
               _loc7_ = Number(_loc7_ + 1);
               _loc7_ = Number(_loc7_ + Number(_loc8_ * 0.0416666233237391));
               _loc7_ = Number(_loc7_ + Number(_loc8_ * _loc7_ * (_loc6_ + -0.00138867637746099)));
               _loc7_ = _loc7_;
               _loc7_ = Number(-_loc7_);
               _loc1_ = _loc7_;
            }
            else
            {
               _loc7_ = Number(_loc12_ + 4.71238898038469);
               _loc10_ = Number(_loc7_ * _loc7_);
               _loc8_ = _loc10_ * _loc10_;
               _loc6_ = _loc10_ * 0.0000243904487962774;
               _loc10_ = Number(_loc10_ * -0.499999997251031);
               _loc10_ = Number(_loc10_ + 1);
               _loc10_ = Number(_loc10_ + Number(_loc8_ * 0.0416666233237391));
               _loc7_ = Number(_loc10_ + Number(_loc8_ * _loc10_ * (_loc6_ + -0.00138867637746099)));
               _loc1_ = _loc7_;
            }
         }
         else
         {
            _loc13_ = 1;
            if(_loc4_ <= 0)
            {
               _loc13_ = 0;
            }
            _loc4_ = 8;
            if(_loc13_ == 0)
            {
               _loc4_ = 0;
            }
            _loc11_ = LCPI291_0 + _loc4_;
            _loc7_ = lf64(_loc11_);
            _loc10_ = _loc1_;
            _loc7_ = Number(_loc10_ + _loc7_);
            _loc8_ = _loc7_ * _loc7_;
            _loc10_ = Number(_loc8_ * _loc7_);
            _loc6_ = _loc8_ * _loc8_;
            _loc6_ = _loc10_ * _loc6_;
            _loc14_ = _loc8_ * 2.71831149398982e-6;
            _loc14_ = _loc14_ + -0.000198393348360966;
            _loc6_ = _loc6_ * _loc14_;
            _loc8_ = _loc8_ * 0.00833332938588946;
            _loc8_ = _loc8_ + -0.166666666416265;
            _loc10_ = Number(_loc8_ * _loc10_);
            _loc7_ = Number(_loc10_ + _loc7_);
            _loc7_ = Number(_loc7_ + _loc6_);
            _loc1_ = _loc7_;
         }
      }
      else if(uint(_loc13_) >= 2139095040)
      {
         _loc7_ = _loc1_;
         _loc7_ = Number(_loc7_ - _loc7_);
         _loc1_ = _loc7_;
      }
      else
      {
         if(uint(_loc13_) <= 1305022426)
         {
            _loc10_ = _loc1_;
            _loc7_ = Number(_loc10_ * 0.636619772367581);
            _loc7_ = Number(_loc7_ + 6755399441055740);
            _loc7_ = Number(_loc7_ + -6755399441055740);
            _loc12_ = Number(Number(_loc10_ + Number(_loc7_ * -1.57079631090164)) + Number(_loc7_ * -1.58932547735282e-8));
            _loc13_ = int(_loc7_);
         }
         else
         {
            _loc11_ = _loc13_ >>> 23;
            _loc11_ = _loc11_ + -150;
            var _loc9_:int = _loc13_ - (_loc11_ << 23);
            si32(_loc9_,_loc5_ - 24);
            _loc10_ = lf32(_loc5_ - 24);
            sf64(_loc10_,_loc5_ - 8);
            _loc3_ = int(_loc3_ - 32);
            si32(0,_loc3_ + 16);
            si32(1,_loc3_ + 12);
            si32(_loc11_,_loc3_ + 8);
            _loc11_ = _loc5_ - 16;
            si32(_loc11_,_loc3_ + 4);
            _loc11_ = _loc5_ - 8;
            si32(_loc11_,_loc3_);
            ESP = _loc3_;
            F___kernel_rem_pio2();
            _loc3_ = int(_loc3_ + 32);
            _loc13_ = int(eax);
            _loc12_ = lf64(_loc5_ - 16);
            if(_loc4_ <= -1)
            {
               _loc13_ = int(0 - _loc13_);
               _loc12_ = Number(-_loc12_);
            }
         }
         _loc4_ = _loc13_ & 3;
         if(_loc4_ != 2)
         {
            if(_loc4_ != 1)
            {
               if(_loc4_ == 0)
               {
                  _loc10_ = Number(_loc12_ * _loc12_);
                  _loc7_ = Number(_loc10_ * _loc12_);
                  _loc6_ = _loc10_ * 2.71831149398982e-6;
                  _loc10_ = Number(_loc10_ * 0.00833332938588946);
                  _loc10_ = Number(_loc10_ + -0.166666666416265);
                  _loc7_ = Number(_loc10_ * _loc7_);
                  _loc7_ = Number(_loc7_ + _loc12_);
                  _loc7_ = Number(_loc7_ + Number(_loc7_ * (_loc10_ * _loc10_) * (_loc6_ + -0.000198393348360966)));
                  _loc1_ = _loc7_;
               }
               else
               {
                  _loc7_ = Number(_loc12_ * _loc12_);
                  _loc8_ = _loc7_ * _loc7_;
                  _loc6_ = _loc7_ * 0.0000243904487962774;
                  _loc7_ = Number(_loc7_ * -0.499999997251031);
                  _loc7_ = Number(_loc7_ + 1);
                  _loc7_ = Number(_loc7_ + Number(_loc8_ * 0.0416666233237391));
                  _loc7_ = Number(_loc7_ + Number(_loc8_ * _loc7_ * (_loc6_ + -0.00138867637746099)));
                  _loc7_ = _loc7_;
                  _loc7_ = Number(-_loc7_);
                  _loc1_ = _loc7_;
               }
            }
            else
            {
               _loc7_ = Number(_loc12_ * _loc12_);
               _loc8_ = _loc7_ * _loc7_;
               _loc6_ = _loc7_ * 0.0000243904487962774;
               _loc7_ = Number(_loc7_ * -0.499999997251031);
               _loc7_ = Number(_loc7_ + 1);
               _loc7_ = Number(_loc7_ + Number(_loc8_ * 0.0416666233237391));
               _loc7_ = Number(_loc7_ + Number(_loc8_ * _loc7_ * (_loc6_ + -0.00138867637746099)));
               _loc1_ = _loc7_;
            }
         }
         else
         {
            _loc10_ = Number(_loc12_ * _loc12_);
            _loc7_ = Number(_loc10_ * -_loc12_);
            _loc6_ = _loc10_ * 2.71831149398982e-6;
            _loc10_ = Number(_loc10_ * 0.00833332938588946);
            _loc10_ = Number(_loc10_ + -0.166666666416265);
            _loc7_ = Number(_loc10_ * _loc7_);
            _loc7_ = Number(_loc7_ - _loc12_);
            _loc7_ = Number(_loc7_ + Number(_loc7_ * (_loc10_ * _loc10_) * (_loc6_ + -0.000198393348360966)));
            _loc1_ = _loc7_;
         }
      }
      st0 = _loc1_;
      _loc3_ = _loc5_;
      ESP = _loc3_;
   }
}
