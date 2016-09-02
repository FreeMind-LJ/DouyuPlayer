package sample.xx
{
   import sample.xx_bort_2E_o_3A_CBEFCEB2_2D_D60D_2D_4770_2D_BCC3_2D_C0CC3CD47A78.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_abort() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:int = ESP;
      _loc3_ = _loc2_;
      _loc2_ = _loc2_ - 32;
      _loc1_ = li32(___cleanup);
      if(_loc1_ != 0)
      {
         ESP = _loc2_;
         ptr2fun[_loc1_]();
      }
      _loc2_ = _loc2_ - 16;
      var _loc6_:int = _loc3_ - 24;
      var _loc5_:int = _loc6_ + 8;
      si32(_loc5_,_loc2_);
      ESP = _loc2_;
      F_sigfillset();
      _loc2_ = _loc2_ + 16;
      _loc2_ = _loc2_ - 16;
      si32(6,_loc2_ + 4);
      si32(_loc5_,_loc2_);
      ESP = _loc2_;
      F_sigdelset();
      _loc2_ = _loc2_ + 16;
      _loc2_ = _loc2_ - 16;
      si32(0,_loc2_ + 8);
      si32(_loc5_,_loc2_ + 4);
      si32(3,_loc2_);
      ESP = _loc2_;
      F__sigprocmask();
      _loc2_ = _loc2_ + 16;
      _loc2_ = _loc2_ - 16;
      si32(6,_loc2_);
      ESP = _loc2_;
      F_raise();
      _loc2_ = _loc2_ + 16;
      si32(0,_loc3_ - 24);
      var _loc4_:* = _loc6_ | 4;
      si32(0,_loc4_);
      _loc2_ = _loc2_ - 16;
      si32(_loc5_,_loc2_);
      ESP = _loc2_;
      F_sigfillset();
      _loc2_ = _loc2_ + 16;
      _loc2_ = _loc2_ - 16;
      si32(0,_loc2_ + 8);
      si32(_loc6_,_loc2_ + 4);
      si32(6,_loc2_);
      ESP = _loc2_;
      F__sigaction();
      _loc2_ = _loc2_ + 16;
      _loc2_ = _loc2_ - 16;
      si32(6,_loc2_ + 4);
      si32(_loc5_,_loc2_);
      ESP = _loc2_;
      F_sigdelset();
      _loc2_ = _loc2_ + 16;
      _loc2_ = _loc2_ - 16;
      si32(0,_loc2_ + 8);
      si32(_loc5_,_loc2_ + 4);
      si32(3,_loc2_);
      ESP = _loc2_;
      F__sigprocmask();
      _loc2_ = _loc2_ + 16;
      _loc2_ = _loc2_ - 16;
      si32(6,_loc2_);
      ESP = _loc2_;
      F_raise();
      _loc2_ = _loc2_ + 16;
      _loc2_ = _loc2_ - 16;
      si32(1,_loc2_);
      ESP = _loc2_;
      F_exit();
      _loc2_ = _loc2_ + 16;
   }
}
