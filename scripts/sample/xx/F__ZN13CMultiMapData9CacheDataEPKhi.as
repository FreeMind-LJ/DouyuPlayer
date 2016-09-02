package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccHiFHTa_2E_o_3A_825f17d5_2D_64c2_2D_44fe_2D_86df_2D_62c8e7ad665c.*;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN13CMultiMapData9CacheDataEPKhi() : void
   {
      var _loc16_:* = 0;
      var _loc7_:* = 0;
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc9_:int = 0;
      var _loc14_:int = 0;
      var _loc8_:int = 0;
      var _loc13_:* = 0;
      var _loc11_:int = 0;
      var _loc15_:* = 0;
      var _loc4_:int = 0;
      var _loc6_:* = 0;
      var _loc10_:int = 0;
      var _loc2_:int = 0;
      var _loc1_:* = int(ESP);
      _loc16_ = _loc1_;
      _loc2_ = 0;
      _loc3_ = li32(_loc16_ + 4);
      if(_loc3_ != 0)
      {
         _loc5_ = li32(_loc16_ + 8);
         if(_loc5_ != 0)
         {
            _loc2_ = 1;
            if(_loc5_ >= 1)
            {
               _loc7_ = li32(_loc16_);
               _loc9_ = _loc7_ + 8;
               _loc11_ = 0;
               do
               {
                  var _loc12_:* = int(_loc3_ + _loc11_);
                  _loc13_ = li8(_loc12_);
                  _loc14_ = _loc11_ % 10;
                  _loc15_ = li32(_loc7_ + 12);
                  _loc6_ = _loc9_;
                  if(_loc15_ != 0)
                  {
                     do
                     {
                        _loc6_ = _loc15_;
                        _loc4_ = _loc6_ + 8;
                        _loc12_ = li32(_loc6_ + 16);
                        if(_loc14_ >= _loc12_)
                        {
                           _loc4_ = _loc6_ + 12;
                        }
                        _loc15_ = li32(_loc4_);
                     }
                     while(_loc15_ != 0);
                     
                  }
                  _loc10_ = 1;
                  if(_loc9_ != _loc6_)
                  {
                     _loc10_ = 1;
                     if(_loc14_ >= li32(_loc6_ + 16))
                     {
                        _loc10_ = 0;
                     }
                  }
                  _loc1_ = int(_loc1_ - 16);
                  si32(24,_loc1_);
                  ESP = _loc1_;
                  F__Znwj();
                  _loc1_ = int(_loc1_ + 16);
                  _loc8_ = eax;
                  if(_loc8_ != -16)
                  {
                     si32(_loc14_,_loc8_ + 16);
                     si8(_loc13_ ^ _loc14_,_loc8_ + 20);
                  }
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc9_,_loc1_ + 12);
                  si32(_loc6_,_loc1_ + 8);
                  si32(_loc8_,_loc1_ + 4);
                  si32(_loc10_,_loc1_);
                  ESP = _loc1_;
                  F__ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_();
                  _loc1_ = int(_loc1_ + 16);
                  _loc12_ = li32(_loc7_ + 24);
                  _loc12_ = int(_loc12_ + 1);
                  si32(_loc12_,_loc7_ + 24);
                  _loc11_ = _loc11_ + 1;
                  _loc2_ = 1;
               }
               while(_loc5_ != _loc11_);
               
            }
         }
      }
      eax = _loc2_;
      _loc1_ = _loc16_;
      ESP = _loc1_;
   }
}
