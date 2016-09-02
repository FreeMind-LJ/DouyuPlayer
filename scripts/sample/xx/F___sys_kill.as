package sample.xx
{
   import sample.xx_osix_2E_o_3A_E94589D1_2D_9292_2D_43CC_2D_BB33_2D_096116EAFC7C.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   
   public function F___sys_kill() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 32);
      ESP = _loc2_;
      F___error();
      _loc1_ = eax;
      ESP = _loc2_;
      F_avm2_is_ui_worker();
      var _loc7_:* = int(eax);
      if(_loc7_ == 0)
      {
         _loc7_ = _loc2_;
         _loc7_ = int(_loc7_ + -16);
         _loc7_ = _loc7_ & -16;
         _loc2_ = _loc7_;
         var _loc6_:* = _loc3_;
         si32(_loc6_,_loc7_);
         _loc6_ = int(_loc3_ - 32);
         var _loc5_:* = _loc6_ | 4;
         si32(0,_loc5_);
         si32(0,_loc3_ - 4);
         si32(0,_loc3_ - 8);
         si32(0,_loc3_ - 12);
         si32(0,_loc3_ - 16);
         si32(0,_loc3_ - 20);
         si32(0,_loc3_ - 24);
         si32(0,_loc3_ - 32);
         si32(___sys_kill,_loc3_ - 32);
         si32(_loc7_,_loc5_);
         si32(8,_loc3_ - 24);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc6_,_loc2_ + 4);
         si32(_applyThunk,_loc2_);
         ESP = _loc2_;
         F_avm2_ui_thunk();
         _loc2_ = int(_loc2_ + 16);
         _loc7_ = li32(_loc3_ - 16);
         eax = _loc7_;
         edx = li32(_loc3_ - 12);
         st0 = lf64(_loc3_ - 8);
         ESP = _loc3_;
         return;
      }
      _loc6_ = li32(_loc3_ + 4);
      ESP = _loc2_ & -16;
      _loc7_ = int(CModule.kernel.kill(li32(_loc3_),_loc6_,_loc1_));
      eax = _loc7_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
