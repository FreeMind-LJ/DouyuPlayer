package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   
   public function F___divsc3() : void
   {
      var _loc6_:* = 0;
      var _loc16_:* = NaN;
      var _loc21_:* = NaN;
      var _loc12_:* = NaN;
      var _loc18_:* = NaN;
      var _loc29_:* = 0;
      var _loc22_:* = NaN;
      var _loc20_:* = NaN;
      var _loc28_:int = 0;
      var _loc23_:* = 0;
      var _loc31_:* = 0;
      var _loc30_:* = 0;
      var _loc10_:* = NaN;
      var _loc19_:* = NaN;
      var _loc17_:* = NaN;
      var _loc1_:* = NaN;
      var _loc4_:* = NaN;
      var _loc35_:* = 0;
      var _loc33_:* = 0;
      var _loc8_:* = NaN;
      var _loc14_:* = NaN;
      var _loc11_:* = NaN;
      var _loc24_:* = 0;
      var _loc26_:int = 0;
      var _loc25_:* = NaN;
      var _loc27_:* = NaN;
      var _loc5_:* = int(ESP);
      _loc6_ = _loc5_;
      _loc5_ = int(_loc5_ - 112);
      _loc20_ = lf32(_loc6_ + 8);
      sf32(_loc20_,_loc6_ - 12);
      _loc22_ = lf32(_loc6_ + 12);
      sf32(_loc22_,_loc6_ - 16);
      _loc23_ = li32(_loc6_ - 12);
      _loc35_ = _loc23_ & 2147483647;
      si32(_loc35_,_loc6_ - 8);
      _loc33_ = int(_loc6_ - 8);
      _loc31_ = _loc33_ | 4;
      _loc30_ = li32(_loc6_ - 16);
      _loc33_ = _loc30_ & 2147483647;
      si32(_loc33_,_loc31_);
      si32(_loc33_,_loc6_ - 24);
      si32(_loc35_,_loc6_ - 20);
      _loc35_ = int(_loc23_ >>> 23);
      _loc35_ = _loc35_ & 255;
      _loc21_ = lf32(_loc6_ + 4);
      _loc16_ = lf32(_loc6_);
      _loc18_ = lf32(_loc6_ - 24);
      _loc12_ = lf32(_loc6_ - 20);
      if(_loc35_ == 255)
      {
         _loc14_ = _loc18_;
         if((_loc23_ & 8388607) == 0)
         {
         }
         addr203:
         sf32(_loc14_,_loc6_ - 28);
         _loc35_ = li32(_loc6_ - 28);
         _loc29_ = _loc35_ & 2147483647;
         if(_loc29_ == 0)
         {
            si32(_loc29_,_loc6_ - 36);
            var _loc9_:* = -1;
            var _loc13_:* = Number(_loc9_ / lf32(_loc6_ - 36));
            _loc11_ = _loc13_;
         }
         else if(uint(_loc29_) >= 2139095040)
         {
            _loc13_ = _loc14_;
            _loc13_ = Number(_loc13_ * _loc13_);
            _loc11_ = _loc13_;
         }
         else if(uint(_loc29_) <= 8388607)
         {
            var _loc7_:* = 33554432;
            _loc13_ = Number(_loc14_ * _loc7_);
            sf32(_loc13_,_loc6_ - 32);
            _loc35_ = li32(_loc6_ - 32);
            _loc35_ = int(_loc35_ >>> 23);
            _loc35_ = _loc35_ & 255;
            _loc35_ = int(_loc35_ + -152);
            _loc11_ = Number(_loc35_);
         }
         else
         {
            _loc35_ = int(_loc29_ >>> 23);
            _loc35_ = int(_loc35_ + -127);
            _loc11_ = Number(_loc35_);
         }
         sf32(_loc11_,_loc6_ - 40);
         _loc35_ = li32(_loc6_ - 40);
         _loc35_ = int(_loc35_ >>> 23);
         _loc35_ = _loc35_ & 255;
         _loc29_ = 0;
         if(_loc35_ != 255)
         {
            _loc5_ = int(_loc5_ - 16);
            sf32(_loc20_,_loc5_);
            _loc29_ = int(_loc11_);
            _loc35_ = int(0 - _loc29_);
            si32(_loc35_,_loc5_ + 4);
            ESP = _loc5_;
            F_scalbnf();
            _loc5_ = int(_loc5_ + 16);
            _loc20_ = Number(st0);
            _loc5_ = int(_loc5_ - 16);
            si32(_loc35_,_loc5_ + 4);
            sf32(_loc22_,_loc5_);
            ESP = _loc5_;
            F_scalbnf();
            _loc5_ = int(_loc5_ + 16);
            _loc22_ = Number(st0);
         }
         _loc5_ = int(_loc5_ - 16);
         _loc35_ = int(0 - _loc29_);
         si32(_loc35_,_loc5_ + 4);
         _loc19_ = _loc21_;
         _loc17_ = _loc22_;
         var _loc15_:* = Number(_loc17_ * _loc19_);
         _loc7_ = _loc15_;
         _loc15_ = _loc7_;
         _loc1_ = _loc16_;
         _loc10_ = _loc20_;
         var _loc2_:* = Number(_loc10_ * _loc1_);
         var _loc32_:* = _loc2_;
         _loc2_ = _loc32_;
         _loc15_ = Number(_loc2_ + _loc15_);
         _loc7_ = _loc15_;
         _loc15_ = _loc7_;
         _loc2_ = Number(_loc17_ * _loc17_);
         _loc32_ = _loc2_;
         _loc2_ = _loc32_;
         var _loc3_:* = Number(_loc10_ * _loc10_);
         var _loc34_:* = _loc3_;
         _loc3_ = _loc34_;
         _loc2_ = Number(_loc3_ + _loc2_);
         _loc32_ = _loc2_;
         _loc4_ = _loc32_;
         _loc15_ = Number(_loc15_ / _loc4_);
         sf32(_loc15_,_loc5_);
         ESP = _loc5_;
         F_scalbnf();
         _loc5_ = int(_loc5_ + 16);
         _loc25_ = Number(st0);
         _loc5_ = int(_loc5_ - 16);
         si32(_loc35_,_loc5_ + 4);
         _loc13_ = Number(_loc17_ * _loc1_);
         _loc9_ = _loc13_;
         _loc13_ = _loc9_;
         _loc15_ = Number(_loc10_ * _loc19_);
         _loc7_ = _loc15_;
         _loc15_ = _loc7_;
         _loc13_ = Number(_loc15_ - _loc13_);
         _loc9_ = _loc13_;
         _loc13_ = _loc9_;
         _loc13_ = Number(_loc13_ / _loc4_);
         sf32(_loc13_,_loc5_);
         ESP = _loc5_;
         F_scalbnf();
         _loc13_ = _loc25_;
         _loc5_ = int(_loc5_ + 16);
         _loc27_ = Number(st0);
         if(!(_loc13_ == _loc13_ & _loc13_ == _loc13_))
         {
            _loc13_ = _loc27_;
            if(!(_loc13_ == _loc13_ & _loc13_ == _loc13_))
            {
               _loc9_ = 0;
               _loc8_ = _loc9_;
               if(!(_loc4_ != _loc8_ | _loc4_ != _loc4_ | _loc8_ != _loc8_))
               {
                  if(!(_loc1_ == _loc1_ & _loc1_ == _loc1_))
                  {
                     if(_loc19_ != _loc19_ | _loc19_ != _loc19_)
                     {
                     }
                  }
                  sf32(_loc20_,_loc6_ - 44);
                  _loc35_ = li32(_loc6_ - 44);
                  _loc35_ = _loc35_ & -2147483648;
                  _loc35_ = _loc35_ | 2139095040;
                  si32(_loc35_,_loc6_ - 48);
                  _loc13_ = lf32(_loc6_ - 48);
                  _loc15_ = Number(_loc13_ * _loc19_);
                  _loc27_ = _loc15_;
                  _loc13_ = Number(_loc13_ * _loc1_);
                  _loc25_ = _loc13_;
               }
               _loc5_ = int(_loc5_ - 16);
               sf32(_loc16_,_loc5_);
               ESP = _loc5_;
               F___isinff();
               _loc5_ = int(_loc5_ + 16);
               _loc28_ = eax;
               if(_loc28_ == 0)
               {
                  _loc5_ = int(_loc5_ - 16);
                  sf32(_loc21_,_loc5_);
                  ESP = _loc5_;
                  F___isinff();
                  _loc5_ = int(_loc5_ + 16);
                  _loc35_ = int(eax);
                  if(_loc35_ != 0)
                  {
                  }
                  addr930:
                  _loc5_ = int(_loc5_ - 16);
                  sf32(_loc11_,_loc5_);
                  ESP = _loc5_;
                  F___isinff();
                  _loc5_ = int(_loc5_ + 16);
                  _loc35_ = int(eax);
                  if(_loc35_ != 0)
                  {
                     _loc13_ = _loc11_;
                     if(!(_loc13_ <= _loc8_ | _loc13_ != _loc13_ | _loc8_ != _loc8_))
                     {
                        sf32(_loc16_,_loc6_ - 76);
                        _loc35_ = li32(_loc6_ - 76);
                        _loc35_ = int(_loc35_ >>> 23);
                        _loc35_ = _loc35_ & 255;
                        if(_loc35_ != 255)
                        {
                           sf32(_loc21_,_loc6_ - 80);
                           _loc35_ = li32(_loc6_ - 80);
                           _loc35_ = int(_loc35_ >>> 23);
                           _loc35_ = _loc35_ & 255;
                           if(_loc35_ != 255)
                           {
                              _loc5_ = int(_loc5_ - 16);
                              sf32(_loc20_,_loc5_);
                              sf32(_loc20_,_loc6_ - 84);
                              sf32(_loc22_,_loc6_ - 88);
                              ESP = _loc5_;
                              F___isinff();
                              _loc5_ = int(_loc5_ + 16);
                              _loc5_ = int(_loc5_ - 16);
                              sf32(_loc22_,_loc5_);
                              _loc26_ = 0;
                              _loc24_ = _loc26_;
                              if(int(eax) != _loc26_)
                              {
                                 _loc24_ = 1065353216;
                              }
                              _loc35_ = li32(_loc6_ - 84);
                              _loc35_ = _loc35_ & -2147483648;
                              _loc35_ = _loc24_ | _loc35_;
                              si32(_loc35_,_loc6_ - 92);
                              ESP = _loc5_;
                              F___isinff();
                              _loc5_ = int(_loc5_ + 16);
                              _loc35_ = int(eax);
                              if(_loc35_ != _loc26_)
                              {
                                 _loc26_ = 1065353216;
                              }
                              _loc35_ = li32(_loc6_ - 88);
                              _loc35_ = _loc35_ & -2147483648;
                              _loc35_ = _loc26_ | _loc35_;
                              si32(_loc35_,_loc6_ - 96);
                              _loc15_ = lf32(_loc6_ - 92);
                              _loc13_ = Number(_loc15_ * _loc19_);
                              _loc9_ = _loc13_;
                              _loc2_ = _loc9_;
                              _loc13_ = lf32(_loc6_ - 96);
                              _loc3_ = Number(_loc13_ * _loc1_);
                              _loc34_ = _loc3_;
                              _loc3_ = _loc34_;
                              _loc2_ = Number(_loc2_ - _loc3_);
                              _loc32_ = _loc2_;
                              _loc2_ = _loc32_;
                              _loc2_ = Number(_loc2_ * _loc8_);
                              _loc27_ = _loc2_;
                              _loc15_ = Number(_loc15_ * _loc1_);
                              _loc7_ = _loc15_;
                              _loc15_ = _loc7_;
                              _loc13_ = Number(_loc13_ * _loc19_);
                              _loc9_ = _loc13_;
                              _loc13_ = _loc9_;
                              _loc13_ = Number(_loc15_ + _loc13_);
                              _loc9_ = _loc13_;
                              _loc13_ = _loc9_;
                              _loc13_ = Number(_loc13_ * _loc8_);
                              _loc25_ = _loc13_;
                           }
                        }
                     }
                  }
               }
               sf32(_loc20_,_loc6_ - 52);
               _loc35_ = li32(_loc6_ - 52);
               _loc35_ = int(_loc35_ >>> 23);
               _loc35_ = _loc35_ & 255;
               if(_loc35_ != 255)
               {
                  sf32(_loc22_,_loc6_ - 56);
                  _loc35_ = li32(_loc6_ - 56);
                  _loc35_ = int(_loc35_ >>> 23);
                  _loc35_ = _loc35_ & 255;
                  if(_loc35_ != 255)
                  {
                     sf32(_loc16_,_loc6_ - 60);
                     _loc5_ = int(_loc5_ - 16);
                     sf32(_loc21_,_loc5_);
                     sf32(_loc21_,_loc6_ - 64);
                     _loc26_ = 0;
                     _loc24_ = _loc26_;
                     if(_loc28_ != _loc26_)
                     {
                        _loc24_ = 1065353216;
                     }
                     _loc35_ = li32(_loc6_ - 60);
                     _loc35_ = _loc35_ & -2147483648;
                     _loc35_ = _loc24_ | _loc35_;
                     si32(_loc35_,_loc6_ - 68);
                     ESP = _loc5_;
                     F___isinff();
                     _loc5_ = int(_loc5_ + 16);
                     _loc35_ = int(eax);
                     if(_loc35_ != _loc26_)
                     {
                        _loc26_ = 1065353216;
                     }
                     _loc35_ = li32(_loc6_ - 64);
                     _loc35_ = _loc35_ & -2147483648;
                     _loc35_ = _loc26_ | _loc35_;
                     si32(_loc35_,_loc6_ - 72);
                     _loc15_ = lf32(_loc6_ - 68);
                     _loc13_ = Number(_loc15_ * _loc17_);
                     _loc9_ = _loc13_;
                     _loc2_ = _loc9_;
                     _loc13_ = lf32(_loc6_ - 72);
                     _loc3_ = Number(_loc13_ * _loc10_);
                     _loc34_ = _loc3_;
                     _loc3_ = _loc34_;
                     _loc2_ = Number(_loc3_ - _loc2_);
                     _loc32_ = _loc2_;
                     _loc3_ = _loc32_;
                     _loc32_ = Number(inf);
                     _loc2_ = _loc32_;
                     _loc3_ = Number(_loc3_ * _loc2_);
                     _loc27_ = _loc3_;
                     _loc15_ = Number(_loc15_ * _loc10_);
                     _loc7_ = _loc15_;
                     _loc15_ = _loc7_;
                     _loc13_ = Number(_loc13_ * _loc17_);
                     _loc9_ = _loc13_;
                     _loc13_ = _loc9_;
                     _loc13_ = Number(_loc15_ + _loc13_);
                     _loc9_ = _loc13_;
                     _loc13_ = _loc9_;
                     _loc13_ = Number(_loc13_ * _loc2_);
                     _loc25_ = _loc13_;
                  }
               }
               §§goto(addr930);
            }
         }
         sf32(_loc25_,_loc6_ - 100);
         sf32(_loc27_,_loc6_ - 104);
         _loc33_ = li32(_loc6_ - 100);
         _loc35_ = li32(_loc6_ - 104);
         eax = _loc33_;
         edx = _loc35_;
         _loc5_ = _loc6_;
         ESP = _loc5_;
         return;
      }
      _loc35_ = int(_loc30_ >>> 23);
      _loc35_ = _loc35_ & 255;
      if(_loc35_ == 255)
      {
         _loc14_ = _loc12_;
         if((_loc30_ & 8388607) == 0)
         {
         }
         §§goto(addr203);
      }
      _loc10_ = _loc18_;
      _loc8_ = _loc12_;
      if(_loc8_ <= _loc10_)
      {
         _loc8_ = _loc10_;
      }
      _loc14_ = _loc8_;
      §§goto(addr203);
   }
}
