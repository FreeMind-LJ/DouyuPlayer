package sample.xx
{
   import sample.xx_h_terminate_2E_o_3A_E642DE23_2D_868E_2D_4DE2_2D_86DD_2D_2AB6F19AC061.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZSt13set_terminatePFvvE() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(__ZN10__cxxabiv119__terminate_handlerE);
      var _loc4_:* = li32(_loc3_);
      si32(_loc4_,__ZN10__cxxabiv119__terminate_handlerE);
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
