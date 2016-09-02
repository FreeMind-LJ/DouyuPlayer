package sample.xx
{
   import sample.xx_h_throw_2E_o_3A_48DFE16A_2D_3CF9_2D_4CDA_2D_9FE8_2D_9E3050049552.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F___cxa_rethrow() : void
   {
      var _loc1_:int = 0;
      var _loc7_:* = 0;
      var _loc2_:int = ESP;
      var _loc3_:* = _loc2_;
      ESP = _loc2_;
      F___cxa_get_globals();
      _loc1_ = eax;
      _loc7_ = li32(_loc1_);
      var _loc6_:* = li32(_loc1_ + 4);
      _loc6_ = int(_loc6_ + 1);
      si32(_loc6_,_loc1_ + 4);
      if(_loc7_ != 0)
      {
         _loc6_ = li32(_loc7_ + 52);
         var _loc5_:* = li32(_loc7_ + 48);
         _loc5_ = _loc5_ ^ 1126902528;
         _loc6_ = _loc5_ | _loc6_ ^ 1196315971;
         if(_loc6_ != 0)
         {
            si32(0,_loc1_);
         }
         else
         {
            _loc6_ = int(0 - li32(_loc7_ + 20));
            si32(_loc6_,_loc7_ + 20);
         }
         _loc2_ = _loc2_ - 16;
         var _loc4_:int = _loc7_ + 48;
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         F__Unwind_SjLj_Resume_or_Rethrow();
         _loc2_ = _loc2_ + 16;
         _loc2_ = _loc2_ - 16;
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         F___cxa_begin_catch();
         _loc2_ = _loc2_ + 16;
      }
      ESP = _loc2_;
      F__ZSt9terminatev();
   }
}
