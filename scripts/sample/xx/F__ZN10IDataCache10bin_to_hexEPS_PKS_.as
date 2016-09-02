package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cchkBB4I_2E_o_3A_3d09543f_2D_286a_2D_4d3e_2D_a658_2D_8a6759fb7e32.*;
   import avm2.intrinsics.memory.li8;
   
   public function F__ZN10IDataCache10bin_to_hexEPS_PKS_() : void
   {
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:int = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc3_ = li32(_loc1_ + 4);
      var _loc4_:* = li32(_loc3_);
      _loc5_ = li32(_loc4_ + 32);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc5_]();
      _loc2_ = int(_loc2_ + 16);
      _loc4_ = int(eax);
      if(_loc4_ != 0)
      {
         _loc6_ = li32(_loc1_);
         _loc7_ = 0;
         do
         {
            si8(0,_loc1_ - 3);
            si8(0,_loc1_ - 2);
            si8(0,_loc1_ - 1);
            _loc4_ = li32(_loc3_);
            var _loc8_:* = li32(_loc4_ + 20);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc3_,_loc2_);
            si32(_loc7_,_loc2_ + 4);
            ESP = _loc2_;
            ptr2fun[_loc8_]();
            _loc2_ = int(_loc2_ + 16);
            _loc4_ = int(eax);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc4_,_loc2_ + 8);
            si32(L__2E_str13,_loc2_ + 4);
            _loc4_ = int(_loc1_ - 3);
            si32(_loc4_,_loc2_);
            ESP = _loc2_;
            F_sprintf();
            _loc2_ = int(_loc2_ + 16);
            _loc4_ = li32(_loc6_);
            var _loc9_:* = li32(_loc4_ + 12);
            _loc4_ = li8(_loc1_ - 3);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc4_,_loc2_ + 4);
            si32(_loc6_,_loc2_);
            ESP = _loc2_;
            ptr2fun[_loc9_]();
            _loc2_ = int(_loc2_ + 16);
            _loc4_ = li32(_loc6_);
            var _loc10_:* = li32(_loc4_ + 12);
            _loc4_ = li8(_loc1_ - 2);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc4_,_loc2_ + 4);
            si32(_loc6_,_loc2_);
            ESP = _loc2_;
            ptr2fun[_loc10_]();
            _loc2_ = int(_loc2_ + 16);
            _loc4_ = li32(_loc3_);
            var _loc11_:* = li32(_loc4_ + 32);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            ptr2fun[_loc11_]();
            _loc7_ = _loc7_ + 1;
            _loc2_ = int(_loc2_ + 16);
            _loc4_ = int(eax);
         }
         while(uint(_loc7_) < uint(_loc4_));
         
      }
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
