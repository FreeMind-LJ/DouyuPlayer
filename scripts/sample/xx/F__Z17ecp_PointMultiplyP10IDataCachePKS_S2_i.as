package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccLa1Ogg_2E_o_3A_d2a01b4f_2D_d3fd_2D_4bec_2D_9cd5_2D_5487db2cdd80.*;
   
   public function F__Z17ecp_PointMultiplyP10IDataCachePKS_S2_i() : void
   {
      var _loc40_:* = 0;
      var _loc28_:* = 0;
      var _loc26_:* = 0;
      var _loc6_:int = 0;
      var _loc34_:int = 0;
      var _loc36_:* = 0;
      var _loc24_:* = 0;
      var _loc30_:int = 0;
      var _loc22_:int = 0;
      var _loc38_:int = 0;
      var _loc4_:int = 0;
      var _loc10_:int = 0;
      var _loc12_:int = 0;
      var _loc15_:int = 0;
      var _loc1_:* = int(ESP);
      _loc40_ = _loc1_;
      _loc1_ = int(_loc1_ - 176);
      _loc1_ = int(_loc1_ - 16);
      var _loc21_:* = li32(_loc40_ + 4);
      si32(_loc21_,_loc1_ + 4);
      _loc22_ = _loc40_ - 32;
      si32(_loc22_,_loc1_);
      ESP = _loc1_;
      F__Z16ecp_BytesToWordsPjPK10IDataCache();
      _loc1_ = int(_loc1_ + 16);
      _loc24_ = li32(_loc40_ + 12);
      _loc26_ = li32(_loc40_ + 8);
      _loc28_ = li32(_loc40_);
      loop0:
      while(true)
      {
         if(_loc24_ <= 0)
         {
            _loc15_ = 32;
            while(true)
            {
               _loc21_ = li32(_loc28_);
               var _loc13_:* = li32(_loc21_ + 12);
               _loc1_ = int(_loc1_ - 16);
               si32(0,_loc1_ + 4);
               si32(_loc28_,_loc1_);
               ESP = _loc1_;
               ptr2fun[_loc13_]();
               _loc1_ = int(_loc1_ + 16);
               _loc15_ = _loc15_ + -1;
               if(_loc15_ == 0)
               {
                  break loop0;
               }
            }
         }
         else
         {
            _loc30_ = _loc24_ + -1;
            _loc21_ = li32(_loc26_);
            var _loc32_:* = li32(_loc21_ + 20);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc30_,_loc1_ + 4);
            si32(_loc26_,_loc1_);
            ESP = _loc1_;
            ptr2fun[_loc32_]();
            _loc34_ = 0;
            _loc1_ = int(_loc1_ + 16);
            _loc36_ = int(eax);
            while(_loc34_ < 8)
            {
               _loc21_ = _loc36_ & 128;
               if(_loc21_ != 0)
               {
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc22_,_loc1_ + 4);
                  _loc21_ = int(_edp_custom_blinding + 32);
                  si32(_loc21_,_loc1_ + 8);
                  _loc38_ = _loc40_ - 96;
                  _loc6_ = _loc38_ + 32;
                  si32(_loc6_,_loc1_);
                  ESP = _loc1_;
                  F_ecp_Add();
                  _loc1_ = int(_loc1_ + 16);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc6_,_loc1_ + 8);
                  si32(_loc22_,_loc1_ + 4);
                  si32(_loc38_,_loc1_);
                  ESP = _loc1_;
                  F_ecp_MulReduce();
                  _loc1_ = int(_loc1_ + 16);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc38_,_loc1_ + 4);
                  _loc4_ = _loc40_ - 160;
                  si32(_loc4_,_loc1_);
                  ESP = _loc1_;
                  F__Z14ecp_MontDoubleP8XZ_POINTPKS_();
                  _loc1_ = int(_loc1_ + 16);
                  si32(_loc38_,_loc40_ - 164);
                  si32(_loc4_,_loc40_ - 168);
                  si32(_loc4_,_loc40_ - 172);
                  si32(_loc38_,_loc40_ - 176);
                  _loc10_ = 7 - _loc34_;
                  _loc21_ = int(_loc34_ + 1);
                  if(_loc21_ <= 7)
                  {
                     do
                     {
                        _loc21_ = int(_loc36_ >>> 4);
                        _loc21_ = _loc21_ & 4;
                        var _loc8_:* = int(_loc40_ - 168);
                        _loc8_ = int(_loc8_ + _loc21_);
                        _loc8_ = li32(_loc8_);
                        var _loc14_:int = _loc40_ - 176;
                        _loc21_ = int(_loc14_ + _loc21_);
                        _loc21_ = li32(_loc21_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc22_,_loc1_ + 8);
                        si32(_loc21_,_loc1_ + 4);
                        si32(_loc8_,_loc1_);
                        ESP = _loc1_;
                        F__Z8ecp_MontP8XZ_POINTS0_PKj();
                        _loc1_ = int(_loc1_ + 16);
                        _loc10_ = _loc10_ + -1;
                        _loc36_ = _loc36_ << 1;
                     }
                     while(_loc10_ != 0);
                     
                  }
                  _loc21_ = int(_loc24_ + -1);
                  _loc12_ = _loc24_ + -2;
                  if(_loc21_ >= 1)
                  {
                     do
                     {
                        var _loc17_:* = _loc12_;
                        _loc21_ = li32(_loc26_);
                        var _loc16_:* = li32(_loc21_ + 20);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc17_,_loc1_ + 4);
                        si32(_loc26_,_loc1_);
                        ESP = _loc1_;
                        ptr2fun[_loc16_]();
                        _loc1_ = int(_loc1_ + 16);
                        var _loc19_:int = eax;
                        _loc21_ = _loc19_ & 128;
                        _loc8_ = int(_loc21_ >>> 5);
                        var _loc18_:int = _loc40_ - 168;
                        _loc21_ = int(_loc18_ + _loc8_);
                        _loc21_ = li32(_loc21_);
                        var _loc20_:int = _loc40_ - 176;
                        _loc8_ = int(_loc20_ + _loc8_);
                        _loc8_ = li32(_loc8_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc22_,_loc1_ + 8);
                        si32(_loc8_,_loc1_ + 4);
                        si32(_loc21_,_loc1_);
                        _loc21_ = int(_loc19_ >>> 4);
                        var _loc25_:* = _loc21_ & 4;
                        var _loc23_:int = _loc18_ + _loc25_;
                        ESP = _loc1_;
                        F__Z8ecp_MontP8XZ_POINTS0_PKj();
                        _loc1_ = int(_loc1_ + 16);
                        _loc21_ = li32(_loc23_);
                        _loc8_ = int(_loc20_ + _loc25_);
                        _loc8_ = li32(_loc8_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc22_,_loc1_ + 8);
                        si32(_loc8_,_loc1_ + 4);
                        si32(_loc21_,_loc1_);
                        _loc21_ = int(_loc19_ >>> 3);
                        var _loc29_:* = _loc21_ & 4;
                        var _loc27_:int = _loc18_ + _loc29_;
                        ESP = _loc1_;
                        F__Z8ecp_MontP8XZ_POINTS0_PKj();
                        _loc1_ = int(_loc1_ + 16);
                        _loc21_ = li32(_loc27_);
                        _loc8_ = int(_loc20_ + _loc29_);
                        _loc8_ = li32(_loc8_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc22_,_loc1_ + 8);
                        si32(_loc8_,_loc1_ + 4);
                        si32(_loc21_,_loc1_);
                        _loc21_ = int(_loc19_ >>> 2);
                        var _loc33_:* = _loc21_ & 4;
                        var _loc31_:int = _loc18_ + _loc33_;
                        ESP = _loc1_;
                        F__Z8ecp_MontP8XZ_POINTS0_PKj();
                        _loc1_ = int(_loc1_ + 16);
                        _loc21_ = li32(_loc31_);
                        _loc8_ = int(_loc20_ + _loc33_);
                        _loc8_ = li32(_loc8_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc22_,_loc1_ + 8);
                        si32(_loc8_,_loc1_ + 4);
                        si32(_loc21_,_loc1_);
                        _loc21_ = int(_loc19_ >>> 1);
                        var _loc37_:* = _loc21_ & 4;
                        var _loc35_:int = _loc18_ + _loc37_;
                        ESP = _loc1_;
                        F__Z8ecp_MontP8XZ_POINTS0_PKj();
                        _loc1_ = int(_loc1_ + 16);
                        _loc21_ = li32(_loc35_);
                        _loc8_ = int(_loc20_ + _loc37_);
                        _loc8_ = li32(_loc8_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc22_,_loc1_ + 8);
                        si32(_loc8_,_loc1_ + 4);
                        si32(_loc21_,_loc1_);
                        var _loc39_:* = _loc19_ & 4;
                        var _loc3_:int = _loc18_ + _loc39_;
                        ESP = _loc1_;
                        F__Z8ecp_MontP8XZ_POINTS0_PKj();
                        _loc1_ = int(_loc1_ + 16);
                        _loc21_ = li32(_loc3_);
                        _loc8_ = int(_loc20_ + _loc39_);
                        _loc8_ = li32(_loc8_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc22_,_loc1_ + 8);
                        si32(_loc8_,_loc1_ + 4);
                        si32(_loc21_,_loc1_);
                        _loc21_ = _loc19_ << 1;
                        var _loc2_:* = _loc21_ & 4;
                        var _loc7_:int = _loc18_ + _loc2_;
                        ESP = _loc1_;
                        F__Z8ecp_MontP8XZ_POINTS0_PKj();
                        _loc1_ = int(_loc1_ + 16);
                        _loc21_ = li32(_loc7_);
                        _loc8_ = int(_loc20_ + _loc2_);
                        _loc8_ = li32(_loc8_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc22_,_loc1_ + 8);
                        si32(_loc8_,_loc1_ + 4);
                        si32(_loc21_,_loc1_);
                        _loc21_ = _loc19_ & 1;
                        var _loc5_:* = _loc21_ << 2;
                        var _loc11_:int = _loc18_ + _loc5_;
                        ESP = _loc1_;
                        F__Z8ecp_MontP8XZ_POINTS0_PKj();
                        _loc1_ = int(_loc1_ + 16);
                        _loc21_ = li32(_loc11_);
                        _loc8_ = int(_loc20_ + _loc5_);
                        _loc8_ = li32(_loc8_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc22_,_loc1_ + 8);
                        si32(_loc8_,_loc1_ + 4);
                        si32(_loc21_,_loc1_);
                        ESP = _loc1_;
                        F__Z8ecp_MontP8XZ_POINTS0_PKj();
                        _loc1_ = int(_loc1_ + 16);
                        _loc12_ = _loc17_ + -1;
                     }
                     while(_loc17_ != 0);
                     
                  }
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc6_,_loc1_ + 4);
                  var _loc9_:int = _loc4_ + 32;
                  si32(_loc9_,_loc1_);
                  ESP = _loc1_;
                  F_ecp_Inverse();
                  _loc1_ = int(_loc1_ + 16);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc9_,_loc1_ + 8);
                  si32(_loc38_,_loc1_ + 4);
                  si32(_loc22_,_loc1_);
                  ESP = _loc1_;
                  F_ecp_MulMod();
                  _loc1_ = int(_loc1_ + 16);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc22_,_loc1_ + 4);
                  si32(_loc28_,_loc1_);
                  ESP = _loc1_;
                  F__Z16ecp_WordsToBytesP10IDataCachePKj();
                  _loc1_ = int(_loc1_ + 16);
                  break loop0;
               }
               _loc36_ = _loc36_ << 1;
               _loc34_ = _loc34_ + 1;
            }
            _loc24_ = _loc30_;
            continue;
         }
      }
      _loc1_ = _loc40_;
      ESP = _loc1_;
   }
}
