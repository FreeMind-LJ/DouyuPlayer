package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccf8iwcn_2E_o_3A_97b2014d_2D_8ddb_2D_4d42_2D_b61d_2D_986fcc55eb9e.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN12CDataProcess10unpackDataEPhS0_S0_PtS1_S1_PK10IDataCache() : void
   {
      var _loc20_:* = 0;
      var _loc21_:int = 0;
      var _loc4_:* = 0;
      var _loc6_:* = 0;
      var _loc19_:* = 0;
      var _loc17_:* = 0;
      var _loc15_:* = 0;
      var _loc13_:* = 0;
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc5_:int = 0;
      var _loc7_:int = 0;
      var _loc2_:* = 0;
      var _loc11_:* = 0;
      var _loc18_:* = 0;
      var _loc16_:* = 0;
      var _loc8_:* = 0;
      var _loc14_:* = 0;
      var _loc12_:* = 0;
      var _loc9_:int = 0;
      var _loc1_:* = int(ESP);
      while(true)
      {
         if(!_loc21_)
         {
            _loc20_ = _loc1_;
            _loc1_ = int(_loc1_ - 64);
            _loc1_ = int(_loc1_ - 16);
            si32(32,_loc1_);
            ESP = _loc1_;
            F__Znwj();
            _loc1_ = int(_loc1_ + 16);
            _loc2_ = int(eax);
            si32(_loc2_,_loc20_ - 60);
            _loc3_ = li32(_loc20_ - 60);
            si32(L_LSDA_6,_loc20_ - 28);
            si32(___gxx_personality_sj0,_loc20_ - 32);
            _loc2_ = _loc20_;
            si32(_loc2_,_loc20_ - 24);
            _loc2_ = _loc1_;
            si32(_loc2_,_loc20_ - 16);
            _loc5_ = _loc20_ - 56;
            _loc7_ = _loc5_ + 32;
            _loc9_ = 0;
            eax = setjmp(_loc7_,1,_loc1_);
         }
         else if(int(_loc21_) - 1)
         {
            throw "bad longjmp";
         }
         _loc2_ = int(eax);
         if(_loc2_ == 0)
         {
            _loc1_ = int(_loc1_ - 16);
            si32(_loc5_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Register();
            _loc1_ = int(_loc1_ + 16);
            _loc11_ = _loc5_ | 4;
            si32(1,_loc11_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc3_,_loc1_);
            ESP = _loc1_;
            F__ZN8CMapDataC1Ev();
            _loc1_ = int(_loc1_ + 16);
            _loc2_ = li32(_loc20_ + 28);
            _loc13_ = li32(_loc20_ + 24);
            _loc15_ = li32(_loc20_ + 20);
            _loc17_ = li32(_loc20_ + 16);
            _loc19_ = li32(_loc20_ + 12);
            _loc6_ = li32(_loc20_ + 8);
            _loc4_ = li32(_loc20_ + 4);
            _loc10_ = li32(_loc20_ - 60);
            si32(-1,_loc11_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc2_,_loc1_ + 4);
            si32(_loc10_,_loc1_);
            ESP = _loc1_;
            F__ZN10IDataCache10hex_to_binEPS_PKS_();
            _loc1_ = int(_loc1_ + 16);
            si32(-1,_loc11_);
            _loc1_ = int(_loc1_ - 32);
            si32(_loc4_,_loc1_ + 24);
            si32(_loc19_,_loc1_ + 20);
            si32(_loc6_,_loc1_ + 16);
            si32(_loc13_,_loc1_ + 12);
            si32(_loc17_,_loc1_ + 4);
            si32(_loc10_,_loc1_);
            si32(_loc15_,_loc1_ + 8);
            ESP = _loc1_;
            F__Z11UnPackDataCP10IDataCachePtS1_S1_PhS2_S2_();
            _loc1_ = int(_loc1_ + 32);
            _loc2_ = li16(_loc15_);
            si32(-1,_loc11_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc2_,_loc1_ + 4);
            si32(_loc4_,_loc1_);
            ESP = _loc1_;
            F__Z11DecodeDataCPht();
            _loc1_ = int(_loc1_ + 16);
            do
            {
               _loc2_ = int(_loc4_ + _loc9_);
               _loc8_ = li8(_loc2_);
               _loc14_ = _loc9_ >> 31;
               _loc14_ = int(_loc14_ >>> 27);
               _loc14_ = int(_loc9_ + _loc14_);
               _loc14_ = _loc14_ & -32;
               _loc14_ = int(_loc9_ - _loc14_);
               _loc14_ = int(_loc6_ + _loc14_);
               _loc14_ = li8(_loc14_);
               _loc8_ = _loc14_ ^ _loc8_;
               si8(_loc8_,_loc2_);
               _loc9_ = _loc9_ + 1;
            }
            while(_loc9_ != 36);
            
            _loc2_ = li32(_loc20_ - 60);
            if(_loc2_ != 0)
            {
               _loc2_ = li32(_loc20_ - 60);
               _loc2_ = li32(_loc2_);
               _loc12_ = li32(_loc2_ + 4);
               si32(-1,_loc11_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc10_,_loc1_);
               ESP = _loc1_;
               ptr2fun[_loc12_]();
               _loc1_ = int(_loc1_ + 16);
            }
            _loc1_ = int(_loc1_ - 16);
            si32(_loc5_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Unregister();
            _loc1_ = int(_loc1_ + 16);
            _loc1_ = _loc20_;
            ESP = _loc1_;
            return;
         }
         while(true)
         {
            _loc2_ = _loc5_ | 4;
            _loc2_ = li32(_loc2_);
            if(_loc2_ != 0)
            {
               break;
            }
            _loc18_ = li32(_loc20_ - 48);
            _loc16_ = li32(_loc20_ - 44);
            _loc2_ = li32(_loc20_ - 60);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc2_,_loc1_);
            ESP = _loc1_;
            F__ZdlPv();
            _loc1_ = int(_loc1_ + 16);
            _loc2_ = _loc5_ | 4;
            si32(-1,_loc2_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc18_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Resume();
            _loc1_ = int(_loc1_ + 16);
         }
         while(true)
         {
         }
      }
   }
}
