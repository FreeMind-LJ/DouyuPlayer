package sample.xx
{
   import sample.xx_osix_2E_o_3A_E94589D1_2D_9292_2D_43CC_2D_BB33_2D_096116EAFC7C.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F___sys_nanosleep() : void
   {
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      ESP = _loc2_;
      F___error();
      _loc1_ = eax;
      _loc5_ = li32(_loc3_ + 4);
      si32(0,_loc5_ + 4);
      si32(0,_loc5_);
      _loc4_ = li32(_loc3_);
      ESP = _loc2_ & -16;
      _loc4_ = int(CModule.kernel.nanosleep(_loc4_,_loc5_,_loc1_));
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
