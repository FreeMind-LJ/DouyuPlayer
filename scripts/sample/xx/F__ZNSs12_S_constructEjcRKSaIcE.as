package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.*;
   
   public function F__ZNSs12_S_constructEjcRKSaIcE() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_);
      if(_loc1_ == 0)
      {
         _loc2_ = int(_loc2_ - 16);
         var _loc8_:int = _loc3_ - 8;
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         F__ZNSaIcEC1Ev();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         F__ZNSaIcED1Ev();
         _loc2_ = int(_loc2_ + 16);
         ESP = _loc2_;
         F__ZNSs12_S_empty_repEv();
         _loc2_ = int(_loc2_ - 16);
         si32(int(eax),_loc2_);
         ESP = _loc2_;
         F__ZNSs4_Rep10_M_refdataEv();
         _loc2_ = int(_loc2_ + 16);
         _loc6_ = eax;
      }
      else
      {
         var _loc5_:* = li32(_loc3_ + 4);
         _loc2_ = int(_loc2_ - 16);
         si32(li32(_loc3_ + 8),_loc2_ + 8);
         si32(0,_loc2_ + 4);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F__ZNSs4_Rep9_S_createEjjRKSaIcE();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(int(eax),_loc2_);
         ESP = _loc2_;
         F__ZNSs4_Rep10_M_refdataEv();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc5_,_loc2_ + 8);
         si32(_loc1_,_loc2_ + 4);
         si32(int(eax),_loc2_);
         ESP = _loc2_;
         F__ZNSs9_M_assignEPcjc();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_ + 4);
         si32(int(eax),_loc2_);
         ESP = _loc2_;
         F__ZNSs4_Rep26_M_set_length_and_sharableEj();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(int(eax),_loc2_);
         ESP = _loc2_;
         F__ZNSs4_Rep10_M_refdataEv();
         _loc2_ = int(_loc2_ + 16);
         _loc6_ = eax;
      }
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
