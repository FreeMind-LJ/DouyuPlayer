package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccKgiH7b_2E_o_3A_ec56f713_2D_06a1_2D_4be7_2D_88a0_2D_e6cc830d9279.*;
   
   public function F__ZNSt8_Rb_treeIiSt4pairIKiSt3mapIihSt4lessIiESaIS0_IS1_hEEEESt10_Select1stIS8_ES4_SaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E() : void
   {
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = li32(_loc1_ + 4);
      _loc4_ = li32(_loc1_);
      if(_loc3_ != 0)
      {
         do
         {
            var _loc5_:* = li32(_loc3_ + 12);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc5_,_loc2_ + 4);
            si32(_loc4_,_loc2_);
            ESP = _loc2_;
            F__ZNSt8_Rb_treeIiSt4pairIKiSt3mapIihSt4lessIiESaIS0_IS1_hEEEESt10_Select1stIS8_ES4_SaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E();
            _loc2_ = int(_loc2_ + 16);
            _loc5_ = li32(_loc3_ + 8);
            var _loc6_:* = li32(_loc3_ + 28);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc6_,_loc2_ + 4);
            _loc6_ = int(_loc3_ + 20);
            si32(_loc6_,_loc2_);
            ESP = _loc2_;
            F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F__ZdlPv();
            _loc2_ = int(_loc2_ + 16);
            _loc3_ = _loc5_;
         }
         while(_loc5_ != 0);
         
      }
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
