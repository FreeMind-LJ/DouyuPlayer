package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_printf_time_2E_o_3A_E624CC77_2D_3DE7_2D_4B86_2D_B31D_2D_F6413E3D7DB7.*;
   
   public function F___printf_arginfo_time() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      if(_loc1_ == 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(L__2E_str8,_loc2_ + 12);
         si32(47,_loc2_ + 8);
         si32(L__2E_str7,_loc2_ + 4);
         si32(___func___2E_2410,_loc2_);
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
