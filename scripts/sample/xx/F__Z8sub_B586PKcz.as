package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccTjxbMJ_2E_o_3A_84ac3d3c_2D_2e54_2D_4ab3_2D_8c57_2D_62e7698c00c1.*;
   
   public function F__Z8sub_B586PKcz() : void
   {
      var _loc1_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc2_ = int(_loc2_ - 1040);
      _loc3_ = int(_loc1_ + 4);
      si32(_loc3_,_loc1_ - 1028);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc3_,_loc2_ + 12);
      _loc3_ = li32(_loc1_);
      si32(_loc3_,_loc2_ + 8);
      si32(1024,_loc2_ + 4);
      _loc3_ = int(_loc1_ - 1024);
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      F_vsnprintf();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      F_printf();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = int(_loc2_ - 16);
      si32(10,_loc2_);
      ESP = _loc2_;
      F_putchar();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
