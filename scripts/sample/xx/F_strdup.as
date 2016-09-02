package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_trdup_2E_o_3A_30222CD9_2D_346F_2D_4CBC_2D_911D_2D_B3631EBF26A8.*;
   
   public function F_strdup() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:int = 0;
      var _loc4_:int = 0;
      var _loc7_:int = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_strlen();
      _loc2_ = int(_loc2_ + 16);
      _loc7_ = eax;
      _loc2_ = int(_loc2_ - 16);
      _loc6_ = _loc7_ + 1;
      si32(_loc6_,_loc2_);
      ESP = _loc2_;
      F_malloc();
      _loc5_ = 0;
      _loc2_ = int(_loc2_ + 16);
      _loc4_ = eax;
      if(_loc4_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc6_,_loc2_ + 8);
         si32(_loc1_,_loc2_ + 4);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         Fmemcpy();
         _loc2_ = int(_loc2_ + 16);
         _loc5_ = _loc4_;
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
