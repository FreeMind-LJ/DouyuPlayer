package sample.xx
{
   import sample.xx_osix_2E_o_3A_E94589D1_2D_9292_2D_43CC_2D_BB33_2D_096116EAFC7C.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   
   public function F___sys_getsockopt() : void
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
      var _loc9_:* = int(eax);
      if(_loc9_ == 0)
      {
         _loc9_ = _loc2_;
         _loc9_ = int(_loc9_ + -16);
         _loc9_ = _loc9_ & -16;
         _loc2_ = _loc9_;
         var _loc8_:* = _loc3_;
         si32(_loc8_,_loc9_);
         var _loc7_:* = int(_loc3_ - 32);
         _loc8_ = _loc7_ | 4;
         si32(0,_loc8_);
         si32(0,_loc3_ - 4);
         si32(0,_loc3_ - 8);
         si32(0,_loc3_ - 12);
         si32(0,_loc3_ - 16);
         si32(0,_loc3_ - 20);
         si32(0,_loc3_ - 24);
         si32(0,_loc3_ - 32);
         si32(___sys_getsockopt,_loc3_ - 32);
         si32(_loc9_,_loc8_);
         si32(20,_loc3_ - 24);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc7_,_loc2_ + 4);
         si32(_applyThunk,_loc2_);
         ESP = _loc2_;
         F_avm2_ui_thunk();
         _loc2_ = int(_loc2_ + 16);
         _loc9_ = li32(_loc3_ - 16);
         eax = _loc9_;
         edx = li32(_loc3_ - 12);
         st0 = lf64(_loc3_ - 8);
         ESP = _loc3_;
         return;
      }
      var _loc6_:* = li32(_loc3_ + 16);
      var _loc4_:* = li32(_loc3_ + 12);
      _loc7_ = li32(_loc3_ + 8);
      _loc8_ = li32(_loc3_ + 4);
      ESP = _loc2_ & -16;
      _loc9_ = int(CModule.kernel.getsockopt(li32(_loc3_),_loc8_,_loc7_,_loc4_,_loc6_,_loc1_));
      eax = _loc9_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
