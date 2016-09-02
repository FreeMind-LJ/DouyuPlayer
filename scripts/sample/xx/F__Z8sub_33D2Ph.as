package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccO1BbeL_2E_o_3A_0ae1a2e1_2D_2183_2D_40f3_2D_9c9a_2D_112fae7f1e86.__ZL1P;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccO1BbeL_2E_o_3A_0ae1a2e1_2D_2183_2D_40f3_2D_9c9a_2D_112fae7f1e86.__ZL2P1;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.si32;
   
   public function F__Z8sub_33D2Ph() : void
   {
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = 0;
      _loc4_ = li32(_block_len);
      if(_loc4_ >= 1)
      {
         do
         {
            var _loc5_:* = int(_keybox + _loc3_);
            var _loc6_:* = li8(_loc5_);
            var _loc7_:* = int(__ZL1P + _loc6_);
            _loc7_ = li8(_loc7_);
            var _loc8_:* = int(__ZL2P1 + _loc6_);
            _loc8_ = li8(_loc8_);
            _loc7_ = int(_loc8_ + _loc7_);
            _loc7_ = int(_loc7_ % 255);
            _loc6_ = _loc7_ ^ _loc6_;
            si8(_loc6_,_loc5_);
            _loc3_ = int(_loc3_ + 1);
         }
         while(_loc3_ < _loc4_);
         
         _loc3_ = 0;
         _loc9_ = 1;
         _loc10_ = _loc3_;
         if(_loc4_ >= 1)
         {
            do
            {
               _loc5_ = 1 << _loc3_;
               _loc6_ = int(_keybox + _loc3_);
               _loc6_ = li8(_loc6_);
               _loc5_ = _loc6_ & _loc5_;
               _loc5_ = int(_loc5_ >>> _loc3_);
               _loc10_ = int(_loc5_ + _loc10_);
               _loc5_ = int(_loc9_ + 1);
               _loc3_ = _loc9_ & 255;
               _loc9_ = _loc5_;
            }
            while(_loc3_ < _loc4_);
            
            _loc3_ = _loc10_ & 255;
         }
      }
      _loc7_ = li32(_keybox);
      _loc6_ = _loc7_ << _loc3_;
      _loc5_ = int(32 - _loc3_);
      _loc7_ = int(_loc7_ >>> _loc5_);
      _loc9_ = _loc6_ | _loc7_;
      si32(_loc9_,_keybox);
      _loc7_ = li32(_keybox + 4);
      _loc6_ = int(_loc7_ >>> _loc5_);
      _loc7_ = _loc7_ << _loc3_;
      _loc6_ = _loc7_ | _loc6_;
      si32(_loc6_,_keybox + 4);
      _loc7_ = li32(_keybox + 8);
      _loc6_ = int(_loc7_ >>> _loc5_);
      _loc7_ = _loc7_ << _loc3_;
      _loc6_ = _loc7_ | _loc6_;
      si32(_loc6_,_keybox + 8);
      _loc7_ = li32(_keybox + 12);
      _loc6_ = int(_loc7_ >>> _loc5_);
      _loc7_ = _loc7_ << _loc3_;
      _loc6_ = _loc7_ | _loc6_;
      si32(_loc6_,_keybox + 12);
      _loc7_ = li32(_keybox + 16);
      _loc6_ = int(_loc7_ >>> _loc5_);
      _loc7_ = _loc7_ << _loc3_;
      _loc6_ = _loc7_ | _loc6_;
      si32(_loc6_,_keybox + 16);
      _loc7_ = li32(_keybox + 20);
      _loc6_ = int(_loc7_ >>> _loc5_);
      _loc7_ = _loc7_ << _loc3_;
      _loc6_ = _loc7_ | _loc6_;
      si32(_loc6_,_keybox + 20);
      _loc7_ = li32(_keybox + 24);
      _loc6_ = int(_loc7_ >>> _loc5_);
      _loc7_ = _loc7_ << _loc3_;
      _loc6_ = _loc7_ | _loc6_;
      si32(_loc6_,_keybox + 24);
      _loc6_ = li32(_keybox + 28);
      _loc5_ = int(_loc6_ >>> _loc5_);
      _loc6_ = _loc6_ << _loc3_;
      _loc5_ = _loc6_ | _loc5_;
      si32(_loc5_,_keybox + 28);
      _loc10_ = _loc4_ >> 1;
      if(_loc10_ >= 1)
      {
         _loc5_ = _loc9_ & 255;
         _loc5_ = int(_keybox + int(_loc5_ % _loc4_));
         _loc5_ = li8(_loc5_);
         si8(_loc5_,_keybox);
         si8(_loc9_,int(_keybox + int(_loc5_ % _loc4_)));
         if(_loc10_ != 1)
         {
            _loc3_ = int(_keybox + 1);
            _loc9_ = int(_loc10_ + -1);
            do
            {
               _loc5_ = li8(_loc3_);
               _loc6_ = int(_loc5_ % _loc4_);
               _loc6_ = int(_keybox + _loc6_);
               _loc6_ = li8(_loc6_);
               si8(_loc6_,_loc3_);
               _loc6_ = int(_loc6_ % _loc4_);
               _loc6_ = int(_keybox + _loc6_);
               si8(_loc5_,_loc6_);
               _loc3_ = int(_loc3_ + 1);
               _loc9_ = int(_loc9_ + -1);
            }
            while(_loc9_ != 0);
            
         }
      }
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
