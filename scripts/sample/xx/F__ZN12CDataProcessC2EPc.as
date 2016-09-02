package sample.xx
{
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccf8iwcn_2E_o_3A_97b2014d_2D_8ddb_2D_4d42_2D_b61d_2D_986fcc55eb9e.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN12CDataProcessC2EPc() : void
   {
      var _loc13_:* = 0;
      var _loc14_:int = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = 0;
      var _loc11_:* = 0;
      var _loc4_:int = 0;
      var _loc6_:int = 0;
      var _loc3_:* = 0;
      var _loc9_:int = 0;
      var _loc10_:* = 0;
      var _loc12_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = int(ESP);
      while(true)
      {
         if(!_loc14_)
         {
            _loc13_ = _loc1_;
            _loc1_ = int(_loc1_ - 96);
            _loc2_ = li8(__ZN12CDataProcess9init_flagE);
            si32(L_LSDA_17,_loc13_ - 28);
            si32(___gxx_personality_sj0,_loc13_ - 32);
            _loc3_ = _loc13_;
            si32(_loc3_,_loc13_ - 24);
            _loc3_ = _loc1_;
            si32(_loc3_,_loc13_ - 16);
            _loc4_ = _loc13_ - 56;
            _loc6_ = _loc4_ + 32;
            eax = setjmp(_loc6_,1,_loc1_);
         }
         else if(int(_loc14_) - 1)
         {
            throw "bad longjmp";
         }
         _loc3_ = int(eax);
         if(_loc3_ == 0)
         {
            _loc7_ = li32(_loc13_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc4_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Register();
            _loc1_ = int(_loc1_ + 16);
            _loc3_ = _loc2_ & 255;
            if(_loc3_ == 0)
            {
               _loc3_ = _loc4_ | 4;
               si32(-1,_loc3_);
               ESP = _loc1_;
               F__Z12InitialCachev();
               si8(1,__ZN12CDataProcess9init_flagE);
               si32(0,_loc7_);
            }
            _loc8_ = li32(_loc13_ + 4);
            _loc1_ = int(_loc1_ - 16);
            si32(33,_loc1_ + 8);
            si32(0,_loc1_ + 4);
            _loc9_ = _loc13_ - 96;
            si32(_loc9_,_loc1_);
            ESP = _loc1_;
            Fmemset();
            _loc1_ = int(_loc1_ + 16);
            if(_loc8_ != 0)
            {
               _loc3_ = li8(_loc8_);
               if(_loc3_ != 0)
               {
                  _loc3_ = li32(_loc8_ + 28);
                  si32(_loc3_,_loc13_ - 68);
                  _loc3_ = li32(_loc8_ + 24);
                  si32(_loc3_,_loc13_ - 72);
                  _loc3_ = li32(_loc8_ + 20);
                  si32(_loc3_,_loc13_ - 76);
                  _loc3_ = li32(_loc8_ + 16);
                  si32(_loc3_,_loc13_ - 80);
                  _loc3_ = li32(_loc8_ + 12);
                  si32(_loc3_,_loc13_ - 84);
                  _loc3_ = li32(_loc8_ + 8);
                  si32(_loc3_,_loc13_ - 88);
                  _loc3_ = li32(_loc8_ + 4);
                  si32(_loc3_,_loc13_ - 92);
                  _loc3_ = li32(_loc8_);
                  si32(_loc3_,_loc13_ - 96);
               }
               addr314:
               _loc10_ = _loc4_ | 4;
               si32(-1,_loc10_);
               _loc1_ = int(_loc1_ - 16);
               si32(24,_loc1_);
               ESP = _loc1_;
               F__Znwj();
               _loc1_ = int(_loc1_ + 16);
               _loc3_ = int(eax);
               si32(_loc3_,_loc13_ - 60);
               _loc11_ = li32(_loc13_ - 60);
               si32(1,_loc10_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc11_,_loc1_);
               ESP = _loc1_;
               F__ZN5C4KeyC1Ev();
               _loc1_ = int(_loc1_ + 16);
               si32(_loc11_,_loc7_ + 4);
               si32(-1,_loc10_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc9_,_loc1_ + 8);
               si32(0,_loc1_ + 4);
               si32(_loc11_,_loc1_);
               ESP = _loc1_;
               F__ZN5C4Key6SetKeyENS_9eKeyIndexEPKh();
               _loc1_ = int(_loc1_ + 16);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc4_,_loc1_);
               ESP = _loc1_;
               F__Unwind_SjLj_Unregister();
               _loc1_ = int(_loc1_ + 16);
               _loc1_ = _loc13_;
               ESP = _loc1_;
               return;
            }
            _loc3_ = _loc4_ | 4;
            si32(-1,_loc3_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc9_,_loc1_ + 8);
            si32(0,_loc1_ + 4);
            si32(L__2E_str20,_loc1_);
            ESP = _loc1_;
            F__Z9Md5CreatePKciPc();
            _loc1_ = int(_loc1_ + 16);
            §§goto(addr314);
         }
         else
         {
            while(true)
            {
               _loc3_ = _loc4_ | 4;
               _loc3_ = li32(_loc3_);
               if(_loc3_ != 0)
               {
                  break;
               }
               _loc12_ = li32(_loc13_ - 48);
               _loc5_ = li32(_loc13_ - 44);
               _loc3_ = li32(_loc13_ - 60);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc3_,_loc1_);
               ESP = _loc1_;
               F__ZdlPv();
               _loc1_ = int(_loc1_ + 16);
               _loc3_ = _loc4_ | 4;
               si32(-1,_loc3_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc12_,_loc1_);
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
}
