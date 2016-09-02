package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_satty_2E_o_3A_6650569D_2D_7CE6_2D_4585_2D_9455_2D_30F8892E30F3.*;
   
   public function F_isatty() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 48);
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = int(_loc3_ - 48);
      si32(_loc1_,_loc2_ + 4);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_tcgetattr();
      _loc4_ = 1;
      _loc2_ = int(_loc2_ + 16);
      _loc1_ = int(eax);
      if(_loc1_ == -1)
      {
         _loc4_ = 0;
      }
      _loc1_ = _loc4_ & 1;
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
