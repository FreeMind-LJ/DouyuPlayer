package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccKgiH7b_2E_o_3A_ec56f713_2D_06a1_2D_4be7_2D_88a0_2D_e6cc830d9279.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE16_M_insert_uniqueERKS2_() : void
   {
      var _loc20_:* = 0;
      var _loc2_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:int = 0;
      var _loc11_:* = 0;
      var _loc13_:* = 0;
      var _loc18_:* = 0;
      var _loc3_:* = 0;
      var _loc15_:int = 0;
      var _loc19_:int = 0;
      var _loc17_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:int = 0;
      var _loc16_:int = 0;
      var _loc6_:* = 0;
      var _loc12_:int = 0;
      var _loc14_:* = 0;
      var _loc1_:* = int(ESP);
      _loc20_ = _loc1_;
      _loc2_ = li32(_loc20_);
      _loc3_ = li32(_loc2_ + 8);
      _loc5_ = _loc2_ + 4;
      _loc7_ = li32(_loc20_ + 4);
      _loc9_ = _loc5_;
      if(_loc3_ != 0)
      {
         _loc11_ = li32(_loc7_);
         do
         {
            _loc9_ = _loc3_;
            _loc13_ = li32(_loc9_ + 16);
            if(_loc11_ < _loc13_)
            {
               _loc15_ = 1;
               if(_loc11_ >= _loc13_)
               {
                  _loc15_ = 0;
               }
               _loc17_ = _loc15_ & 1;
               _loc19_ = _loc9_ + 8;
            }
            else
            {
               _loc19_ = _loc9_ + 12;
               _loc17_ = 0;
            }
            _loc3_ = li32(_loc19_);
         }
         while(_loc3_ != 0);
         
         _loc6_ = _loc9_;
         if(_loc17_ != 0)
         {
         }
         _loc18_ = li32(_loc7_);
         var _loc4_:* = li32(_loc6_ + 16);
         _loc12_ = 0;
         _loc14_ = _loc12_;
         if(_loc4_ < _loc18_)
         {
            _loc16_ = 1;
            if(_loc5_ != _loc9_)
            {
               _loc16_ = 1;
               if(_loc18_ >= li32(_loc9_ + 16))
               {
                  _loc16_ = 0;
               }
            }
            _loc1_ = int(_loc1_ - 16);
            si32(24,_loc1_);
            ESP = _loc1_;
            F__Znwj();
            _loc1_ = int(_loc1_ + 16);
            _loc6_ = int(eax);
            if(_loc6_ != -16)
            {
               var _loc8_:* = li32(_loc7_);
               si32(_loc8_,_loc6_ + 16);
               si8(li8(_loc7_ + 4),_loc6_ + 20);
            }
            _loc1_ = int(_loc1_ - 16);
            si32(_loc5_,_loc1_ + 12);
            si32(_loc9_,_loc1_ + 8);
            si32(_loc6_,_loc1_ + 4);
            si32(_loc16_,_loc1_);
            ESP = _loc1_;
            F__ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_();
            _loc1_ = int(_loc1_ + 16);
            _loc4_ = li32(_loc2_ + 20);
            _loc4_ = int(_loc4_ + 1);
            si32(_loc4_,_loc2_ + 20);
            _loc14_ = 1;
            _loc12_ = 0;
         }
         _loc4_ = _loc6_ | _loc12_;
         eax = _loc4_;
         edx = _loc14_;
         _loc1_ = _loc20_;
         ESP = _loc1_;
         return;
      }
      _loc4_ = li32(_loc2_ + 12);
      if(_loc9_ == _loc4_)
      {
         _loc10_ = 1;
         if(_loc5_ != _loc9_)
         {
            _loc10_ = 1;
            if(li32(_loc7_) >= li32(_loc9_ + 16))
            {
               _loc10_ = 0;
            }
         }
         _loc1_ = int(_loc1_ - 16);
         si32(24,_loc1_);
         ESP = _loc1_;
         F__Znwj();
         _loc1_ = int(_loc1_ + 16);
         _loc6_ = int(eax);
         if(_loc6_ != -16)
         {
            _loc8_ = li32(_loc7_);
            si32(_loc8_,_loc6_ + 16);
            si8(li8(_loc7_ + 4),_loc6_ + 20);
         }
         _loc1_ = int(_loc1_ - 16);
         si32(_loc5_,_loc1_ + 12);
         si32(_loc9_,_loc1_ + 8);
         si32(_loc6_,_loc1_ + 4);
         si32(_loc10_,_loc1_);
         ESP = _loc1_;
         F__ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_();
         _loc1_ = int(_loc1_ + 16);
         _loc4_ = li32(_loc2_ + 20);
         _loc4_ = int(_loc4_ + 1);
         si32(_loc4_,_loc2_ + 20);
         _loc14_ = 1;
         _loc12_ = 0;
      }
      else
      {
         _loc1_ = int(_loc1_ - 16);
         si32(_loc9_,_loc1_);
         ESP = _loc1_;
         F__ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base();
         _loc1_ = int(_loc1_ + 16);
         _loc6_ = int(eax);
         §§goto(addr272);
      }
      §§goto(addr405);
   }
}
