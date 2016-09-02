package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.L__2E_str3;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZNSs6appendEjc() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc8_ = li32(_loc3_);
      if(_loc1_ != 0)
      {
         _loc7_ = li32(_loc3_ + 8);
         _loc2_ = int(_loc2_ - 16);
         si32(L__2E_str3,_loc2_ + 12);
         si32(0,_loc2_ + 4);
         si32(_loc8_,_loc2_);
         si32(_loc1_,_loc2_ + 8);
         ESP = _loc2_;
         F__ZNKSs15_M_check_lengthEjjPKc();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         F__ZNKSs4sizeEv();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc8_,_loc2_);
         _loc5_ = int(eax) + _loc1_;
         ESP = _loc2_;
         F__ZNKSs8capacityEv();
         _loc2_ = int(_loc2_ + 16);
         var _loc6_:int = eax;
         if(uint(_loc6_) >= uint(_loc5_))
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F__ZNKSs6_M_repEv();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(int(eax),_loc2_);
            ESP = _loc2_;
            F__ZNKSs4_Rep12_M_is_sharedEv();
            _loc2_ = int(_loc2_ + 16);
            _loc6_ = eax;
            if(_loc6_ != 0)
            {
            }
            addr193:
            _loc2_ = int(_loc2_ - 16);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F__ZNKSs7_M_dataEv();
            _loc2_ = int(_loc2_ + 16);
            var _loc4_:int = eax;
            _loc2_ = int(_loc2_ - 16);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F__ZNKSs4sizeEv();
            _loc2_ = int(_loc2_ + 16);
            _loc6_ = eax;
            _loc2_ = int(_loc2_ - 16);
            si32(_loc7_,_loc2_ + 8);
            si32(_loc1_,_loc2_ + 4);
            _loc6_ = _loc4_ + _loc6_;
            si32(_loc6_,_loc2_);
            ESP = _loc2_;
            F__ZNSs9_M_assignEPcjc();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F__ZNKSs6_M_repEv();
            _loc2_ = int(_loc2_ + 16);
            _loc6_ = eax;
            _loc2_ = int(_loc2_ - 16);
            si32(_loc5_,_loc2_ + 4);
            si32(_loc6_,_loc2_);
            ESP = _loc2_;
            F__ZNSs4_Rep26_M_set_length_and_sharableEj();
            _loc2_ = int(_loc2_ + 16);
         }
         _loc2_ = int(_loc2_ - 16);
         si32(_loc5_,_loc2_ + 4);
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         F__ZNSs7reserveEj();
         _loc2_ = int(_loc2_ + 16);
         §§goto(addr193);
      }
      eax = _loc8_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
