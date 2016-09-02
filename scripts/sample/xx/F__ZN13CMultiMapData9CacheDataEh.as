package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccHiFHTa_2E_o_3A_825f17d5_2D_64c2_2D_44fe_2D_86df_2D_62c8e7ad665c.*;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN13CMultiMapData9CacheDataEh() : void
   {
      var _loc1_:* = 0;
      var _loc3_:* = 0;
      var _loc5_:int = 0;
      var _loc7_:int = 0;
      var _loc11_:int = 0;
      var _loc6_:* = 0;
      var _loc9_:int = 0;
      var _loc8_:* = 0;
      var _loc10_:int = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = li32(_loc1_);
      var _loc4_:* = li32(_loc3_ + 28);
      _loc5_ = _loc4_ % 10;
      _loc6_ = li32(_loc3_ + 12);
      _loc7_ = _loc3_ + 8;
      _loc8_ = _loc7_;
      if(_loc6_ != 0)
      {
         do
         {
            _loc8_ = _loc6_;
            _loc9_ = _loc8_ + 8;
            _loc4_ = li32(_loc8_ + 16);
            if(_loc5_ >= _loc4_)
            {
               _loc9_ = _loc8_ + 12;
            }
            _loc6_ = li32(_loc9_);
         }
         while(_loc6_ != 0);
         
      }
      _loc10_ = 1;
      if(_loc7_ != _loc8_)
      {
         _loc10_ = 1;
         if(_loc5_ >= li32(_loc8_ + 16))
         {
            _loc10_ = 0;
         }
      }
      _loc2_ = int(_loc2_ - 16);
      si32(24,_loc2_);
      ESP = _loc2_;
      F__Znwj();
      _loc2_ = int(_loc2_ + 16);
      _loc11_ = eax;
      if(_loc11_ != -16)
      {
         si32(_loc5_,_loc11_ + 16);
         si8(_loc5_ ^ li32(_loc1_ + 4),_loc11_ + 20);
      }
      _loc2_ = int(_loc2_ - 16);
      si32(_loc7_,_loc2_ + 12);
      si32(_loc8_,_loc2_ + 8);
      si32(_loc11_,_loc2_ + 4);
      si32(_loc10_,_loc2_);
      ESP = _loc2_;
      F__ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_();
      _loc2_ = int(_loc2_ + 16);
      _loc4_ = li32(_loc3_ + 24);
      _loc4_ = int(_loc4_ + 1);
      si32(_loc4_,_loc3_ + 24);
      _loc4_ = li32(_loc3_ + 28);
      _loc4_ = int(_loc4_ + 1);
      si32(_loc4_,_loc3_ + 28);
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
