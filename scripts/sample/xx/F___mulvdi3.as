package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   import avm2.intrinsics.memory.si32;
   
   public function F___mulvdi3() : void
   {
      var _loc4_:* = 0;
      var _loc15_:* = 0;
      var _loc3_:* = 0;
      var _loc13_:* = 0;
      var _loc14_:* = 0;
      var _loc10_:* = 0;
      var _loc6_:* = 0;
      var _loc16_:* = 0;
      var _loc12_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc9_:int = 0;
      var _loc7_:* = 0;
      var _loc11_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_ + 4);
      _loc16_ = _loc3_ ^ -2147483648;
      _loc15_ = li32(_loc4_);
      _loc16_ = _loc15_ | _loc16_;
      _loc14_ = li32(_loc4_ + 12);
      _loc13_ = li32(_loc4_ + 8);
      if(_loc16_ == 0)
      {
         _loc12_ = 1;
         if(uint(_loc13_) >= 2)
         {
            _loc12_ = 0;
         }
         if(_loc14_ != 0)
         {
            _loc12_ = 0;
         }
         if(_loc12_ == 0)
         {
            ESP = _loc2_;
            F_abort();
         }
         addr443:
         _loc2_ = int(_loc2_ - 16);
         si32(_loc15_,_loc2_ + 8);
         si32(_loc13_,_loc2_);
         si32(_loc3_,_loc2_ + 12);
         si32(_loc14_,_loc2_ + 4);
         ESP = _loc2_;
         F___muldi3();
         _loc2_ = int(_loc2_ + 16);
         var _loc8_:int = eax;
         _loc16_ = int(edx);
         eax = _loc8_;
         edx = _loc16_;
         _loc2_ = _loc4_;
         ESP = _loc2_;
         return;
      }
      _loc16_ = _loc14_ ^ -2147483648;
      _loc16_ = _loc13_ | _loc16_;
      if(_loc16_ == 0)
      {
         _loc12_ = 1;
         if(uint(_loc15_) >= 2)
         {
            _loc12_ = 0;
         }
         if(_loc3_ != 0)
         {
            _loc12_ = 0;
         }
         if(_loc12_ == 0)
         {
            ESP = _loc2_;
            F_abort();
         }
         §§goto(addr443);
      }
      _loc11_ = _loc3_ >> 31;
      _loc10_ = _loc11_ ^ _loc15_;
      _loc9_ = 1;
      _loc12_ = _loc9_;
      if(uint(_loc10_) >= uint(_loc11_))
      {
         _loc12_ = 0;
      }
      _loc16_ = _loc11_ ^ _loc3_;
      _loc16_ = int(_loc16_ - _loc11_);
      _loc12_ = int(_loc16_ - _loc12_);
      _loc1_ = _loc9_;
      if(_loc12_ >= 0)
      {
         _loc1_ = 0;
      }
      _loc10_ = int(_loc10_ - _loc11_);
      _loc5_ = _loc9_;
      if(uint(_loc10_) >= 2)
      {
         _loc5_ = 0;
      }
      if(_loc12_ != 0)
      {
         _loc5_ = _loc1_;
      }
      _loc1_ = _loc14_ >> 31;
      _loc6_ = _loc1_ ^ _loc13_;
      if(uint(_loc6_) >= uint(_loc1_))
      {
         _loc9_ = 0;
      }
      if(_loc5_ == 0)
      {
         _loc5_ = int(_loc6_ - _loc1_);
         _loc6_ = 1;
         _loc7_ = _loc6_;
         if(uint(_loc5_) >= 2)
         {
            _loc7_ = 0;
         }
         _loc16_ = _loc1_ ^ _loc14_;
         _loc16_ = int(_loc16_ - _loc1_);
         _loc9_ = _loc16_ - _loc9_;
         if(_loc9_ >= 0)
         {
            _loc6_ = 0;
         }
         if(_loc9_ != 0)
         {
            _loc7_ = _loc6_;
         }
         if(_loc7_ == 0)
         {
            _loc16_ = _loc11_ ^ _loc1_ | _loc11_ ^ _loc1_;
            if(_loc16_ == 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc5_,_loc2_ + 8);
               si32(2147483647,_loc2_ + 4);
               si32(-1,_loc2_);
               si32(_loc9_,_loc2_ + 12);
               ESP = _loc2_;
               F___divdi3();
               _loc1_ = 1;
               _loc2_ = int(_loc2_ + 16);
               _loc11_ = int(eax);
               _loc9_ = edx;
               _loc5_ = _loc1_;
               if(_loc9_ < _loc12_)
               {
                  _loc5_ = 0;
               }
               if(uint(_loc11_) < uint(_loc10_))
               {
                  _loc1_ = 0;
               }
               if(_loc9_ != _loc12_)
               {
                  _loc1_ = _loc5_;
               }
               if(_loc1_ == 0)
               {
                  ESP = _loc2_;
                  F_abort();
               }
            }
            _loc2_ = int(_loc2_ - 16);
            si32(-2147483648,_loc2_ + 4);
            _loc16_ = int(0 - _loc5_);
            si32(_loc16_,_loc2_ + 8);
            si32(0,_loc2_);
            _loc11_ = 1;
            _loc1_ = _loc11_;
            if(_loc5_ == 0)
            {
               _loc1_ = 0;
            }
            _loc16_ = int(0 - _loc9_);
            _loc16_ = int(_loc16_ - _loc1_);
            si32(_loc16_,_loc2_ + 12);
            ESP = _loc2_;
            F___divdi3();
            _loc2_ = int(_loc2_ + 16);
            _loc1_ = int(eax);
            _loc9_ = edx;
            _loc5_ = _loc11_;
            if(_loc9_ < _loc12_)
            {
               _loc5_ = 0;
            }
            if(uint(_loc1_) < uint(_loc10_))
            {
               _loc11_ = 0;
            }
            if(_loc9_ != _loc12_)
            {
               _loc11_ = _loc5_;
            }
            if(_loc11_ == 0)
            {
               ESP = _loc2_;
               F_abort();
            }
         }
      }
      §§goto(addr443);
   }
}
