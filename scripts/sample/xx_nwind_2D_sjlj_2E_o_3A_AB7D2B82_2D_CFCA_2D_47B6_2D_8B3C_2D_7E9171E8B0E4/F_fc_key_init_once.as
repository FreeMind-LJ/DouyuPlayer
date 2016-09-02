package sample.xx_nwind_2D_sjlj_2E_o_3A_AB7D2B82_2D_CFCA_2D_47B6_2D_8B3C_2D_7E9171E8B0E4
{
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   import avm2.intrinsics.memory.li32;
   
   public function F_fc_key_init_once() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      si32(_fc_key_init,_loc2_ + 4);
      si32(_once_2E_2521,_loc2_);
      ESP = _loc2_;
      F_pthread_once();
      _loc2_ = int(_loc2_ + 16);
      _loc1_ = eax;
      if(_loc1_ == 0)
      {
         if(li32(_use_fc_key) <= -1)
         {
         }
         addr52:
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      si32(0,_use_fc_key);
      §§goto(addr52);
   }
}
