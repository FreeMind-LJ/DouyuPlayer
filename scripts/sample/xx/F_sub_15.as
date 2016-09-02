package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccoWZZEr_2E_o_3A_fa4b70d4_2D_363d_2D_4eae_2D_96dc_2D_1df1d5edcc9b.*;
   
   public function F_sub_15() : void
   {
      var _loc1_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      si32(0,_loc1_ - 4);
      _loc3_ = li32(_pDataProcess);
      _loc2_ = int(_loc2_ - 16);
      var _loc4_:* = int(_loc1_ - 4);
      si32(_loc4_,_loc2_ + 8);
      _loc4_ = li32(_loc1_);
      si32(_loc4_,_loc2_ + 4);
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      F__ZN12CDataProcess12GetSetupDataEPiS0_();
      _loc2_ = int(_loc2_ + 16);
      _loc3_ = li32(_loc1_ - 4);
      eax = _loc3_;
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
