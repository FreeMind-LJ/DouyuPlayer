package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.LCPI294_3;
   import avm2.intrinsics.memory.lf64;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.LCPI294_2;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.LCPI294_1;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.LCPI294_0;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sf64;
   
   public function F_tanf() : void
   {
      var _loc7_:* = 0;
      var _loc2_:* = NaN;
      var _loc6_:* = 0;
      var _loc16_:* = 0;
      var _loc3_:* = NaN;
      var _loc12_:int = 0;
      var _loc4_:Number = NaN;
      var _loc1_:* = NaN;
      var _loc5_:* = int(ESP);
      _loc7_ = _loc5_;
      _loc5_ = int(_loc5_ - 32);
      _loc1_ = lf32(_loc7_);
      sf32(_loc1_,_loc7_ - 20);
      _loc6_ = li32(_loc7_ - 20);
      _loc16_ = _loc6_ & 2147483647;
      if(uint(_loc16_) <= 1061752794)
      {
         if(uint(_loc16_) <= 964689919)
         {
            var _loc14_:* = int(_loc1_);
            if(_loc14_ != 0)
            {
            }
         }
         var _loc9_:* = _loc1_;
         var _loc8_:Number = _loc9_ * _loc9_;
         var _loc13_:* = Number(_loc8_ * _loc9_);
         var _loc11_:Number = _loc8_ * _loc8_;
         var _loc17_:Number = _loc13_ * _loc11_;
         var _loc15_:Number = _loc8_ * 0.00946564784943673;
         _loc15_ = _loc15_ + 0.00297435743359967;
         _loc11_ = _loc11_ * _loc15_;
         _loc15_ = _loc8_ * 0.0245283181166547;
         _loc15_ = _loc15_ + 0.053381237844567;
         _loc11_ = _loc11_ + _loc15_;
         _loc17_ = _loc17_ * _loc11_;
         _loc8_ = _loc8_ * 0.133392002712977;
         _loc8_ = _loc8_ + 0.333331395030791;
         _loc13_ = Number(_loc13_ * _loc8_);
         _loc9_ = Number(_loc13_ + _loc9_);
         _loc9_ = Number(_loc9_ + _loc17_);
         _loc1_ = _loc9_;
      }
      else if(uint(_loc16_) <= 1081824209)
      {
         _loc2_ = _loc1_;
         if(uint(_loc16_) <= 1075235811)
         {
            _loc16_ = 1;
            if(_loc6_ <= 0)
            {
               _loc16_ = 0;
            }
            _loc6_ = 8;
            if(_loc16_ == 0)
            {
               _loc6_ = 0;
            }
            _loc14_ = int(LCPI294_3 + _loc6_);
            _loc9_ = lf64(_loc14_);
            _loc9_ = Number(_loc2_ + _loc9_);
            _loc8_ = _loc9_ * _loc9_;
            _loc13_ = Number(_loc8_ * _loc9_);
            _loc11_ = _loc8_ * _loc8_;
            _loc17_ = _loc13_ * _loc11_;
            _loc15_ = _loc8_ * 0.00946564784943673;
            _loc15_ = _loc15_ + 0.00297435743359967;
            _loc11_ = _loc11_ * _loc15_;
            _loc15_ = _loc8_ * 0.0245283181166547;
            _loc15_ = _loc15_ + 0.053381237844567;
            _loc11_ = _loc11_ + _loc15_;
            _loc17_ = _loc17_ * _loc11_;
            _loc8_ = _loc8_ * 0.133392002712977;
            _loc8_ = _loc8_ + 0.333331395030791;
            _loc13_ = Number(_loc13_ * _loc8_);
            _loc9_ = Number(_loc13_ + _loc9_);
            _loc9_ = Number(_loc9_ + _loc17_);
            _loc9_ = Number(-1 / _loc9_);
            _loc1_ = _loc9_;
         }
         else
         {
            _loc16_ = 1;
            if(_loc6_ <= 0)
            {
               _loc16_ = 0;
            }
            _loc6_ = 8;
            if(_loc16_ == 0)
            {
               _loc6_ = 0;
            }
            _loc14_ = int(LCPI294_2 + _loc6_);
            _loc9_ = lf64(_loc14_);
            _loc9_ = Number(_loc2_ + _loc9_);
            _loc8_ = _loc9_ * _loc9_;
            _loc13_ = Number(_loc8_ * _loc9_);
            _loc11_ = _loc8_ * _loc8_;
            _loc17_ = _loc13_ * _loc11_;
            _loc15_ = _loc8_ * 0.00946564784943673;
            _loc15_ = _loc15_ + 0.00297435743359967;
            _loc11_ = _loc11_ * _loc15_;
            _loc15_ = _loc8_ * 0.0245283181166547;
            _loc15_ = _loc15_ + 0.053381237844567;
            _loc11_ = _loc11_ + _loc15_;
            _loc17_ = _loc17_ * _loc11_;
            _loc8_ = _loc8_ * 0.133392002712977;
            _loc8_ = _loc8_ + 0.333331395030791;
            _loc13_ = Number(_loc13_ * _loc8_);
            _loc9_ = Number(_loc13_ + _loc9_);
            _loc9_ = Number(_loc9_ + _loc17_);
            _loc1_ = _loc9_;
         }
      }
      else if(uint(_loc16_) <= 1088565717)
      {
         _loc2_ = _loc1_;
         if(uint(_loc16_) <= 1085271519)
         {
            _loc16_ = 1;
            if(_loc6_ <= 0)
            {
               _loc16_ = 0;
            }
            _loc6_ = 8;
            if(_loc16_ == 0)
            {
               _loc6_ = 0;
            }
            _loc14_ = int(LCPI294_1 + _loc6_);
            _loc9_ = lf64(_loc14_);
            _loc9_ = Number(_loc2_ + _loc9_);
            _loc8_ = _loc9_ * _loc9_;
            _loc13_ = Number(_loc8_ * _loc9_);
            _loc11_ = _loc8_ * _loc8_;
            _loc17_ = _loc13_ * _loc11_;
            _loc15_ = _loc8_ * 0.00946564784943673;
            _loc15_ = _loc15_ + 0.00297435743359967;
            _loc11_ = _loc11_ * _loc15_;
            _loc15_ = _loc8_ * 0.0245283181166547;
            _loc15_ = _loc15_ + 0.053381237844567;
            _loc11_ = _loc11_ + _loc15_;
            _loc17_ = _loc17_ * _loc11_;
            _loc8_ = _loc8_ * 0.133392002712977;
            _loc8_ = _loc8_ + 0.333331395030791;
            _loc13_ = Number(_loc13_ * _loc8_);
            _loc9_ = Number(_loc13_ + _loc9_);
            _loc9_ = Number(_loc9_ + _loc17_);
            _loc9_ = Number(-1 / _loc9_);
            _loc1_ = _loc9_;
         }
         else
         {
            _loc16_ = 1;
            if(_loc6_ <= 0)
            {
               _loc16_ = 0;
            }
            _loc6_ = 8;
            if(_loc16_ == 0)
            {
               _loc6_ = 0;
            }
            _loc14_ = int(LCPI294_0 + _loc6_);
            _loc9_ = lf64(_loc14_);
            _loc9_ = Number(_loc2_ + _loc9_);
            _loc8_ = _loc9_ * _loc9_;
            _loc13_ = Number(_loc8_ * _loc9_);
            _loc11_ = _loc8_ * _loc8_;
            _loc17_ = _loc13_ * _loc11_;
            _loc15_ = _loc8_ * 0.00946564784943673;
            _loc15_ = _loc15_ + 0.00297435743359967;
            _loc11_ = _loc11_ * _loc15_;
            _loc15_ = _loc8_ * 0.0245283181166547;
            _loc15_ = _loc15_ + 0.053381237844567;
            _loc11_ = _loc11_ + _loc15_;
            _loc17_ = _loc17_ * _loc11_;
            _loc8_ = _loc8_ * 0.133392002712977;
            _loc8_ = _loc8_ + 0.333331395030791;
            _loc13_ = Number(_loc13_ * _loc8_);
            _loc9_ = Number(_loc13_ + _loc9_);
            _loc9_ = Number(_loc9_ + _loc17_);
            _loc1_ = _loc9_;
         }
      }
      else if(uint(_loc16_) >= 2139095040)
      {
         _loc9_ = _loc1_;
         _loc9_ = Number(_loc9_ - _loc9_);
         _loc1_ = _loc9_;
      }
      else
      {
         if(uint(_loc16_) <= 1305022426)
         {
            _loc13_ = _loc1_;
            _loc9_ = Number(_loc13_ * 0.636619772367581);
            _loc9_ = Number(_loc9_ + 6755399441055740);
            _loc9_ = Number(_loc9_ + -6755399441055740);
            _loc3_ = Number(Number(_loc13_ + Number(_loc9_ * -1.57079631090164)) + Number(_loc9_ * -1.58932547735282e-8));
            _loc12_ = _loc9_;
         }
         else
         {
            _loc14_ = int(_loc16_ >>> 23);
            _loc14_ = int(_loc14_ + -150);
            var _loc10_:int = _loc16_ - (_loc14_ << 23);
            si32(_loc10_,_loc7_ - 24);
            _loc13_ = lf32(_loc7_ - 24);
            sf64(_loc13_,_loc7_ - 8);
            _loc5_ = int(_loc5_ - 32);
            si32(0,_loc5_ + 16);
            si32(1,_loc5_ + 12);
            si32(_loc14_,_loc5_ + 8);
            _loc14_ = int(_loc7_ - 16);
            si32(_loc14_,_loc5_ + 4);
            _loc14_ = int(_loc7_ - 8);
            si32(_loc14_,_loc5_);
            ESP = _loc5_;
            F___kernel_rem_pio2();
            _loc5_ = int(_loc5_ + 32);
            _loc12_ = eax;
            _loc3_ = lf64(_loc7_ - 16);
            if(_loc6_ <= -1)
            {
               _loc12_ = 0 - _loc12_;
               _loc3_ = Number(-_loc3_);
            }
         }
         _loc13_ = Number(_loc3_ * _loc3_);
         _loc9_ = Number(_loc13_ * _loc3_);
         _loc17_ = _loc13_ * _loc13_;
         _loc8_ = _loc9_ * _loc17_;
         _loc11_ = _loc13_ * 0.00946564784943673;
         _loc11_ = _loc11_ + 0.00297435743359967;
         _loc17_ = _loc17_ * _loc11_;
         _loc11_ = _loc13_ * 0.0245283181166547;
         _loc11_ = _loc11_ + 0.053381237844567;
         _loc17_ = _loc17_ + _loc11_;
         _loc8_ = _loc8_ * _loc17_;
         _loc13_ = Number(_loc13_ * 0.133392002712977);
         _loc13_ = Number(_loc13_ + 0.333331395030791);
         _loc9_ = Number(_loc9_ * _loc13_);
         _loc9_ = Number(_loc9_ + _loc3_);
         _loc4_ = _loc9_ + _loc8_;
         _loc14_ = _loc12_ & 1;
         if(_loc14_ != 0)
         {
            _loc4_ = -1 / _loc4_;
         }
         _loc1_ = _loc4_;
      }
      st0 = _loc1_;
      _loc5_ = _loc7_;
      ESP = _loc5_;
   }
}
