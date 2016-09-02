package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.li8;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cc5UFCUx_2E_o_3A_f06dd027_2D_1a9a_2D_4eae_2D_8cb5_2D_2cc3d6e72edf.*;
   
   public function F__Z8sub_DF45Pc() : void
   {
      var _loc14_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:int = 0;
      var _loc5_:int = 0;
      var _loc10_:int = 0;
      var _loc9_:* = 0;
      var _loc7_:int = 0;
      var _loc3_:int = 0;
      var _loc12_:* = 0;
      var _loc1_:* = int(ESP);
      _loc14_ = _loc1_;
      _loc1_ = int(_loc1_ - 336);
      _loc1_ = int(_loc1_ - 16);
      si32(33,_loc1_ + 8);
      si32(L__ZZ8sub_DF45PcE4C_2E_27,_loc1_ + 4);
      _loc2_ = _loc14_ - 33;
      si32(_loc2_,_loc1_);
      ESP = _loc1_;
      Fmemcpy();
      _loc1_ = int(_loc1_ + 16);
      _loc1_ = int(_loc1_ - 16);
      si32(33,_loc1_ + 8);
      _loc3_ = 0;
      si32(_loc3_,_loc1_ + 4);
      _loc5_ = _loc14_ - 324;
      si32(_loc5_,_loc1_);
      ESP = _loc1_;
      Fmemset();
      _loc1_ = int(_loc1_ + 16);
      _loc7_ = 256;
      _loc8_ = li32(_loc14_);
      _loc9_ = _loc3_;
      do
      {
         _loc10_ = _loc14_ - 291;
         var _loc11_:* = int(_loc10_ - _loc7_);
         si8(_loc9_,_loc11_ + 256);
         _loc9_ = int(_loc9_ + 1);
         _loc7_ = _loc7_ + -1;
         _loc12_ = _loc3_;
      }
      while(_loc7_ != 0);
      
      do
      {
         _loc11_ = int(_loc12_ % 14);
         _loc11_ = int(L__ZZ8sub_DF45PcE4C_2E_28 + _loc11_);
         _loc11_ = li8(_loc11_);
         var _loc13_:* = int(_loc11_ + _loc3_);
         _loc11_ = int(_loc10_ + _loc12_);
         var _loc6_:* = li8(_loc11_);
         _loc3_ = _loc13_ + _loc6_;
         _loc13_ = _loc3_ & 255;
         _loc13_ = int(_loc10_ + _loc13_);
         var _loc4_:* = li8(_loc13_);
         si8(_loc4_,_loc11_);
         si8(_loc6_,_loc13_);
         _loc12_ = int(_loc12_ + 1);
      }
      while(_loc12_ != 256);
      
      _loc11_ = li32(_loc14_ - 253);
      si32(_loc11_,_loc14_ - 296);
      _loc11_ = li32(_loc14_ - 257);
      si32(_loc11_,_loc14_ - 300);
      _loc11_ = li32(_loc14_ - 261);
      si32(_loc11_,_loc14_ - 304);
      _loc11_ = li32(_loc14_ - 265);
      si32(_loc11_,_loc14_ - 308);
      _loc11_ = li32(_loc14_ - 269);
      si32(_loc11_,_loc14_ - 312);
      _loc11_ = li32(_loc14_ - 273);
      si32(_loc11_,_loc14_ - 316);
      _loc11_ = li32(_loc14_ - 277);
      si32(_loc11_,_loc14_ - 320);
      _loc11_ = li32(_loc14_ - 281);
      si32(_loc11_,_loc14_ - 324);
      _loc1_ = int(_loc1_ - 16);
      si32(_loc5_,_loc1_);
      ESP = _loc1_;
      F__Z8sub_33D8Ph();
      _loc1_ = int(_loc1_ + 16);
      _loc1_ = int(_loc1_ - 16);
      si32(_loc5_,_loc1_ + 4);
      si32(_loc2_,_loc1_);
      ESP = _loc1_;
      F__Z8sub_33D4PhS_();
      _loc1_ = int(_loc1_ + 16);
      _loc1_ = int(_loc1_ - 16);
      si32(256,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      si32(_loc8_,_loc1_);
      ESP = _loc1_;
      Fmemset();
      _loc1_ = int(_loc1_ + 16);
      _loc1_ = int(_loc1_ - 16);
      si32(_loc2_,_loc1_);
      ESP = _loc1_;
      F_strlen();
      _loc1_ = int(_loc1_ + 16);
      _loc1_ = int(_loc1_ - 16);
      si32(int(eax),_loc1_ + 8);
      si32(_loc2_,_loc1_ + 4);
      si32(_loc8_,_loc1_);
      ESP = _loc1_;
      Fmemcpy();
      _loc1_ = int(_loc1_ + 16);
      _loc1_ = _loc14_;
      ESP = _loc1_;
   }
}
