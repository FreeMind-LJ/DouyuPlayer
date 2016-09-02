package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_printf_int_2E_o_3A_BDE1DD69_2D_0338_2D_4D73_2D_B0D2_2D_0C755E66E87E.*;
   
   public function F___printf_arginfo_ptr() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      if(_loc1_ == 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(L__2E_str1,_loc2_ + 12);
         si32(444,_loc2_ + 8);
         si32(L__2E_str,_loc2_ + 4);
         si32(___func___2E_3091,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc1_ = li32(_loc3_ + 8);
      si32(32,_loc1_);
      eax = 1;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
