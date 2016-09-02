package sample.xx_etenv_2E_o_3A_A3451165_2D_2A9D_2D_441A_2D_BCA8_2D_D41B459D3F48
{
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   
   public function F___env_warnx() : void
   {
      var _loc3_:* = 0;
      var _loc4_:int = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      ESP = _loc2_;
      F__getprogname();
      _loc1_ = int(eax);
      ESP = _loc2_;
      F__getprogname();
      _loc4_ = eax;
      _loc2_ = int(_loc2_ - 16);
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      F_strlen();
      _loc2_ = int(_loc2_ + 16);
      _loc4_ = eax;
      _loc2_ = int(_loc2_ - 16);
      si32(_loc4_,_loc2_ + 8);
      si32(_loc1_,_loc2_ + 4);
      si32(2,_loc2_);
      ESP = _loc2_;
      F__write();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = int(_loc2_ - 16);
      si32(2,_loc2_ + 8);
      si32(_progSep_2E_2358,_loc2_ + 4);
      si32(2,_loc2_);
      ESP = _loc2_;
      F__write();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_strlen();
      _loc2_ = int(_loc2_ + 16);
      _loc4_ = eax;
      _loc2_ = int(_loc2_ - 16);
      si32(_loc4_,_loc2_ + 8);
      si32(_loc1_,_loc2_ + 4);
      si32(2,_loc2_);
      ESP = _loc2_;
      F__write();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_ + 8);
      si32(_loc1_,_loc2_ + 8);
      _loc1_ = li32(_loc3_ + 4);
      si32(_loc1_,_loc2_ + 4);
      si32(2,_loc2_);
      ESP = _loc2_;
      F__write();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = int(_loc2_ - 16);
      si32(1,_loc2_ + 8);
      si32(_nl_2E_2357,_loc2_ + 4);
      si32(2,_loc2_);
      ESP = _loc2_;
      F__write();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
