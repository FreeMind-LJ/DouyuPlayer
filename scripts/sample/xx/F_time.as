package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx_ime_2E_o_3A_21A0D14C_2D_AA7E_2D_474A_2D_B30D_2D_2CF4EFE3EDA1.*;
   import avm2.intrinsics.memory.li32;
   
   public function F_time() : void
   {
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc1_:int = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = _loc3_ - 8;
      si32(_loc1_,_loc2_ + 4);
      si32(13,_loc2_);
      ESP = _loc2_;
      F_clock_gettime();
      _loc5_ = -1;
      _loc2_ = int(_loc2_ + 16);
      _loc1_ = eax;
      if(_loc1_ >= 0)
      {
         _loc5_ = li32(_loc3_ - 8);
      }
      _loc4_ = li32(_loc3_);
      if(_loc4_ != 0)
      {
         si32(_loc5_,_loc4_);
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
