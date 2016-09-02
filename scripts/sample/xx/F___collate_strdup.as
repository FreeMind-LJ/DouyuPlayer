package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_ollate_2E_o_3A_3327D5DA_2D_F857_2D_46DE_2D_A662_2D_F85F52217D45.*;
   
   public function F___collate_strdup() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_strdup();
      _loc2_ = int(_loc2_ + 16);
      _loc4_ = eax;
      if(_loc4_ == 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(___func___2E_3112,_loc2_ + 4);
         si32(71,_loc2_);
         ESP = _loc2_;
         F___collate_err();
         _loc2_ = int(_loc2_ + 16);
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
