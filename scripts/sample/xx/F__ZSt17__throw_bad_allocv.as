package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx_unctexcept_2E_o_3A_4C4D056D_2D_CC18_2D_4223_2D_B594_2D_CB5FEF2FC7EC.*;
   
   public function F__ZSt17__throw_bad_allocv() : void
   {
      var _loc1_:int = 0;
      var _loc4_:int = 0;
      var _loc2_:int = ESP;
      var _loc3_:* = _loc2_;
      _loc2_ = _loc2_ - 16;
      si32(4,_loc2_);
      ESP = _loc2_;
      F___cxa_allocate_exception();
      _loc1_ = __ZTVSt9bad_alloc + 8;
      _loc2_ = _loc2_ + 16;
      _loc4_ = eax;
      si32(_loc1_,_loc4_);
      _loc2_ = _loc2_ - 16;
      si32(__ZNSt9bad_allocD1Ev,_loc2_ + 8);
      si32(__ZTISt9bad_alloc,_loc2_ + 4);
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      F___cxa_throw();
      _loc2_ = _loc2_ + 16;
   }
}
