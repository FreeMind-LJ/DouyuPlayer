package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_printf_float_2E_o_3A_C4FC3488_2D_1919_2D_4ECA_2D_B95B_2D_0F277BFFF845.*;
   
   public function F___printf_arginfo_float() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      if(_loc1_ == 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(L__2E_str1,_loc2_ + 12);
         si32(125,_loc2_ + 8);
         si32(L__2E_str,_loc2_ + 4);
         si32(___func___2E_2736,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc4_ = li32(_loc3_ + 8);
      _loc1_ = li32(_loc3_);
      si32(128,_loc4_);
      _loc1_ = li32(_loc1_ + 12);
      if(_loc1_ != 0)
      {
         si32(65664,_loc4_);
      }
      eax = 1;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
