package sample.xx_pthread_stubs_2E_o_3A_1BC016DC_2D_6B59_2D_42A2_2D_BE1C_2D_8925C8016454
{
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   
   public function F_stub_exit() : void
   {
      var _loc1_:int = ESP;
      var _loc2_:* = _loc1_;
      _loc1_ = _loc1_ - 16;
      si32(0,_loc1_);
      ESP = _loc1_;
      F_exit();
      _loc1_ = _loc1_ + 16;
   }
}
