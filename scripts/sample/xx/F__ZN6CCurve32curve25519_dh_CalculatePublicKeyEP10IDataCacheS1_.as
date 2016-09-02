package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccLa1Ogg_2E_o_3A_d2a01b4f_2D_d3fd_2D_4bec_2D_9cd5_2D_5487db2cdd80.*;
   
   public function F__ZN6CCurve32curve25519_dh_CalculatePublicKeyEP10IDataCacheS1_() : void
   {
      var _loc48_:* = 0;
      var _loc46_:* = 0;
      var _loc25_:* = 0;
      var _loc31_:int = 0;
      var _loc21_:int = 0;
      var _loc20_:* = 0;
      var _loc42_:int = 0;
      var _loc18_:int = 0;
      var _loc12_:int = 0;
      var _loc30_:* = 0;
      var _loc38_:* = 0;
      var _loc40_:* = 0;
      var _loc44_:* = 0;
      var _loc6_:int = 0;
      var _loc14_:int = 0;
      var _loc23_:int = 0;
      var _loc28_:int = 0;
      var _loc27_:* = 0;
      var _loc35_:* = 0;
      var _loc33_:int = 0;
      var _loc4_:int = 0;
      var _loc36_:int = 0;
      var _loc29_:int = 0;
      var _loc1_:* = int(ESP);
      _loc48_ = _loc1_;
      _loc1_ = int(_loc1_ - 208);
      _loc25_ = li32(_loc48_ + 4);
      _loc27_ = li32(_loc25_);
      _loc30_ = li32(_loc27_ + 20);
      _loc1_ = int(_loc1_ - 16);
      _loc33_ = 0;
      si32(_loc33_,_loc1_ + 4);
      si32(_loc25_,_loc1_);
      ESP = _loc1_;
      ptr2fun[_loc30_]();
      _loc1_ = int(_loc1_ + 16);
      _loc35_ = int(eax);
      _loc27_ = li32(_loc25_);
      _loc38_ = li32(_loc27_ + 24);
      _loc1_ = int(_loc1_ - 16);
      si32(_loc33_,_loc1_ + 8);
      _loc27_ = _loc35_ & 248;
      si32(_loc27_,_loc1_ + 4);
      si32(_loc25_,_loc1_);
      ESP = _loc1_;
      ptr2fun[_loc38_]();
      _loc1_ = int(_loc1_ + 16);
      _loc27_ = li32(_loc25_);
      _loc40_ = li32(_loc27_ + 20);
      _loc1_ = int(_loc1_ - 16);
      _loc42_ = 31;
      si32(_loc42_,_loc1_ + 4);
      si32(_loc25_,_loc1_);
      ESP = _loc1_;
      ptr2fun[_loc40_]();
      _loc1_ = int(_loc1_ + 16);
      _loc27_ = int(eax);
      _loc35_ = li32(_loc25_);
      _loc44_ = li32(_loc35_ + 24);
      _loc1_ = int(_loc1_ - 16);
      si32(_loc42_,_loc1_ + 8);
      _loc27_ = _loc27_ & 63;
      _loc27_ = _loc27_ | 64;
      si32(_loc27_,_loc1_ + 4);
      si32(_loc25_,_loc1_);
      ESP = _loc1_;
      ptr2fun[_loc44_]();
      _loc1_ = int(_loc1_ + 16);
      si32(_loc33_,_loc48_ - 180);
      si32(_loc33_,_loc48_ - 184);
      si32(_loc33_,_loc48_ - 188);
      si32(_loc33_,_loc48_ - 192);
      si32(_loc33_,_loc48_ - 196);
      si32(_loc33_,_loc48_ - 200);
      si32(_loc33_,_loc48_ - 204);
      si32(_loc33_,_loc48_ - 208);
      _loc46_ = li32(_loc48_);
      do
      {
         _loc6_ = _loc48_ - 208;
         _loc27_ = int(_loc6_ - _loc33_);
         _loc35_ = int(__ZL15g_ecp_BasePoint - _loc33_);
         _loc35_ = li8(_loc35_);
         _loc35_ = _loc35_ ^ 67;
         si8(_loc35_,_loc27_);
         _loc33_ = _loc33_ + -1;
      }
      while(_loc33_ != -32);
      
      _loc4_ = 0;
      while(true)
      {
         _loc27_ = _loc4_ << 2;
         _loc35_ = int(_loc6_ + _loc27_);
         var _loc10_:* = li8(_loc35_);
         var _loc8_:* = _loc35_ | 1;
         _loc8_ = li8(_loc8_);
         _loc8_ = _loc8_ << 8;
         _loc10_ = _loc8_ | _loc10_;
         _loc8_ = _loc35_ | 2;
         _loc8_ = li8(_loc8_);
         _loc8_ = _loc8_ << 16;
         _loc10_ = _loc10_ | _loc8_;
         _loc35_ = _loc35_ | 3;
         _loc35_ = li8(_loc35_);
         _loc35_ = _loc35_ << 24;
         _loc35_ = _loc10_ | _loc35_;
         _loc14_ = _loc48_ - 176;
         _loc27_ = int(_loc14_ + _loc27_);
         si32(_loc35_,_loc27_);
         _loc4_ = _loc4_ + 1;
         _loc12_ = 30;
         _loc18_ = 32;
         if(_loc4_ != 8)
         {
            continue;
         }
         break;
      }
      loop2:
      while(true)
      {
         if(_loc18_ <= 0)
         {
            _loc29_ = 32;
            while(true)
            {
               _loc27_ = li32(_loc46_);
               var _loc37_:* = li32(_loc27_ + 12);
               _loc1_ = int(_loc1_ - 16);
               si32(0,_loc1_ + 4);
               si32(_loc46_,_loc1_);
               ESP = _loc1_;
               ptr2fun[_loc37_]();
               _loc1_ = int(_loc1_ + 16);
               _loc29_ = _loc29_ + -1;
               if(_loc29_ == 0)
               {
                  break loop2;
               }
            }
         }
         else
         {
            _loc27_ = li32(_loc25_);
            var _loc16_:* = li32(_loc27_ + 20);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc42_,_loc1_ + 4);
            si32(_loc25_,_loc1_);
            ESP = _loc1_;
            ptr2fun[_loc16_]();
            _loc21_ = 0;
            _loc1_ = int(_loc1_ + 16);
            _loc20_ = int(eax);
            while(_loc21_ < 8)
            {
               _loc27_ = _loc20_ & 128;
               if(_loc27_ != 0)
               {
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc14_,_loc1_ + 4);
                  _loc27_ = int(_edp_custom_blinding + 32);
                  si32(_loc27_,_loc1_ + 8);
                  _loc23_ = _loc48_ - 64;
                  _loc31_ = _loc23_ + 32;
                  si32(_loc31_,_loc1_);
                  ESP = _loc1_;
                  F_ecp_Add();
                  _loc1_ = int(_loc1_ + 16);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc31_,_loc1_ + 8);
                  si32(_loc14_,_loc1_ + 4);
                  si32(_loc23_,_loc1_);
                  ESP = _loc1_;
                  F_ecp_MulReduce();
                  _loc1_ = int(_loc1_ + 16);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc23_,_loc1_ + 4);
                  _loc28_ = _loc48_ - 128;
                  si32(_loc28_,_loc1_);
                  ESP = _loc1_;
                  F__Z14ecp_MontDoubleP8XZ_POINTPKS_();
                  _loc1_ = int(_loc1_ + 16);
                  si32(_loc23_,_loc48_ - 132);
                  si32(_loc28_,_loc48_ - 136);
                  si32(_loc28_,_loc48_ - 140);
                  si32(_loc23_,_loc48_ - 144);
                  _loc36_ = 7 - _loc21_;
                  _loc27_ = int(_loc21_ + 1);
                  if(_loc27_ <= 7)
                  {
                     do
                     {
                        _loc27_ = int(_loc20_ >>> 4);
                        _loc35_ = _loc27_ & 4;
                        _loc27_ = int(_loc48_ - 136);
                        _loc27_ = int(_loc27_ + _loc35_);
                        _loc27_ = li32(_loc27_);
                        _loc10_ = int(_loc48_ - 144);
                        _loc35_ = int(_loc10_ + _loc35_);
                        _loc35_ = li32(_loc35_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc14_,_loc1_ + 8);
                        si32(_loc35_,_loc1_ + 4);
                        si32(_loc27_,_loc1_);
                        ESP = _loc1_;
                        F__Z8ecp_MontP8XZ_POINTS0_PKj();
                        _loc1_ = int(_loc1_ + 16);
                        _loc36_ = _loc36_ + -1;
                        _loc20_ = _loc20_ << 1;
                     }
                     while(_loc36_ != 0);
                     
                  }
                  if(_loc42_ >= 1)
                  {
                     do
                     {
                        var _loc34_:* = _loc12_;
                        _loc27_ = li32(_loc25_);
                        var _loc41_:* = li32(_loc27_ + 20);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc34_,_loc1_ + 4);
                        si32(_loc25_,_loc1_);
                        ESP = _loc1_;
                        ptr2fun[_loc41_]();
                        _loc1_ = int(_loc1_ + 16);
                        var _loc39_:int = eax;
                        _loc27_ = _loc39_ & 128;
                        _loc35_ = int(_loc27_ >>> 5);
                        var _loc45_:int = _loc48_ - 136;
                        _loc27_ = int(_loc45_ + _loc35_);
                        _loc27_ = li32(_loc27_);
                        var _loc43_:int = _loc48_ - 144;
                        _loc35_ = int(_loc43_ + _loc35_);
                        _loc35_ = li32(_loc35_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc14_,_loc1_ + 8);
                        si32(_loc35_,_loc1_ + 4);
                        si32(_loc27_,_loc1_);
                        _loc27_ = int(_loc39_ >>> 4);
                        var _loc47_:* = _loc27_ & 4;
                        var _loc3_:int = _loc45_ + _loc47_;
                        ESP = _loc1_;
                        F__Z8ecp_MontP8XZ_POINTS0_PKj();
                        _loc1_ = int(_loc1_ + 16);
                        _loc27_ = li32(_loc3_);
                        _loc35_ = int(_loc43_ + _loc47_);
                        _loc35_ = li32(_loc35_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc14_,_loc1_ + 8);
                        si32(_loc35_,_loc1_ + 4);
                        si32(_loc27_,_loc1_);
                        _loc27_ = int(_loc39_ >>> 3);
                        var _loc2_:* = _loc27_ & 4;
                        var _loc7_:int = _loc45_ + _loc2_;
                        ESP = _loc1_;
                        F__Z8ecp_MontP8XZ_POINTS0_PKj();
                        _loc1_ = int(_loc1_ + 16);
                        _loc27_ = li32(_loc7_);
                        _loc35_ = int(_loc43_ + _loc2_);
                        _loc35_ = li32(_loc35_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc14_,_loc1_ + 8);
                        si32(_loc35_,_loc1_ + 4);
                        si32(_loc27_,_loc1_);
                        _loc27_ = int(_loc39_ >>> 2);
                        var _loc5_:* = _loc27_ & 4;
                        var _loc11_:int = _loc45_ + _loc5_;
                        ESP = _loc1_;
                        F__Z8ecp_MontP8XZ_POINTS0_PKj();
                        _loc1_ = int(_loc1_ + 16);
                        _loc27_ = li32(_loc11_);
                        _loc35_ = int(_loc43_ + _loc5_);
                        _loc35_ = li32(_loc35_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc14_,_loc1_ + 8);
                        si32(_loc35_,_loc1_ + 4);
                        si32(_loc27_,_loc1_);
                        _loc27_ = int(_loc39_ >>> 1);
                        var _loc9_:* = _loc27_ & 4;
                        var _loc15_:int = _loc45_ + _loc9_;
                        ESP = _loc1_;
                        F__Z8ecp_MontP8XZ_POINTS0_PKj();
                        _loc1_ = int(_loc1_ + 16);
                        _loc27_ = li32(_loc15_);
                        _loc35_ = int(_loc43_ + _loc9_);
                        _loc35_ = li32(_loc35_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc14_,_loc1_ + 8);
                        si32(_loc35_,_loc1_ + 4);
                        si32(_loc27_,_loc1_);
                        var _loc13_:* = _loc39_ & 4;
                        var _loc19_:int = _loc45_ + _loc13_;
                        ESP = _loc1_;
                        F__Z8ecp_MontP8XZ_POINTS0_PKj();
                        _loc1_ = int(_loc1_ + 16);
                        _loc27_ = li32(_loc19_);
                        _loc35_ = int(_loc43_ + _loc13_);
                        _loc35_ = li32(_loc35_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc14_,_loc1_ + 8);
                        si32(_loc35_,_loc1_ + 4);
                        si32(_loc27_,_loc1_);
                        _loc27_ = _loc39_ << 1;
                        var _loc17_:* = _loc27_ & 4;
                        var _loc22_:int = _loc45_ + _loc17_;
                        ESP = _loc1_;
                        F__Z8ecp_MontP8XZ_POINTS0_PKj();
                        _loc1_ = int(_loc1_ + 16);
                        _loc27_ = li32(_loc22_);
                        _loc35_ = int(_loc43_ + _loc17_);
                        _loc35_ = li32(_loc35_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc14_,_loc1_ + 8);
                        si32(_loc35_,_loc1_ + 4);
                        si32(_loc27_,_loc1_);
                        _loc27_ = _loc39_ & 1;
                        var _loc26_:* = _loc27_ << 2;
                        var _loc24_:int = _loc45_ + _loc26_;
                        ESP = _loc1_;
                        F__Z8ecp_MontP8XZ_POINTS0_PKj();
                        _loc1_ = int(_loc1_ + 16);
                        _loc27_ = li32(_loc24_);
                        _loc35_ = int(_loc43_ + _loc26_);
                        _loc35_ = li32(_loc35_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc14_,_loc1_ + 8);
                        si32(_loc35_,_loc1_ + 4);
                        si32(_loc27_,_loc1_);
                        ESP = _loc1_;
                        F__Z8ecp_MontP8XZ_POINTS0_PKj();
                        _loc1_ = int(_loc1_ + 16);
                        _loc12_ = _loc34_ + -1;
                     }
                     while(_loc34_ != 0);
                     
                  }
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc31_,_loc1_ + 4);
                  var _loc32_:int = _loc28_ + 32;
                  si32(_loc32_,_loc1_);
                  ESP = _loc1_;
                  F_ecp_Inverse();
                  _loc1_ = int(_loc1_ + 16);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc32_,_loc1_ + 8);
                  si32(_loc23_,_loc1_ + 4);
                  si32(_loc14_,_loc1_);
                  ESP = _loc1_;
                  F_ecp_MulMod();
                  _loc1_ = int(_loc1_ + 16);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc14_,_loc1_ + 4);
                  si32(_loc46_,_loc1_);
                  ESP = _loc1_;
                  F__Z16ecp_WordsToBytesP10IDataCachePKj();
                  _loc1_ = int(_loc1_ + 16);
                  break loop2;
               }
               _loc20_ = _loc20_ << 1;
               _loc21_ = _loc21_ + 1;
            }
            _loc42_ = _loc42_ + -1;
            _loc18_ = _loc18_ + -1;
            _loc12_ = _loc12_ + -1;
            continue;
         }
      }
      _loc1_ = _loc48_;
      ESP = _loc1_;
   }
}
