package sample.xx
{
   import sample.xx_h_type_2E_o_3A_F5BC363B_2D_E7CD_2D_41F0_2D_AB61_2D_CF2DF0650435.*;
   import avm2.intrinsics.memory.li32;
   
   public function F___cxa_current_exception_type() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:int = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      ESP = _loc2_;
      F___cxa_get_globals();
      _loc1_ = eax;
      _loc5_ = li32(_loc1_);
      _loc4_ = 0;
      if(_loc5_ != 0)
      {
         _loc4_ = li32(_loc5_);
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
