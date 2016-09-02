package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_eallocf_2E_o_3A_D93ABCC6_2D_01B9_2D_4872_2D_8B96_2D_319838CED5BB.*;
   
   public function F_reallocf() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:int = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_ + 4);
      si32(_loc1_,_loc2_ + 4);
      _loc5_ = li32(_loc3_);
      si32(_loc5_,_loc2_);
      ESP = _loc2_;
      F_realloc();
      _loc2_ = int(_loc2_ + 16);
      _loc4_ = eax;
      if(_loc4_ == 0)
      {
         if(_loc5_ != 0)
         {
            if(_loc1_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc5_,_loc2_);
               ESP = _loc2_;
               F_free();
               _loc2_ = int(_loc2_ + 16);
            }
         }
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
