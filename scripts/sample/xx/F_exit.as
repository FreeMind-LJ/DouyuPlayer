package sample.xx
{
   import sample.xx_xit_2E_o_3A_1E3E96A2_2D_7230_2D_4E8B_2D_BAF8_2D_EE3D94D63C88.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   
   public function F_exit() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:int = ESP;
      _loc3_ = _loc2_;
      si32(1,__thread_autoinit_dummy_decl);
      _loc2_ = _loc2_ - 16;
      si32(0,_loc2_);
      ESP = _loc2_;
      F___cxa_finalize();
      _loc2_ = _loc2_ + 16;
      _loc1_ = li32(___cleanup);
      if(_loc1_ != 0)
      {
         ESP = _loc2_;
         ptr2fun[_loc1_]();
      }
      var _loc4_:* = li32(_loc3_);
      _loc2_ = _loc2_ - 16;
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      F__exit();
      _loc2_ = _loc2_ + 16;
   }
}
