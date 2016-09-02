package sample.xx
{
   import sample.xx_aise_2E_o_3A_4C102DBF_2D_2CC7_2D_45B7_2D_AFA8_2D_529FC1953E6B.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F___raise() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      ESP = _loc2_;
      F_getpid();
      _loc1_ = eax;
      _loc2_ = int(_loc2_ - 16);
      var _loc4_:* = li32(_loc3_);
      si32(_loc4_,_loc2_ + 4);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_kill();
      _loc2_ = int(_loc2_ + 16);
      _loc1_ = eax;
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
