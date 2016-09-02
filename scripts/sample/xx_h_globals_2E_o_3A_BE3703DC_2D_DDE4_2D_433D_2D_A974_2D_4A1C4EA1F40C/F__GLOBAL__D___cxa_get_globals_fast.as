package sample.xx_h_globals_2E_o_3A_BE3703DC_2D_DDE4_2D_433D_2D_A974_2D_4A1C4EA1F40C
{
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   import avm2.intrinsics.memory.si8;
   
   public function F__GLOBAL__D___cxa_get_globals_fast() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li8(__ZL4init + 4);
      if(_loc1_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(li32(__ZL4init),_loc2_);
         ESP = _loc2_;
         F_pthread_key_delete();
         _loc2_ = int(_loc2_ + 16);
      }
      si8(0,__ZL4init + 4);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
