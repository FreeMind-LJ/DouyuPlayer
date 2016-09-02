package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.LCPI154_0;
   import avm2.intrinsics.memory.si32;
   
   public function F_sinhf() : void
   {
      var _loc6_:* = 0;
      var _loc14_:* = 0;
      var _loc3_:* = NaN;
      var _loc11_:int = 0;
      var _loc5_:* = 0;
      var _loc1_:* = NaN;
      var _loc4_:* = int(ESP);
      _loc6_ = _loc4_;
      _loc4_ = int(_loc4_ - 16);
      _loc1_ = lf32(_loc6_);
      sf32(_loc1_,_loc6_ - 4);
      _loc5_ = li32(_loc6_ - 4);
      _loc14_ = _loc5_ & 2147483647;
      if(uint(_loc14_) >= 2139095040)
      {
         var _loc8_:* = _loc1_;
         _loc8_ = Number(_loc8_ + _loc8_);
         _loc1_ = _loc8_;
      }
      else
      {
         _loc11_ = 1;
         if(_loc5_ >= 0)
         {
            _loc11_ = 0;
         }
         _loc5_ = 4;
         if(_loc11_ == 0)
         {
            _loc5_ = 0;
         }
         var _loc9_:int = LCPI154_0 + _loc5_;
         _loc3_ = lf32(_loc9_);
         if(uint(_loc14_) <= 1091567615)
         {
            if(uint(_loc14_) <= 964689919)
            {
               _loc8_ = Number(_loc1_ + 9.99999993381581e36);
               var _loc12_:* = _loc8_;
               if(_loc12_ <= 1)
               {
               }
            }
            _loc4_ = int(_loc4_ - 16);
            si32(_loc14_,_loc4_);
            ESP = _loc4_;
            F_expm1f();
            _loc4_ = int(_loc4_ + 16);
            _loc1_ = Number(st0);
            if(uint(_loc14_) <= 1065353215)
            {
               _loc8_ = _loc1_;
               var _loc7_:* = Number(_loc8_ + 1);
               var _loc10_:* = Number(_loc8_ * _loc8_);
               var _loc13_:* = _loc10_;
               _loc10_ = _loc13_;
               _loc7_ = Number(_loc10_ / _loc7_);
               _loc8_ = Number(_loc8_ + _loc8_);
               _loc12_ = _loc8_;
               _loc8_ = _loc12_;
               _loc8_ = Number(_loc8_ - _loc7_);
               _loc12_ = _loc8_;
               _loc8_ = Number(_loc12_ * _loc3_);
               _loc1_ = _loc8_;
            }
            else
            {
               _loc8_ = _loc1_;
               _loc7_ = Number(_loc8_ + 1);
               _loc7_ = Number(_loc8_ / _loc7_);
               _loc7_ = _loc7_;
               _loc8_ = Number(_loc7_ + _loc8_);
               _loc12_ = _loc8_;
               _loc8_ = Number(_loc12_ * _loc3_);
               _loc1_ = _loc8_;
            }
         }
         else if(uint(_loc14_) <= 1118925334)
         {
            _loc4_ = int(_loc4_ - 16);
            si32(_loc14_,_loc4_);
            ESP = _loc4_;
            F_expf();
            _loc4_ = int(_loc4_ + 16);
            _loc7_ = Number(st0);
            _loc8_ = Number(_loc7_ * _loc3_);
            _loc1_ = _loc8_;
         }
         else if(uint(_loc14_) <= 1119016188)
         {
            si32(_loc14_,_loc6_ - 8);
            _loc12_ = 0.5;
            _loc8_ = lf32(_loc6_ - 8);
            _loc4_ = int(_loc4_ - 16);
            sf32(Number(_loc8_ * _loc12_),_loc4_);
            ESP = _loc4_;
            F_expf();
            _loc4_ = int(_loc4_ + 16);
            _loc12_ = Number(st0);
            _loc8_ = _loc12_;
            _loc7_ = Number(_loc3_ * _loc8_);
            _loc7_ = _loc7_;
            _loc8_ = Number(_loc7_ * _loc8_);
            _loc1_ = _loc8_;
         }
         else
         {
            _loc8_ = Number(_loc1_ * 9.99999993381581e36);
            _loc1_ = _loc8_;
         }
      }
      st0 = _loc1_;
      _loc4_ = _loc6_;
      ESP = _loc4_;
   }
}
