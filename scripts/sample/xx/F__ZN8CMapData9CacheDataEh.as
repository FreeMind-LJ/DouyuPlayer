package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccYMNXlx_2E_o_3A_daea3333_2D_433f_2D_4c6d_2D_889e_2D_3e27e733977d.*;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN8CMapData9CacheDataEh() : void
   {
      var _loc1_:* = 0;
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:int = 0;
      var _loc10_:* = 0;
      var _loc4_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:int = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc3_ = li32(_loc1_);
      _loc4_ = li32(_loc3_ + 28);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      F__ZN11CCommonFunc6AphashEj();
      _loc2_ = int(_loc2_ + 16);
      _loc5_ = int(eax);
      si32(_loc5_,_loc3_ + 28);
      _loc6_ = _loc3_ + 8;
      _loc7_ = _loc3_ + 12;
      _loc8_ = li32(_loc1_ + 4);
      _loc9_ = _loc6_;
      loop0:
      while(true)
      {
         while(true)
         {
            _loc10_ = li32(_loc7_);
            if(_loc10_ == 0)
            {
               break;
            }
            _loc4_ = li32(_loc10_ + 16);
            if(_loc4_ >= _loc5_)
            {
               _loc7_ = _loc10_ + 8;
               _loc9_ = _loc10_;
               continue loop0;
            }
            _loc7_ = _loc10_ + 12;
         }
         if(_loc9_ != _loc6_)
         {
            if(_loc5_ < li32(_loc9_ + 16))
            {
            }
            addr189:
            _loc4_ = _loc5_ ^ _loc8_;
            si8(_loc4_,_loc9_ + 20);
            _loc2_ = _loc1_;
            ESP = _loc2_;
            return;
         }
         si32(_loc5_,_loc1_ - 8);
         _loc4_ = int(_loc1_ - 8);
         var _loc11_:* = _loc4_ | 4;
         si8(0,_loc11_);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc4_,_loc2_ + 8);
         si32(_loc9_,_loc2_ + 4);
         _loc4_ = int(_loc3_ + 4);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE16_M_insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2_();
         _loc2_ = int(_loc2_ + 16);
         _loc9_ = int(eax);
         _loc5_ = li32(_loc3_ + 28);
         §§goto(addr189);
      }
   }
}
