package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccKgiH7b_2E_o_3A_ec56f713_2D_06a1_2D_4be7_2D_88a0_2D_e6cc830d9279.*;
   
   public function F__ZNSt8_Rb_treeIiSt4pairIKiSt3mapIihSt4lessIiESaIS0_IS1_hEEEESt10_Select1stIS8_ES4_SaIS8_EE16_M_insert_uniqueESt17_Rb_tree_iteratorIS8_ERKS8_() : void
   {
      var _loc33_:* = 0;
      var _loc14_:* = 0;
      var _loc19_:* = 0;
      var _loc17_:* = 0;
      var _loc15_:int = 0;
      var _loc25_:* = 0;
      var _loc27_:* = 0;
      var _loc23_:* = 0;
      var _loc6_:* = 0;
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:int = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc18_:* = 0;
      var _loc26_:* = 0;
      var _loc20_:* = 0;
      var _loc22_:int = 0;
      var _loc4_:* = 0;
      var _loc31_:int = 0;
      var _loc8_:int = 0;
      var _loc11_:* = 0;
      var _loc12_:int = 0;
      var _loc13_:int = 0;
      var _loc16_:int = 0;
      var _loc30_:int = 0;
      var _loc32_:* = 0;
      var _loc2_:* = 0;
      var _loc28_:int = 0;
      var _loc29_:* = 0;
      var _loc1_:* = int(ESP);
      _loc33_ = _loc1_;
      _loc14_ = li32(_loc33_);
      _loc15_ = _loc14_ + 4;
      _loc17_ = li32(_loc33_ + 8);
      _loc19_ = li32(_loc33_ + 4);
      if(_loc15_ == _loc19_)
      {
         var _loc21_:* = li32(_loc14_ + 20);
         if(_loc21_ != 0)
         {
            _loc23_ = li32(_loc17_);
            _loc25_ = li32(_loc14_ + 16);
            _loc27_ = li32(_loc25_ + 16);
            if(_loc27_ < _loc23_)
            {
               _loc1_ = int(_loc1_ - 16);
               si32(_loc17_,_loc1_ + 4);
               si32(_loc14_,_loc1_);
               ESP = _loc1_;
               F__ZNSt8_Rb_treeIiSt4pairIKiSt3mapIihSt4lessIiESaIS0_IS1_hEEEESt10_Select1stIS8_ES4_SaIS8_EE14_M_create_nodeERKS8_();
               _loc1_ = int(_loc1_ + 16);
               _loc29_ = int(eax);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc29_,_loc1_ + 4);
               _loc31_ = 1;
               _loc4_ = _loc31_;
               if(_loc23_ >= _loc27_)
               {
                  _loc4_ = 0;
               }
               si32(_loc25_,_loc1_ + 8);
               si32(_loc15_,_loc1_ + 12);
               if(_loc15_ != _loc25_)
               {
                  _loc31_ = 0;
               }
               _loc21_ = _loc31_ | _loc4_;
               _loc21_ = _loc21_ & 1;
               si32(_loc21_,_loc1_);
               ESP = _loc1_;
               F__ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_();
               _loc1_ = int(_loc1_ + 16);
               _loc21_ = li32(_loc14_ + 20);
               _loc21_ = int(_loc21_ + 1);
               si32(_loc21_,_loc14_ + 20);
            }
         }
         _loc1_ = int(_loc1_ - 16);
         si32(_loc17_,_loc1_ + 4);
         si32(_loc14_,_loc1_);
         ESP = _loc1_;
         F__ZNSt8_Rb_treeIiSt4pairIKiSt3mapIihSt4lessIiESaIS0_IS1_hEEEESt10_Select1stIS8_ES4_SaIS8_EE16_M_insert_uniqueERKS8_();
         _loc1_ = int(_loc1_ + 16);
         _loc29_ = int(eax);
      }
      else
      {
         _loc3_ = li32(_loc19_ + 16);
         _loc6_ = li32(_loc17_);
         if(_loc6_ < _loc3_)
         {
            _loc5_ = li32(_loc14_ + 12);
            if(_loc5_ == _loc19_)
            {
               _loc8_ = 1;
               if(_loc5_ == 0)
               {
                  if(_loc15_ != _loc5_)
                  {
                     _loc8_ = 1;
                     if(_loc6_ >= li32(_loc5_ + 16))
                     {
                        _loc8_ = 0;
                     }
                  }
               }
               _loc1_ = int(_loc1_ - 16);
               si32(_loc17_,_loc1_ + 4);
               si32(_loc14_,_loc1_);
               ESP = _loc1_;
               F__ZNSt8_Rb_treeIiSt4pairIKiSt3mapIihSt4lessIiESaIS0_IS1_hEEEESt10_Select1stIS8_ES4_SaIS8_EE14_M_create_nodeERKS8_();
               _loc1_ = int(_loc1_ + 16);
               _loc29_ = int(eax);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc15_,_loc1_ + 12);
               si32(_loc5_,_loc1_ + 8);
               si32(_loc29_,_loc1_ + 4);
               si32(_loc8_,_loc1_);
               ESP = _loc1_;
               F__ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_();
               _loc1_ = int(_loc1_ + 16);
               _loc21_ = li32(_loc14_ + 20);
               _loc21_ = int(_loc21_ + 1);
               si32(_loc21_,_loc14_ + 20);
            }
            else
            {
               _loc1_ = int(_loc1_ - 16);
               si32(_loc19_,_loc1_);
               ESP = _loc1_;
               F__ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base();
               _loc1_ = int(_loc1_ + 16);
               _loc7_ = eax;
               _loc10_ = li32(_loc17_);
               _loc9_ = li32(_loc7_ + 16);
               if(_loc9_ < _loc10_)
               {
                  _loc21_ = li32(_loc7_ + 12);
                  if(_loc21_ == 0)
                  {
                     _loc1_ = int(_loc1_ - 16);
                     si32(_loc17_,_loc1_ + 4);
                     si32(_loc14_,_loc1_);
                     ESP = _loc1_;
                     F__ZNSt8_Rb_treeIiSt4pairIKiSt3mapIihSt4lessIiESaIS0_IS1_hEEEESt10_Select1stIS8_ES4_SaIS8_EE14_M_create_nodeERKS8_();
                     _loc1_ = int(_loc1_ + 16);
                     _loc29_ = int(eax);
                     _loc1_ = int(_loc1_ - 16);
                     si32(_loc29_,_loc1_ + 4);
                     _loc12_ = 1;
                     _loc11_ = _loc12_;
                     if(_loc10_ >= _loc9_)
                     {
                        _loc11_ = 0;
                     }
                     si32(_loc7_,_loc1_ + 8);
                     si32(_loc15_,_loc1_ + 12);
                     if(_loc15_ != _loc7_)
                     {
                        _loc12_ = 0;
                     }
                     _loc21_ = _loc12_ | _loc11_;
                     _loc21_ = _loc21_ & 1;
                     si32(_loc21_,_loc1_);
                     ESP = _loc1_;
                     F__ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_();
                     _loc1_ = int(_loc1_ + 16);
                     _loc21_ = li32(_loc14_ + 20);
                     _loc21_ = int(_loc21_ + 1);
                     si32(_loc21_,_loc14_ + 20);
                  }
                  else
                  {
                     _loc13_ = 1;
                     if(_loc19_ == 0)
                     {
                        _loc13_ = 1;
                        if(_loc10_ >= li32(_loc19_ + 16))
                        {
                           _loc13_ = 0;
                        }
                     }
                     _loc1_ = int(_loc1_ - 16);
                     si32(_loc17_,_loc1_ + 4);
                     si32(_loc14_,_loc1_);
                     ESP = _loc1_;
                     F__ZNSt8_Rb_treeIiSt4pairIKiSt3mapIihSt4lessIiESaIS0_IS1_hEEEESt10_Select1stIS8_ES4_SaIS8_EE14_M_create_nodeERKS8_();
                     _loc1_ = int(_loc1_ + 16);
                     _loc29_ = int(eax);
                     _loc1_ = int(_loc1_ - 16);
                     si32(_loc15_,_loc1_ + 12);
                     si32(_loc19_,_loc1_ + 8);
                     si32(_loc29_,_loc1_ + 4);
                     si32(_loc13_,_loc1_);
                     ESP = _loc1_;
                     F__ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_();
                     _loc1_ = int(_loc1_ + 16);
                     _loc21_ = li32(_loc14_ + 20);
                     _loc21_ = int(_loc21_ + 1);
                     si32(_loc21_,_loc14_ + 20);
                  }
               }
               else
               {
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc17_,_loc1_ + 4);
                  si32(_loc14_,_loc1_);
                  ESP = _loc1_;
                  F__ZNSt8_Rb_treeIiSt4pairIKiSt3mapIihSt4lessIiESaIS0_IS1_hEEEESt10_Select1stIS8_ES4_SaIS8_EE16_M_insert_uniqueERKS8_();
                  _loc1_ = int(_loc1_ + 16);
                  _loc29_ = int(eax);
               }
            }
         }
         else
         {
            _loc29_ = _loc19_;
            if(_loc3_ < _loc6_)
            {
               _loc18_ = li32(_loc14_ + 16);
               if(_loc18_ == _loc19_)
               {
                  _loc16_ = 1;
                  if(_loc15_ != _loc18_)
                  {
                     _loc16_ = 1;
                     if(_loc6_ >= li32(_loc18_ + 16))
                     {
                        _loc16_ = 0;
                     }
                  }
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc17_,_loc1_ + 4);
                  si32(_loc14_,_loc1_);
                  ESP = _loc1_;
                  F__ZNSt8_Rb_treeIiSt4pairIKiSt3mapIihSt4lessIiESaIS0_IS1_hEEEESt10_Select1stIS8_ES4_SaIS8_EE14_M_create_nodeERKS8_();
                  _loc1_ = int(_loc1_ + 16);
                  _loc29_ = int(eax);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc15_,_loc1_ + 12);
                  si32(_loc18_,_loc1_ + 8);
                  si32(_loc29_,_loc1_ + 4);
                  si32(_loc16_,_loc1_);
                  ESP = _loc1_;
                  F__ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_();
                  _loc1_ = int(_loc1_ + 16);
                  _loc21_ = li32(_loc14_ + 20);
                  _loc21_ = int(_loc21_ + 1);
                  si32(_loc21_,_loc14_ + 20);
               }
               else
               {
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc19_,_loc1_);
                  ESP = _loc1_;
                  F__ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base();
                  _loc1_ = int(_loc1_ + 16);
                  _loc22_ = eax;
                  _loc20_ = li32(_loc22_ + 16);
                  _loc26_ = li32(_loc17_);
                  if(_loc26_ < _loc20_)
                  {
                     _loc21_ = li32(_loc19_ + 12);
                     if(_loc21_ == 0)
                     {
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc17_,_loc1_ + 4);
                        si32(_loc14_,_loc1_);
                        ESP = _loc1_;
                        F__ZNSt8_Rb_treeIiSt4pairIKiSt3mapIihSt4lessIiESaIS0_IS1_hEEEESt10_Select1stIS8_ES4_SaIS8_EE14_M_create_nodeERKS8_();
                        _loc1_ = int(_loc1_ + 16);
                        _loc29_ = int(eax);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc15_,_loc1_ + 12);
                        si32(_loc19_,_loc1_ + 8);
                        si32(_loc29_,_loc1_ + 4);
                        _loc30_ = 1;
                        if(_loc26_ >= li32(_loc19_ + 16))
                        {
                           _loc30_ = 0;
                        }
                        si32(_loc30_,_loc1_);
                        ESP = _loc1_;
                        F__ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_();
                        _loc1_ = int(_loc1_ + 16);
                        _loc21_ = li32(_loc14_ + 20);
                        _loc21_ = int(_loc21_ + 1);
                        si32(_loc21_,_loc14_ + 20);
                     }
                     else
                     {
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc17_,_loc1_ + 4);
                        si32(_loc14_,_loc1_);
                        ESP = _loc1_;
                        F__ZNSt8_Rb_treeIiSt4pairIKiSt3mapIihSt4lessIiESaIS0_IS1_hEEEESt10_Select1stIS8_ES4_SaIS8_EE14_M_create_nodeERKS8_();
                        _loc1_ = int(_loc1_ + 16);
                        _loc29_ = int(eax);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc29_,_loc1_ + 4);
                        _loc28_ = 1;
                        _loc32_ = _loc28_;
                        if(_loc26_ >= _loc20_)
                        {
                           _loc32_ = 0;
                        }
                        si32(_loc22_,_loc1_ + 8);
                        si32(_loc15_,_loc1_ + 12);
                        _loc2_ = _loc28_;
                        if(_loc15_ != _loc22_)
                        {
                           _loc2_ = 0;
                        }
                        if(_loc22_ == 0)
                        {
                           _loc28_ = 0;
                        }
                        _loc21_ = _loc28_ | _loc2_;
                        _loc21_ = _loc21_ | _loc32_;
                        _loc21_ = _loc21_ & 1;
                        si32(_loc21_,_loc1_);
                        ESP = _loc1_;
                        F__ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_();
                        _loc1_ = int(_loc1_ + 16);
                        _loc21_ = li32(_loc14_ + 20);
                        _loc21_ = int(_loc21_ + 1);
                        si32(_loc21_,_loc14_ + 20);
                     }
                  }
                  else
                  {
                     _loc1_ = int(_loc1_ - 16);
                     si32(_loc17_,_loc1_ + 4);
                     si32(_loc14_,_loc1_);
                     ESP = _loc1_;
                     F__ZNSt8_Rb_treeIiSt4pairIKiSt3mapIihSt4lessIiESaIS0_IS1_hEEEESt10_Select1stIS8_ES4_SaIS8_EE16_M_insert_uniqueERKS8_();
                     _loc1_ = int(_loc1_ + 16);
                     _loc29_ = int(eax);
                  }
               }
            }
         }
      }
      eax = _loc29_;
      _loc1_ = _loc33_;
      ESP = _loc1_;
   }
}
