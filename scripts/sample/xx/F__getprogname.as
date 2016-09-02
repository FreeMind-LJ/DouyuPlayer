package sample.xx
{
   import sample.xx_etprogname_2E_o_3A_53EB4980_2D_CF6B_2D_4745_2D_8DFE_2D_0230F8E6E039.*;
   import avm2.intrinsics.memory.li32;
   
   public function F__getprogname() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(___progname);
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
