package sample.xx_h_throw_2E_o_3A_48DFE16A_2D_3CF9_2D_4CDA_2D_9FE8_2D_9E3050049552
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   
   public function F__ZL23__gxx_exception_cleanup19_Unwind_Reason_CodeP17_Unwind_Exception() : void
   {
      var _loc3_:* = 0;
      var _loc6_:int = 0;
      var _loc4_:* = 0;
      var _loc5_:int = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc6_ = _loc1_ + -48;
      _loc1_ = li32(_loc3_);
      if(uint(_loc1_) >= 2)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(li32(_loc6_ + 12),_loc2_);
         ESP = _loc2_;
         F__ZN10__cxxabiv111__terminateEPFvvE();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc5_ = _loc6_ + 80;
      _loc4_ = li32(_loc6_ + 4);
      if(_loc4_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc5_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc4_]();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc2_ = int(_loc2_ - 16);
      si32(_loc5_,_loc2_);
      ESP = _loc2_;
      F___cxa_free_exception();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
