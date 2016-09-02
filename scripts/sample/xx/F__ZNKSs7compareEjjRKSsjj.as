package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.*;
   
   public function F__ZNKSs7compareEjjRKSsjj() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc13_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:* = 0;
      var _loc9_:int = 0;
      var _loc8_:int = 0;
      var _loc7_:int = 0;
      var _loc5_:int = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      si32(L__2E_str2,_loc2_ + 8);
      _loc3_ = li32(_loc4_ + 4);
      si32(_loc3_,_loc2_ + 4);
      _loc13_ = li32(_loc4_);
      si32(_loc13_,_loc2_);
      ESP = _loc2_;
      F__ZNKSs8_M_checkEjPKc();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = int(_loc2_ - 16);
      si32(L__2E_str2,_loc2_ + 8);
      _loc12_ = li32(_loc4_ + 16);
      si32(_loc12_,_loc2_ + 4);
      _loc11_ = li32(_loc4_ + 12);
      si32(_loc11_,_loc2_);
      ESP = _loc2_;
      F__ZNKSs8_M_checkEjPKc();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = int(_loc2_ - 16);
      var _loc10_:* = li32(_loc4_ + 8);
      si32(_loc10_,_loc2_ + 8);
      si32(_loc3_,_loc2_ + 4);
      si32(_loc13_,_loc2_);
      ESP = _loc2_;
      F__ZNKSs8_M_limitEjj();
      _loc2_ = int(_loc2_ + 16);
      _loc9_ = eax;
      _loc2_ = int(_loc2_ - 16);
      _loc10_ = li32(_loc4_ + 20);
      si32(_loc10_,_loc2_ + 8);
      si32(_loc12_,_loc2_ + 4);
      si32(_loc11_,_loc2_);
      ESP = _loc2_;
      F__ZNKSs8_M_limitEjj();
      _loc2_ = int(_loc2_ + 16);
      _loc8_ = eax;
      _loc2_ = int(_loc2_ - 16);
      si32(_loc13_,_loc2_);
      ESP = _loc2_;
      F__ZNKSs7_M_dataEv();
      _loc2_ = int(_loc2_ + 16);
      _loc7_ = eax;
      _loc2_ = int(_loc2_ - 16);
      si32(_loc11_,_loc2_);
      _loc6_ = _loc8_;
      if(uint(_loc8_) >= uint(_loc9_))
      {
         _loc6_ = _loc9_;
      }
      ESP = _loc2_;
      F__ZNKSs4dataEv();
      _loc2_ = int(_loc2_ + 16);
      _loc10_ = int(eax);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc6_,_loc2_ + 8);
      _loc10_ = int(_loc10_ + _loc12_);
      si32(_loc10_,_loc2_ + 4);
      _loc10_ = int(_loc7_ + _loc3_);
      si32(_loc10_,_loc2_);
      _loc1_ = int(_loc9_ - _loc8_);
      ESP = _loc2_;
      F_memcmp();
      _loc2_ = int(_loc2_ + 16);
      _loc5_ = eax;
      if(_loc5_ != 0)
      {
         _loc1_ = _loc5_;
      }
      eax = _loc1_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
