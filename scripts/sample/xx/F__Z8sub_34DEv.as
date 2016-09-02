package sample.xx
{
   import avm2.intrinsics.memory.li8;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccO1BbeL_2E_o_3A_0ae1a2e1_2D_2183_2D_40f3_2D_9c9a_2D_112fae7f1e86.__ZL1P;
   import avm2.intrinsics.memory.si8;
   
   public function F__Z8sub_34DEv() : void
   {
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:int = 0;
      var _loc6_:int = 0;
      var _loc2_:int = ESP;
      _loc1_ = _loc2_;
      _loc3_ = li8(_keybox);
      _loc4_ = int(__ZL1P + _loc3_);
      _loc4_ = li8(_loc4_);
      _loc5_ = li8(_msgbox);
      _loc4_ = _loc4_ ^ _loc5_;
      _loc3_ = _loc4_ ^ _loc3_;
      si8(_loc3_,_msgbox);
      _loc3_ = li8(_keybox + 1);
      _loc4_ = int(__ZL1P + _loc3_);
      _loc4_ = li8(_loc4_);
      _loc5_ = li8(_msgbox + 1);
      _loc4_ = _loc4_ ^ _loc5_;
      _loc3_ = _loc4_ ^ _loc3_;
      si8(_loc3_,_msgbox + 1);
      _loc3_ = li8(_keybox + 2);
      _loc4_ = int(__ZL1P + _loc3_);
      _loc4_ = li8(_loc4_);
      _loc5_ = li8(_msgbox + 2);
      _loc4_ = _loc4_ ^ _loc5_;
      _loc3_ = _loc4_ ^ _loc3_;
      si8(_loc3_,_msgbox + 2);
      _loc3_ = li8(_keybox + 3);
      _loc4_ = int(__ZL1P + _loc3_);
      _loc5_ = li8(_loc4_);
      _loc4_ = li8(_msgbox + 3);
      _loc4_ = _loc5_ ^ _loc4_;
      _loc3_ = _loc4_ ^ _loc3_;
      si8(_loc3_,_msgbox + 3);
      _loc3_ = li8(_keybox + 4);
      _loc4_ = int(__ZL1P + _loc3_);
      _loc5_ = li8(_loc4_);
      _loc4_ = li8(_msgbox + 4);
      _loc4_ = _loc5_ ^ _loc4_;
      _loc3_ = _loc4_ ^ _loc3_;
      si8(_loc3_,_msgbox + 4);
      _loc3_ = li8(_keybox + 5);
      _loc4_ = int(__ZL1P + _loc3_);
      _loc4_ = li8(_loc4_);
      _loc5_ = li8(_msgbox + 5);
      _loc4_ = _loc4_ ^ _loc5_;
      _loc3_ = _loc4_ ^ _loc3_;
      si8(_loc3_,_msgbox + 5);
      _loc3_ = li8(_keybox + 6);
      _loc4_ = int(__ZL1P + _loc3_);
      _loc4_ = li8(_loc4_);
      _loc5_ = li8(_msgbox + 6);
      _loc4_ = _loc4_ ^ _loc5_;
      _loc3_ = _loc4_ ^ _loc3_;
      si8(_loc3_,_msgbox + 6);
      _loc3_ = li8(_keybox + 7);
      _loc4_ = int(__ZL1P + _loc3_);
      _loc4_ = li8(_loc4_);
      _loc5_ = li8(_msgbox + 7);
      _loc4_ = _loc4_ ^ _loc5_;
      _loc3_ = _loc4_ ^ _loc3_;
      si8(_loc3_,_msgbox + 7);
      _loc6_ = 0;
      _loc7_ = _msgbox + 28;
      do
      {
         _loc3_ = _loc6_ << 3;
         _loc3_ = int(_loc7_ - _loc3_);
         _loc4_ = li8(_loc3_ + 3);
         _loc5_ = li8(_loc3_ + 2);
         _loc4_ = _loc5_ ^ _loc4_;
         si8(_loc4_,_loc3_ + 3);
         _loc4_ = li8(_loc3_ + 1);
         _loc5_ = _loc4_ ^ _loc5_;
         si8(_loc5_,_loc3_ + 2);
         _loc5_ = li8(_loc3_);
         _loc4_ = _loc5_ ^ _loc4_;
         si8(_loc4_,_loc3_ + 1);
         _loc4_ = li8(_loc3_ - 1);
         _loc5_ = _loc4_ ^ _loc5_;
         si8(_loc5_,_loc3_);
         _loc5_ = li8(_loc3_ - 2);
         _loc4_ = _loc5_ ^ _loc4_;
         si8(_loc4_,_loc3_ - 1);
         _loc4_ = li8(_loc3_ - 3);
         _loc5_ = _loc4_ ^ _loc5_;
         si8(_loc5_,_loc3_ - 2);
         _loc5_ = li8(_loc3_ - 4);
         _loc4_ = _loc5_ ^ _loc4_;
         si8(_loc4_,_loc3_ - 3);
         _loc6_ = _loc6_ + 1;
      }
      while(_loc6_ != 4);
      
      ESP = _loc1_;
   }
}
