package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccvjjli2_2E_o_3A_1045e9bd_2D_05f2_2D_4768_2D_82e1_2D_fa723c4aab1a
{
   import sample.xx.ESP;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZL8sub_3D05v() : void
   {
      var _loc13_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = 0;
      var _loc5_:int = 0;
      var _loc12_:* = 0;
      var _loc10_:* = 0;
      var _loc7_:* = 0;
      var _loc11_:* = 0;
      var _loc4_:int = 0;
      var _loc1_:int = ESP;
      _loc13_ = _loc1_;
      _loc1_ = _loc1_ - 4;
      _loc2_ = li32(__ZL3Key);
      _loc3_ = li8(_loc2_);
      si8(_loc3_,__ZL8RoundKey);
      _loc3_ = li8(_loc2_ + 1);
      si8(_loc3_,__ZL8RoundKey + 1);
      _loc3_ = li8(_loc2_ + 2);
      si8(_loc3_,__ZL8RoundKey + 2);
      _loc3_ = li8(_loc2_ + 3);
      si8(_loc3_,__ZL8RoundKey + 3);
      _loc3_ = li8(_loc2_ + 4);
      si8(_loc3_,__ZL8RoundKey + 4);
      _loc3_ = li8(_loc2_ + 5);
      si8(_loc3_,__ZL8RoundKey + 5);
      _loc3_ = li8(_loc2_ + 6);
      si8(_loc3_,__ZL8RoundKey + 6);
      _loc3_ = li8(_loc2_ + 7);
      si8(_loc3_,__ZL8RoundKey + 7);
      _loc3_ = li8(_loc2_ + 8);
      si8(_loc3_,__ZL8RoundKey + 8);
      _loc3_ = li8(_loc2_ + 9);
      si8(_loc3_,__ZL8RoundKey + 9);
      _loc3_ = li8(_loc2_ + 10);
      si8(_loc3_,__ZL8RoundKey + 10);
      _loc3_ = li8(_loc2_ + 11);
      si8(_loc3_,__ZL8RoundKey + 11);
      _loc3_ = li8(_loc2_ + 12);
      si8(_loc3_,__ZL8RoundKey + 12);
      _loc3_ = li8(_loc2_ + 13);
      si8(_loc3_,__ZL8RoundKey + 13);
      _loc3_ = li8(_loc2_ + 14);
      si8(_loc3_,__ZL8RoundKey + 14);
      _loc2_ = li8(_loc2_ + 15);
      si8(_loc2_,__ZL8RoundKey + 15);
      _loc4_ = 4;
      while(true)
      {
         _loc2_ = _loc4_ << 2;
         _loc5_ = __ZL8RoundKey + _loc2_;
         _loc11_ = li32(_loc5_ - 4);
         si32(_loc11_,_loc13_ - 4);
         _loc12_ = int(_loc11_ >>> 24);
         _loc10_ = int(_loc11_ >>> 16);
         _loc7_ = int(_loc11_ >>> 8);
         _loc2_ = _loc4_ & 3;
         if(_loc2_ == 0)
         {
            var _loc6_:* = int(_loc13_ - 4);
            _loc3_ = _loc6_ | 2;
            _loc7_ = li8(int(__ZL4sbox + li8(_loc3_)));
            var _loc8_:* = _loc6_ | 1;
            _loc6_ = _loc6_ | 3;
            si8(_loc7_,_loc8_);
            _loc8_ = int(__ZL4sbox + li8(_loc6_));
            _loc10_ = li8(_loc8_);
            si8(_loc10_,_loc3_);
            _loc12_ = li8(int(__ZL4sbox + (_loc11_ & 255)));
            si8(_loc12_,_loc6_);
            _loc3_ = li8(int(__ZL4Rcon + (int(_loc4_ >>> 2))));
            _loc11_ = _loc3_ ^ li8(int(__ZL4sbox + li8(_loc8_)));
            si8(_loc11_,_loc13_ - 4);
         }
         _loc2_ = li8(_loc5_ - 16);
         _loc2_ = _loc11_ ^ _loc2_;
         si8(_loc2_,_loc5_);
         _loc2_ = li8(_loc5_ - 15);
         _loc2_ = _loc7_ ^ _loc2_;
         si8(_loc2_,_loc5_ + 1);
         _loc2_ = li8(_loc5_ - 14);
         _loc2_ = _loc10_ ^ _loc2_;
         si8(_loc2_,_loc5_ + 2);
         _loc2_ = li8(_loc5_ - 13);
         _loc2_ = _loc12_ ^ _loc2_;
         si8(_loc2_,_loc5_ + 3);
         _loc4_ = _loc4_ + 1;
         if(_loc4_ != 44)
         {
            continue;
         }
         break;
      }
      ESP = _loc13_;
   }
}
