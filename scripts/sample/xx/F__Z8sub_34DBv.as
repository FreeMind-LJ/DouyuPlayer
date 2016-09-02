package sample.xx
{
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccO1BbeL_2E_o_3A_0ae1a2e1_2D_2183_2D_40f3_2D_9c9a_2D_112fae7f1e86.__ZL1P;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccO1BbeL_2E_o_3A_0ae1a2e1_2D_2183_2D_40f3_2D_9c9a_2D_112fae7f1e86.__ZL2P1;
   
   public function F__Z8sub_34DBv() : void
   {
      var _loc1_:* = 0;
      var _loc3_:* = 0;
      var _loc7_:int = 0;
      var _loc2_:int = ESP;
      _loc1_ = _loc2_;
      _loc3_ = 1;
      do
      {
         var _loc4_:* = _loc3_ << 3;
         _loc4_ = int(_msgbox + _loc4_);
         var _loc5_:* = li8(_loc4_ - 8);
         var _loc6_:* = li8(_loc4_);
         _loc5_ = _loc6_ ^ _loc5_;
         si8(_loc5_,_loc4_ - 8);
         _loc5_ = li8(_loc4_ - 7);
         _loc6_ = li8(_loc4_ + 1);
         _loc5_ = _loc6_ ^ _loc5_;
         si8(_loc5_,_loc4_ - 7);
         _loc5_ = li8(_loc4_ - 6);
         _loc6_ = li8(_loc4_ + 2);
         _loc5_ = _loc6_ ^ _loc5_;
         si8(_loc5_,_loc4_ - 6);
         _loc5_ = li8(_loc4_ - 5);
         _loc6_ = li8(_loc4_ + 3);
         _loc5_ = _loc6_ ^ _loc5_;
         si8(_loc5_,_loc4_ - 5);
         _loc5_ = li8(_loc4_ - 4);
         _loc6_ = li8(_loc4_ + 4);
         _loc5_ = _loc6_ ^ _loc5_;
         si8(_loc5_,_loc4_ - 4);
         _loc5_ = li8(_loc4_ - 3);
         _loc6_ = li8(_loc4_ + 5);
         _loc5_ = _loc6_ ^ _loc5_;
         si8(_loc5_,_loc4_ - 3);
         _loc6_ = li8(_loc4_ - 2);
         _loc5_ = li8(_loc4_ + 6);
         _loc5_ = _loc5_ ^ _loc6_;
         si8(_loc5_,_loc4_ - 2);
         _loc6_ = li8(_loc4_ - 1);
         _loc5_ = li8(_loc4_ + 7);
         _loc5_ = _loc5_ ^ _loc6_;
         si8(_loc5_,_loc4_ - 1);
         _loc3_ = int(_loc3_ + 1);
         _loc7_ = 0;
      }
      while(_loc3_ != 4);
      
      do
      {
         _loc4_ = int(_msgbox - _loc7_);
         _loc5_ = li8(_loc4_);
         _loc6_ = int(__ZL1P - _loc7_);
         _loc6_ = li8(_loc6_);
         _loc5_ = _loc6_ ^ _loc5_;
         _loc6_ = li8(_loc4_ + 8);
         var _loc8_:* = _loc6_ ^ _loc5_;
         si8(_loc8_,_loc4_ + 8);
         _loc6_ = li8(_loc4_ + 16);
         _loc8_ = _loc6_ ^ _loc8_;
         si8(_loc8_,_loc4_ + 16);
         _loc6_ = li8(_loc4_ + 24);
         _loc6_ = _loc6_ ^ _loc8_;
         si8(_loc6_,_loc4_ + 24);
         _loc6_ = int(__ZL2P1 - _loc7_);
         _loc6_ = li8(_loc6_);
         _loc5_ = _loc6_ ^ _loc5_;
         si8(_loc5_,_loc4_);
         _loc7_ = _loc7_ + -1;
      }
      while(_loc7_ != -8);
      
      _loc7_ = 31;
      _loc3_ = li8(_msgbox);
      do
      {
         _loc5_ = int(_msgbox - _loc7_);
         _loc4_ = li8(_loc5_ + 32);
         _loc3_ = _loc3_ ^ _loc4_;
         si8(_loc3_,_loc5_ + 32);
         _loc7_ = _loc7_ + -1;
      }
      while(_loc7_ != 0);
      
      ESP = _loc1_;
   }
}
