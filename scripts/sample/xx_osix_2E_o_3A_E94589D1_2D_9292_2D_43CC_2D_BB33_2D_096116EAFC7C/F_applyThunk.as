package sample.xx_osix_2E_o_3A_E94589D1_2D_9292_2D_43CC_2D_BB33_2D_096116EAFC7C
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   
   public function F_applyThunk() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_);
      _loc6_ = li32(_loc1_ + 8);
      _loc5_ = li32(_loc1_);
      _loc4_ = li32(_loc1_ + 4);
      _loc4_ = li32(_loc4_);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc4_,_loc2_ + 8);
      si32(_loc5_,_loc2_ + 4);
      _loc6_ = int(_loc6_ + 3);
      _loc5_ = _loc6_ >> 31;
      _loc5_ = int(_loc5_ >>> 30);
      _loc6_ = int(_loc6_ + _loc5_);
      _loc6_ = _loc6_ >> 2;
      si32(_loc6_,_loc2_ + 12);
      _loc6_ = int(_loc3_ - 16);
      si32(_loc6_,_loc2_);
      ESP = _loc2_;
      F___avm2_apply2();
      _loc2_ = int(_loc2_ + 16);
      _loc5_ = li32(_loc3_ - 4);
      si32(_loc5_,_loc1_ + 28);
      _loc5_ = li32(_loc3_ - 8);
      si32(_loc5_,_loc1_ + 24);
      _loc6_ = _loc6_ | 4;
      _loc6_ = li32(_loc6_);
      si32(_loc6_,_loc1_ + 20);
      _loc6_ = li32(_loc3_ - 16);
      si32(_loc6_,_loc1_ + 16);
      eax = 0;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
