package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccYMNXlx_2E_o_3A_daea3333_2D_433f_2D_4c6d_2D_889e_2D_3e27e733977d.*;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.li8;
   
   public function F__ZN8CMapData9CacheDataEPKhi() : void
   {
      var _loc15_:* = 0;
      var _loc7_:* = 0;
      var _loc11_:int = 0;
      var _loc10_:int = 0;
      var _loc8_:int = 0;
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc14_:* = 0;
      var _loc13_:* = 0;
      var _loc2_:int = 0;
      var _loc1_:* = int(ESP);
      _loc15_ = _loc1_;
      _loc1_ = int(_loc1_ - 16);
      _loc2_ = 0;
      _loc3_ = li32(_loc15_ + 4);
      if(_loc3_ != 0)
      {
         _loc5_ = li32(_loc15_ + 8);
         if(_loc5_ != 0)
         {
            if(_loc5_ <= 118888)
            {
               _loc2_ = 1;
               if(_loc5_ >= 1)
               {
                  _loc7_ = li32(_loc15_);
                  _loc8_ = _loc7_ + 4;
                  _loc10_ = _loc7_ + 8;
                  _loc11_ = _loc7_ + 12;
                  loop0:
                  do
                  {
                     _loc12_ = li32(_loc7_ + 28);
                     _loc1_ = int(_loc1_ - 16);
                     si32(_loc12_,_loc1_);
                     ESP = _loc1_;
                     F__ZN11CCommonFunc6AphashEj();
                     _loc1_ = int(_loc1_ + 16);
                     _loc13_ = int(eax);
                     si32(_loc13_,_loc7_ + 28);
                     _loc14_ = _loc11_;
                     _loc6_ = _loc10_;
                     loop1:
                     while(true)
                     {
                        while(true)
                        {
                           _loc4_ = li32(_loc14_);
                           if(_loc4_ == 0)
                           {
                              break;
                           }
                           _loc12_ = li32(_loc4_ + 16);
                           if(_loc12_ >= _loc13_)
                           {
                              _loc14_ = int(_loc4_ + 8);
                              _loc6_ = _loc4_;
                              continue loop1;
                           }
                           _loc14_ = int(_loc4_ + 12);
                        }
                        if(_loc6_ != _loc10_)
                        {
                           if(_loc13_ < li32(_loc6_ + 16))
                           {
                           }
                           continue loop0;
                        }
                        si32(_loc13_,_loc15_ - 8);
                        _loc12_ = int(_loc15_ - 8);
                        var _loc9_:* = _loc12_ | 4;
                        si8(0,_loc9_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc12_,_loc1_ + 8);
                        si32(_loc6_,_loc1_ + 4);
                        si32(_loc8_,_loc1_);
                        ESP = _loc1_;
                        F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE16_M_insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2_();
                        _loc1_ = int(_loc1_ + 16);
                        _loc6_ = int(eax);
                        _loc13_ = li32(_loc7_ + 28);
                        continue loop0;
                     }
                  }
                  while(var _loc12_:* = li8(_loc3_), _loc12_ = _loc13_ ^ _loc12_, si8(_loc12_,_loc6_ + 20), _loc3_ = int(_loc3_ + 1), _loc5_ = int(_loc5_ + -1), _loc2_ = 1, _loc5_ != 0);
                  
               }
            }
         }
      }
      eax = _loc2_;
      _loc1_ = _loc15_;
      ESP = _loc1_;
   }
}
