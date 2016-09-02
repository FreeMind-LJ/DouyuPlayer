package sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2
{
   import sample.xx.ESP;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.eax;
   import sample.xx.Fmemset;
   
   public function F_base_calloc() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc4_ = li32(_loc3_ + 4);
      _loc1_ = int(_loc4_ * _loc1_);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_base_alloc();
      _loc2_ = int(_loc2_ + 16);
      _loc4_ = int(eax);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc1_,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      Fmemset();
      _loc2_ = int(_loc2_ + 16);
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
