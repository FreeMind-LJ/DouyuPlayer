package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_h_exception_2E_o_3A_EA2613CF_2D_630D_2D_4F84_2D_BF57_2D_6493FBA6A12C.*;
   
   public function F__ZNSt9exceptionD0Ev() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = __ZTVSt9exception + 8;
      _loc4_ = li32(_loc3_);
      si32(_loc1_,_loc4_);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      F__ZdlPv();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
