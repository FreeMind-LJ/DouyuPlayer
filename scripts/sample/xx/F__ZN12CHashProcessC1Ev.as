package sample.xx
{
   import avm2.intrinsics.memory.li8;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cchkBB4I_2E_o_3A_3d09543f_2D_286a_2D_4d3e_2D_a658_2D_8a6759fb7e32.*;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN12CHashProcessC1Ev() : void
   {
      var _loc1_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = li8(__ZN12CHashProcess10m_bInitialE);
      if(_loc3_ == 0)
      {
         ESP = _loc2_;
         F__Z11InitialHashv();
         si8(1,__ZN12CHashProcess10m_bInitialE);
      }
      _loc3_ = li32(_loc1_);
      si32(0,_loc3_);
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
