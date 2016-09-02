package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx_tomicity_2E_o_3A_44ABF313_2D_6049_2D_4BB7_2D_89B0_2D_8B517D33973B.*;
   
   public function F__ZN9__gnu_cxx32__throw_concurrence_unlock_errorEv() : void
   {
      var _loc1_:int = 0;
      var _loc4_:int = 0;
      var _loc2_:int = ESP;
      var _loc3_:* = _loc2_;
      _loc2_ = _loc2_ - 16;
      si32(4,_loc2_);
      ESP = _loc2_;
      F___cxa_allocate_exception();
      _loc1_ = __ZTVN9__gnu_cxx26__concurrence_unlock_errorE + 8;
      _loc2_ = _loc2_ + 16;
      _loc4_ = eax;
      si32(_loc1_,_loc4_);
      _loc2_ = _loc2_ - 16;
      si32(__ZN9__gnu_cxx26__concurrence_unlock_errorD1Ev,_loc2_ + 8);
      si32(__ZTIN9__gnu_cxx26__concurrence_unlock_errorE,_loc2_ + 4);
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      F___cxa_throw();
      _loc2_ = _loc2_ + 16;
   }
}
