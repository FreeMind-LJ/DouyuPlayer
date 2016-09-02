package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_sgcat_2E_o_3A_F0068227_2D_D04A_2D_4BF4_2D_8735_2D_ECF05396B5D8.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_catclose() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc5_:int = _loc1_ + -1;
      if(uint(_loc5_) >= 4294967294)
      {
         ESP = _loc2_;
         F___error();
         si32(9,int(eax));
         _loc1_ = -1;
      }
      else
      {
         _loc2_ = int(_loc2_ - 16);
         si32(li32(_loc1_ + 4),_loc2_ + 4);
         si32(li32(_loc1_),_loc2_);
         ESP = _loc2_;
         F_munmap();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F_free();
         _loc2_ = int(_loc2_ + 16);
         _loc1_ = 0;
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
