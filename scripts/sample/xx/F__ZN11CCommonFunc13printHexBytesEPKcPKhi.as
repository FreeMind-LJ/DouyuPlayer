package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccUSvqz9_2E_o_3A_fab054ec_2D_609f_2D_4b42_2D_a0e3_2D_d8c6a75af4d2.*;
   import avm2.intrinsics.memory.li8;
   
   public function F__ZN11CCommonFunc13printHexBytesEPKcPKhi() : void
   {
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc3_ = li32(_loc1_);
      si32(_loc3_,_loc2_ + 4);
      si32(L__2E_str,_loc2_);
      ESP = _loc2_;
      F_printf();
      _loc2_ = int(_loc2_ + 16);
      _loc4_ = li32(_loc1_ + 8);
      if(_loc4_ >= 1)
      {
         _loc5_ = li32(_loc1_ + 4);
         _loc4_ = int(0 - _loc4_);
         do
         {
            _loc3_ = int(_loc5_ - _loc4_);
            _loc3_ = li8(_loc3_ - 1);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc3_,_loc2_ + 4);
            si32(L__2E_str1,_loc2_);
            ESP = _loc2_;
            F_printf();
            _loc2_ = int(_loc2_ + 16);
            _loc4_ = int(_loc4_ + 1);
         }
         while(_loc4_ != 0);
         
      }
      _loc2_ = int(_loc2_ - 16);
      si32(10,_loc2_);
      ESP = _loc2_;
      F_putchar();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
