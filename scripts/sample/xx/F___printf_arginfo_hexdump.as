package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_printf_hexdump_2E_o_3A_C9339EEF_2D_38B6_2D_4FF2_2D_8275_2D_0CB9FC4D0AB6.*;
   
   public function F___printf_arginfo_hexdump() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      if(uint(_loc1_) <= 1)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(L__2E_str5,_loc2_ + 12);
         si32(41,_loc2_ + 8);
         si32(L__2E_str4,_loc2_ + 4);
         si32(___func___2E_2410,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc1_ = li32(_loc3_ + 8);
      si32(32,_loc1_);
      si32(1,_loc1_ + 4);
      eax = 2;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
