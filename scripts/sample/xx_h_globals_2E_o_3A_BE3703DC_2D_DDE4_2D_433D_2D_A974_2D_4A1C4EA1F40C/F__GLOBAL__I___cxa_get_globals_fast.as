package sample.xx_h_globals_2E_o_3A_BE3703DC_2D_DDE4_2D_433D_2D_A974_2D_4A1C4EA1F40C
{
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   
   public function F__GLOBAL__I___cxa_get_globals_fast() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      si8(0,__ZL4init + 4);
      _loc2_ = int(_loc2_ - 16);
      si32(__ZL15eh_globals_dtorPv,_loc2_ + 4);
      si32(__ZL4init,_loc2_);
      ESP = _loc2_;
      F_pthread_key_create();
      _loc1_ = 1;
      _loc2_ = int(_loc2_ + 16);
      var _loc4_:* = int(eax);
      if(_loc4_ != 0)
      {
         _loc1_ = 0;
      }
      _loc4_ = _loc1_ & 1;
      si8(_loc4_,__ZL4init + 4);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
