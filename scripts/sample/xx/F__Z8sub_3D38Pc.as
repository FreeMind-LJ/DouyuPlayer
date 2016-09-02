package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.li8;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cc5UFCUx_2E_o_3A_f06dd027_2D_1a9a_2D_4eae_2D_8cb5_2D_2cc3d6e72edf.*;
   
   public function F__Z8sub_3D38Pc() : void
   {
      var _loc2_:* = 0;
      var _loc8_:* = 0;
      var _loc4_:int = 0;
      var _loc5_:int = 0;
      var _loc10_:int = 0;
      var _loc1_:int = 0;
      var _loc9_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:int = 0;
      var _loc11_:* = 0;
      var _loc3_:* = int(ESP);
      _loc2_ = _loc3_;
      _loc3_ = int(_loc3_ - 80);
      _loc3_ = int(_loc3_ - 16);
      si32(33,_loc3_ + 8);
      si32(L__ZZ8sub_3D38PcE4C_2E_12,_loc3_ + 4);
      _loc4_ = _loc2_ - 33;
      si32(_loc4_,_loc3_);
      ESP = _loc3_;
      Fmemcpy();
      _loc3_ = int(_loc3_ + 16);
      _loc3_ = int(_loc3_ - 16);
      si32(33,_loc3_ + 8);
      si32(L__ZZ8sub_DF10PcE3C_2E_3,_loc3_ + 4);
      _loc5_ = _loc2_ - 66;
      si32(_loc5_,_loc3_);
      ESP = _loc3_;
      Fmemcpy();
      _loc3_ = int(_loc3_ + 16);
      _loc6_ = 48;
      _loc7_ = 0;
      _loc8_ = li32(_loc2_);
      _loc9_ = _loc7_;
      while(true)
      {
         _loc10_ = _loc5_ - _loc9_;
         si8(_loc6_,_loc10_);
         _loc11_ = 59;
         if(_loc9_ != -31)
         {
            var _loc12_:* = li8(_loc10_ + 1);
            _loc6_ = _loc12_ ^ 32;
            _loc9_ = int(_loc9_ + -1);
            continue;
         }
         break;
      }
      while(true)
      {
         _loc1_ = _loc4_ - _loc7_;
         si8(_loc11_,_loc1_);
         if(_loc7_ != -31)
         {
            _loc12_ = li8(_loc1_ + 1);
            _loc11_ = _loc12_ ^ 32;
            _loc7_ = _loc7_ + -1;
            continue;
         }
         break;
      }
      _loc3_ = int(_loc3_ - 16);
      si32(256,_loc3_ + 8);
      si32(0,_loc3_ + 4);
      si32(_loc8_,_loc3_);
      ESP = _loc3_;
      Fmemset();
      _loc3_ = int(_loc3_ + 16);
      _loc3_ = int(_loc3_ - 16);
      si32(_loc8_,_loc3_ + 8);
      si32(_loc5_,_loc3_ + 4);
      si32(_loc4_,_loc3_);
      ESP = _loc3_;
      F__Z8sub_3D20PhS_S_();
      _loc3_ = int(_loc3_ + 16);
      _loc3_ = _loc2_;
      ESP = _loc3_;
   }
}
