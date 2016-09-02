package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_texit_2E_o_3A_1405349B_2D_9902_2D_46AE_2D_908F_2D_8B86E3F38604.F_atexit_register;
   
   public function F_atexit() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      si32(1,_loc3_ - 16);
      _loc1_ = _loc3_ - 16;
      _loc5_ = _loc1_ | 4;
      var _loc4_:* = li32(_loc3_);
      si32(_loc4_,_loc5_);
      si32(0,_loc3_ - 8);
      si32(0,_loc3_ - 4);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_atexit_register();
      _loc2_ = int(_loc2_ + 16);
      _loc1_ = eax;
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
