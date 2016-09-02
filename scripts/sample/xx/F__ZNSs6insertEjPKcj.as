package sample.xx
{
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.L__2E_str8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   
   public function F__ZNSs6insertEjPKcj() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc14_:* = 0;
      var _loc15_:* = 0;
      var _loc1_:int = 0;
      var _loc6_:int = 0;
      var _loc9_:int = 0;
      var _loc5_:int = 0;
      var _loc16_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      si32(L__2E_str8,_loc2_ + 8);
      _loc3_ = li32(_loc4_ + 4);
      si32(_loc3_,_loc2_ + 4);
      _loc16_ = li32(_loc4_);
      si32(_loc16_,_loc2_);
      ESP = _loc2_;
      F__ZNKSs8_M_checkEjPKc();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = int(_loc2_ - 16);
      si32(L__2E_str8,_loc2_ + 12);
      _loc15_ = li32(_loc4_ + 12);
      si32(_loc15_,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      si32(_loc16_,_loc2_);
      ESP = _loc2_;
      F__ZNKSs15_M_check_lengthEjjPKc();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = int(_loc2_ - 16);
      _loc14_ = li32(_loc4_ + 8);
      si32(_loc14_,_loc2_ + 4);
      si32(_loc16_,_loc2_);
      ESP = _loc2_;
      F__ZNKSs11_M_disjunctEPKc();
      _loc2_ = int(_loc2_ + 16);
      var _loc13_:int = eax;
      if(_loc13_ == 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc16_,_loc2_);
         ESP = _loc2_;
         F__ZNKSs6_M_repEv();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(int(eax),_loc2_);
         ESP = _loc2_;
         F__ZNKSs4_Rep12_M_is_sharedEv();
         _loc2_ = int(_loc2_ + 16);
         _loc13_ = eax;
         if(_loc13_ == 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc16_,_loc2_);
            ESP = _loc2_;
            F__ZNKSs7_M_dataEv();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(0,_loc2_ + 8);
            si32(_loc16_,_loc2_);
            si32(_loc3_,_loc2_ + 4);
            si32(_loc15_,_loc2_ + 12);
            ESP = _loc2_;
            F__ZNSs9_M_mutateEjjj();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc16_,_loc2_);
            ESP = _loc2_;
            F__ZNKSs7_M_dataEv();
            _loc2_ = int(_loc2_ + 16);
            _loc13_ = eax;
            _loc2_ = int(_loc2_ - 16);
            si32(_loc16_,_loc2_);
            var _loc11_:int = _loc14_ - int(eax);
            _loc9_ = _loc13_ + (int(_loc11_ + _loc15_));
            _loc1_ = _loc13_ + _loc11_;
            ESP = _loc2_;
            F__ZNKSs7_M_dataEv();
            _loc2_ = int(_loc2_ + 16);
            _loc5_ = eax;
            _loc6_ = _loc5_ + _loc3_;
            if(uint(_loc9_) <= uint(_loc6_))
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc15_,_loc2_ + 8);
               si32(_loc1_,_loc2_ + 4);
               si32(_loc6_,_loc2_);
               ESP = _loc2_;
               F__ZNSs7_M_copyEPcPKcj();
               _loc2_ = int(_loc2_ + 16);
            }
            else if(uint(_loc1_) >= uint(_loc6_))
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc15_,_loc2_ + 8);
               si32(_loc9_,_loc2_ + 4);
               si32(_loc6_,_loc2_);
               ESP = _loc2_;
               F__ZNSs7_M_copyEPcPKcj();
               _loc2_ = int(_loc2_ + 16);
            }
            else
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc6_,_loc2_);
               si32(_loc1_,_loc2_ + 4);
               var _loc7_:int = _loc6_ - _loc1_;
               si32(_loc7_,_loc2_ + 8);
               ESP = _loc2_;
               F__ZNSs7_M_copyEPcPKcj();
               _loc2_ = int(_loc2_ + 16);
               _loc2_ = int(_loc2_ - 16);
               si32(int(_loc15_ - _loc7_),_loc2_ + 8);
               _loc13_ = _loc5_ + (int(_loc15_ + _loc3_));
               si32(_loc13_,_loc2_ + 4);
               _loc13_ = _loc5_ + (int(_loc7_ + _loc3_));
               si32(_loc13_,_loc2_);
               ESP = _loc2_;
               F__ZNSs7_M_copyEPcPKcj();
               _loc2_ = int(_loc2_ + 16);
            }
         }
         addr511:
         eax = _loc16_;
         _loc2_ = _loc4_;
         ESP = _loc2_;
         return;
      }
      _loc2_ = int(_loc2_ - 32);
      si32(_loc15_,_loc2_ + 16);
      si32(_loc14_,_loc2_ + 12);
      si32(0,_loc2_ + 8);
      si32(_loc3_,_loc2_ + 4);
      si32(_loc16_,_loc2_);
      ESP = _loc2_;
      F__ZNSs15_M_replace_safeEjjPKcj();
      _loc2_ = int(_loc2_ + 32);
      _loc16_ = int(eax);
      §§goto(addr511);
   }
}
