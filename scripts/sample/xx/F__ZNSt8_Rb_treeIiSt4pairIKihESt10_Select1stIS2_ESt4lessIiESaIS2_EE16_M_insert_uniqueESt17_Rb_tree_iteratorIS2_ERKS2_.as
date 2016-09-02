package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccKgiH7b_2E_o_3A_ec56f713_2D_06a1_2D_4be7_2D_88a0_2D_e6cc830d9279.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE16_M_insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2_() : void
   {
      var _loc33_:* = 0;
      var _loc14_:* = 0;
      var _loc19_:* = 0;
      var _loc17_:* = 0;
      var _loc15_:int = 0;
      var _loc25_:* = 0;
      var _loc27_:* = 0;
      var _loc23_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc8_:* = 0;
      var _loc10_:int = 0;
      var _loc12_:* = 0;
      var _loc9_:* = 0;
      var _loc16_:* = 0;
      var _loc24_:* = 0;
      var _loc26_:* = 0;
      var _loc20_:int = 0;
      var _loc4_:* = 0;
      var _loc31_:int = 0;
      var _loc7_:int = 0;
      var _loc13_:* = 0;
      var _loc11_:int = 0;
      var _loc18_:int = 0;
      var _loc22_:int = 0;
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
               si32(24,_loc1_);
               _loc31_ = 1;
               _loc4_ = _loc31_;
               if(_loc23_ >= _loc27_)
               {
                  _loc4_ = 0;
               }
               if(_loc15_ != _loc25_)
               {
                  _loc31_ = 0;
               }
               ESP = _loc1_;
               F__Znwj();
               _loc1_ = int(_loc1_ + 16);
               _loc29_ = int(eax);
               if(_loc29_ != -16)
               {
                  si32(li32(_loc17_),_loc29_ + 16);
                  si8(li8(_loc17_ + 4),_loc29_ + 20);
               }
               _loc21_ = _loc31_ | _loc4_;
               _loc21_ = _loc21_ & 1;
               _loc1_ = int(_loc1_ - 16);
               si32(_loc15_,_loc1_ + 12);
               si32(_loc25_,_loc1_ + 8);
               si32(_loc29_,_loc1_ + 4);
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
         F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE16_M_insert_uniqueERKS2_();
         _loc1_ = int(_loc1_ + 16);
         _loc29_ = int(eax);
      }
      else
      {
         _loc6_ = li32(_loc19_ + 16);
         _loc5_ = li32(_loc17_);
         if(_loc5_ < _loc6_)
         {
            _loc8_ = li32(_loc14_ + 12);
            if(_loc8_ == _loc19_)
            {
               _loc7_ = 1;
               if(_loc8_ == 0)
               {
                  if(_loc15_ != _loc8_)
                  {
                     _loc7_ = 1;
                     if(_loc5_ >= li32(_loc8_ + 16))
                     {
                        _loc7_ = 0;
                     }
                  }
               }
               _loc1_ = int(_loc1_ - 16);
               si32(24,_loc1_);
               ESP = _loc1_;
               F__Znwj();
               _loc1_ = int(_loc1_ + 16);
               _loc29_ = int(eax);
               if(_loc29_ != -16)
               {
                  si32(li32(_loc17_),_loc29_ + 16);
                  si8(li8(_loc17_ + 4),_loc29_ + 20);
               }
               _loc1_ = int(_loc1_ - 16);
               si32(_loc15_,_loc1_ + 12);
               si32(_loc8_,_loc1_ + 8);
               si32(_loc29_,_loc1_ + 4);
               si32(_loc7_,_loc1_);
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
               _loc10_ = eax;
               _loc9_ = li32(_loc17_);
               _loc12_ = li32(_loc10_ + 16);
               if(_loc12_ < _loc9_)
               {
                  _loc21_ = li32(_loc10_ + 12);
                  if(_loc21_ == 0)
                  {
                     _loc1_ = int(_loc1_ - 16);
                     si32(24,_loc1_);
                     _loc11_ = 1;
                     _loc13_ = _loc11_;
                     if(_loc9_ >= _loc12_)
                     {
                        _loc13_ = 0;
                     }
                     if(_loc15_ != _loc10_)
                     {
                        _loc11_ = 0;
                     }
                     ESP = _loc1_;
                     F__Znwj();
                     _loc1_ = int(_loc1_ + 16);
                     _loc29_ = int(eax);
                     if(_loc29_ != -16)
                     {
                        _loc21_ = li32(_loc17_);
                        si32(_loc21_,_loc29_ + 16);
                        si8(li8(_loc17_ + 4),_loc29_ + 20);
                     }
                     _loc21_ = _loc11_ | _loc13_;
                     _loc21_ = _loc21_ & 1;
                     _loc1_ = int(_loc1_ - 16);
                     si32(_loc15_,_loc1_ + 12);
                     si32(_loc10_,_loc1_ + 8);
                     si32(_loc29_,_loc1_ + 4);
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
                     _loc18_ = 1;
                     if(_loc19_ == 0)
                     {
                        _loc18_ = 1;
                        if(_loc9_ >= li32(_loc19_ + 16))
                        {
                           _loc18_ = 0;
                        }
                     }
                     _loc1_ = int(_loc1_ - 16);
                     si32(24,_loc1_);
                     ESP = _loc1_;
                     F__Znwj();
                     _loc1_ = int(_loc1_ + 16);
                     _loc29_ = int(eax);
                     if(_loc29_ != -16)
                     {
                        _loc21_ = li32(_loc17_);
                        si32(_loc21_,_loc29_ + 16);
                        si8(li8(_loc17_ + 4),_loc29_ + 20);
                     }
                     _loc1_ = int(_loc1_ - 16);
                     si32(_loc15_,_loc1_ + 12);
                     si32(_loc19_,_loc1_ + 8);
                     si32(_loc29_,_loc1_ + 4);
                     si32(_loc18_,_loc1_);
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
                  F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE16_M_insert_uniqueERKS2_();
                  _loc1_ = int(_loc1_ + 16);
                  _loc29_ = int(eax);
               }
            }
         }
         else
         {
            _loc29_ = _loc19_;
            if(_loc6_ < _loc5_)
            {
               _loc16_ = li32(_loc14_ + 16);
               if(_loc16_ == _loc19_)
               {
                  _loc22_ = 1;
                  if(_loc15_ != _loc16_)
                  {
                     _loc22_ = 1;
                     if(_loc5_ >= li32(_loc16_ + 16))
                     {
                        _loc22_ = 0;
                     }
                  }
                  _loc1_ = int(_loc1_ - 16);
                  si32(24,_loc1_);
                  ESP = _loc1_;
                  F__Znwj();
                  _loc1_ = int(_loc1_ + 16);
                  _loc29_ = int(eax);
                  if(_loc29_ != -16)
                  {
                     si32(li32(_loc17_),_loc29_ + 16);
                     si8(li8(_loc17_ + 4),_loc29_ + 20);
                  }
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc15_,_loc1_ + 12);
                  si32(_loc16_,_loc1_ + 8);
                  si32(_loc29_,_loc1_ + 4);
                  si32(_loc22_,_loc1_);
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
                  _loc20_ = eax;
                  _loc26_ = li32(_loc20_ + 16);
                  _loc24_ = li32(_loc17_);
                  if(_loc24_ < _loc26_)
                  {
                     _loc21_ = li32(_loc19_ + 12);
                     if(_loc21_ == 0)
                     {
                        _loc1_ = int(_loc1_ - 16);
                        si32(24,_loc1_);
                        _loc30_ = 1;
                        if(_loc24_ >= li32(_loc19_ + 16))
                        {
                           _loc30_ = 0;
                        }
                        ESP = _loc1_;
                        F__Znwj();
                        _loc1_ = int(_loc1_ + 16);
                        _loc29_ = int(eax);
                        if(_loc29_ != -16)
                        {
                           si32(li32(_loc17_),_loc29_ + 16);
                           si8(li8(_loc17_ + 4),_loc29_ + 20);
                        }
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc15_,_loc1_ + 12);
                        si32(_loc19_,_loc1_ + 8);
                        si32(_loc29_,_loc1_ + 4);
                        _loc21_ = _loc30_ & 255;
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
                        _loc1_ = int(_loc1_ - 16);
                        si32(24,_loc1_);
                        _loc28_ = 1;
                        _loc32_ = _loc28_;
                        if(_loc24_ >= _loc26_)
                        {
                           _loc32_ = 0;
                        }
                        _loc2_ = _loc28_;
                        if(_loc15_ != _loc20_)
                        {
                           _loc2_ = 0;
                        }
                        if(_loc20_ == 0)
                        {
                           _loc28_ = 0;
                        }
                        ESP = _loc1_;
                        F__Znwj();
                        _loc1_ = int(_loc1_ + 16);
                        _loc29_ = int(eax);
                        if(_loc29_ != -16)
                        {
                           _loc21_ = li32(_loc17_);
                           si32(_loc21_,_loc29_ + 16);
                           si8(li8(_loc17_ + 4),_loc29_ + 20);
                        }
                        _loc21_ = _loc28_ | _loc2_;
                        _loc21_ = _loc21_ | _loc32_;
                        _loc21_ = _loc21_ & 1;
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc15_,_loc1_ + 12);
                        si32(_loc20_,_loc1_ + 8);
                        si32(_loc29_,_loc1_ + 4);
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
                     F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE16_M_insert_uniqueERKS2_();
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
