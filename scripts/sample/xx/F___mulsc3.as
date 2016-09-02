package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F___mulsc3() : void
   {
      var _loc4_:* = 0;
      var _loc9_:* = NaN;
      var _loc7_:* = NaN;
      var _loc11_:* = NaN;
      var _loc19_:* = NaN;
      var _loc22_:int = 0;
      var _loc33_:int = 0;
      var _loc26_:int = 0;
      var _loc8_:* = NaN;
      var _loc6_:* = NaN;
      var _loc12_:* = NaN;
      var _loc10_:* = NaN;
      var _loc17_:* = NaN;
      var _loc35_:* = 0;
      var _loc37_:int = 0;
      var _loc31_:* = 0;
      var _loc30_:int = 0;
      var _loc28_:* = 0;
      var _loc21_:* = 0;
      var _loc23_:int = 0;
      var _loc16_:* = NaN;
      var _loc20_:* = NaN;
      var _loc18_:* = NaN;
      var _loc15_:* = NaN;
      var _loc5_:* = NaN;
      var _loc13_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc4_ = _loc3_;
      _loc3_ = int(_loc3_ - 112);
      _loc18_ = lf32(_loc4_ + 8);
      _loc8_ = _loc18_;
      _loc20_ = lf32(_loc4_ + 4);
      _loc6_ = _loc20_;
      _loc12_ = Number(_loc6_ * _loc8_);
      _loc19_ = _loc12_;
      _loc10_ = _loc19_;
      _loc15_ = lf32(_loc4_ + 12);
      _loc17_ = _loc15_;
      _loc16_ = lf32(_loc4_);
      _loc12_ = _loc16_;
      var _loc14_:* = Number(_loc12_ * _loc17_);
      _loc11_ = _loc14_;
      _loc14_ = _loc11_;
      _loc10_ = Number(_loc14_ + _loc10_);
      _loc13_ = _loc10_;
      _loc6_ = Number(_loc6_ * _loc17_);
      _loc7_ = _loc6_;
      _loc6_ = _loc7_;
      _loc12_ = Number(_loc12_ * _loc8_);
      _loc9_ = _loc12_;
      _loc12_ = _loc9_;
      _loc12_ = Number(_loc12_ - _loc6_);
      _loc5_ = _loc12_;
      _loc12_ = _loc5_;
      if(!(_loc12_ == _loc12_ & _loc12_ == _loc12_))
      {
         _loc12_ = _loc13_;
         if(!(_loc12_ == _loc12_ & _loc12_ == _loc12_))
         {
            _loc3_ = int(_loc3_ - 16);
            sf32(_loc16_,_loc3_);
            ESP = _loc3_;
            F___isinff();
            _loc3_ = int(_loc3_ + 16);
            _loc22_ = eax;
            _loc3_ = int(_loc3_ - 16);
            sf32(_loc20_,_loc3_);
            _loc37_ = 1;
            _loc35_ = _loc37_;
            if(_loc22_ == 0)
            {
               _loc35_ = 0;
            }
            ESP = _loc3_;
            F___isinff();
            _loc3_ = int(_loc3_ + 16);
            _loc33_ = eax;
            if(_loc33_ == 0)
            {
               _loc37_ = 0;
            }
            if(_loc22_ == 0)
            {
               _loc37_ = 0;
               if((_loc37_ & 1) != 0)
               {
               }
               addr391:
               _loc3_ = int(_loc3_ - 16);
               sf32(_loc18_,_loc3_);
               ESP = _loc3_;
               F___isinff();
               _loc3_ = int(_loc3_ + 16);
               _loc22_ = eax;
               _loc3_ = int(_loc3_ - 16);
               sf32(_loc15_,_loc3_);
               _loc35_ = 1;
               _loc28_ = _loc35_;
               if(_loc22_ == 0)
               {
                  _loc28_ = 0;
               }
               ESP = _loc3_;
               F___isinff();
               _loc3_ = int(_loc3_ + 16);
               _loc26_ = eax;
               if(_loc26_ == 0)
               {
                  _loc35_ = 0;
               }
               if(_loc22_ == 0)
               {
                  var _loc32_:* = _loc35_ & 1;
                  if(_loc32_ == 0)
                  {
                     if(_loc37_ == 0)
                     {
                        _loc3_ = int(_loc3_ - 16);
                        sf32(_loc9_,_loc3_);
                        ESP = _loc3_;
                        F___isinff();
                        _loc3_ = int(_loc3_ + 16);
                        _loc32_ = int(eax);
                        if(_loc32_ == 0)
                        {
                           _loc3_ = int(_loc3_ - 16);
                           sf32(_loc7_,_loc3_);
                           ESP = _loc3_;
                           F___isinff();
                           _loc3_ = int(_loc3_ + 16);
                           _loc32_ = int(eax);
                           if(_loc32_ == 0)
                           {
                              _loc3_ = int(_loc3_ - 16);
                              sf32(_loc11_,_loc3_);
                              ESP = _loc3_;
                              F___isinff();
                              _loc3_ = int(_loc3_ + 16);
                              _loc32_ = int(eax);
                              if(_loc32_ == 0)
                              {
                                 _loc3_ = int(_loc3_ - 16);
                                 sf32(_loc19_,_loc3_);
                                 ESP = _loc3_;
                                 F___isinff();
                                 _loc3_ = int(_loc3_ + 16);
                                 _loc32_ = int(eax);
                                 if(_loc32_ != 0)
                                 {
                                 }
                              }
                           }
                        }
                        _loc12_ = _loc16_;
                        if(!(_loc12_ == _loc12_ & _loc12_ == _loc12_))
                        {
                           sf32(_loc16_,_loc4_ - 36);
                           _loc32_ = li32(_loc4_ - 36);
                           _loc32_ = _loc32_ & -2147483648;
                           si32(_loc32_,_loc4_ - 40);
                           _loc16_ = lf32(_loc4_ - 40);
                        }
                        _loc12_ = _loc20_;
                        if(!(_loc12_ == _loc12_ & _loc12_ == _loc12_))
                        {
                           sf32(_loc20_,_loc4_ - 44);
                           _loc32_ = li32(_loc4_ - 44);
                           _loc32_ = _loc32_ & -2147483648;
                           si32(_loc32_,_loc4_ - 48);
                           _loc20_ = lf32(_loc4_ - 48);
                        }
                        _loc12_ = _loc18_;
                        if(!(_loc12_ == _loc12_ & _loc12_ == _loc12_))
                        {
                           sf32(_loc18_,_loc4_ - 52);
                           _loc32_ = li32(_loc4_ - 52);
                           _loc32_ = _loc32_ & -2147483648;
                           si32(_loc32_,_loc4_ - 56);
                           _loc18_ = lf32(_loc4_ - 56);
                        }
                        _loc12_ = _loc15_;
                        if(!(_loc12_ == _loc12_ & _loc12_ == _loc12_))
                        {
                           sf32(_loc15_,_loc4_ - 60);
                           _loc32_ = li32(_loc4_ - 60);
                           _loc32_ = _loc32_ & -2147483648;
                           si32(_loc32_,_loc4_ - 64);
                           _loc15_ = lf32(_loc4_ - 64);
                        }
                     }
                  }
                  addr872:
                  _loc12_ = _loc18_;
                  _loc10_ = _loc20_;
                  _loc6_ = Number(_loc10_ * _loc12_);
                  var _loc34_:* = _loc6_;
                  _loc14_ = _loc34_;
                  var _loc1_:* = _loc15_;
                  _loc6_ = _loc16_;
                  var _loc2_:* = Number(_loc6_ * _loc1_);
                  var _loc36_:* = _loc2_;
                  _loc2_ = _loc36_;
                  _loc14_ = Number(_loc2_ + _loc14_);
                  var _loc25_:* = _loc14_;
                  _loc2_ = _loc25_;
                  _loc25_ = Number(inf);
                  _loc14_ = _loc25_;
                  _loc2_ = Number(_loc2_ * _loc14_);
                  _loc13_ = _loc2_;
                  _loc10_ = Number(_loc10_ * _loc1_);
                  var _loc27_:* = _loc10_;
                  _loc10_ = _loc27_;
                  _loc12_ = Number(_loc6_ * _loc12_);
                  var _loc29_:* = _loc12_;
                  _loc12_ = _loc29_;
                  _loc12_ = Number(_loc12_ - _loc10_);
                  _loc29_ = _loc12_;
                  _loc12_ = _loc29_;
                  _loc12_ = Number(_loc12_ * _loc14_);
                  _loc5_ = _loc12_;
               }
               sf32(_loc15_,_loc4_ - 72);
               sf32(_loc18_,_loc4_ - 68);
               _loc21_ = 1;
               _loc23_ = 0;
               if(_loc26_ != _loc23_)
               {
                  _loc21_ = _loc23_;
               }
               _loc32_ = _loc21_ & _loc28_;
               _loc21_ = _loc23_;
               if(_loc32_ == _loc23_)
               {
                  _loc21_ = 1065353216;
               }
               _loc32_ = li32(_loc4_ - 72);
               _loc32_ = _loc32_ & -2147483648;
               _loc32_ = _loc21_ | _loc32_;
               si32(_loc32_,_loc4_ - 80);
               if(_loc22_ != _loc23_)
               {
                  _loc23_ = 1065353216;
               }
               _loc32_ = li32(_loc4_ - 68);
               _loc32_ = _loc32_ & -2147483648;
               _loc32_ = _loc23_ | _loc32_;
               si32(_loc32_,_loc4_ - 76);
               _loc12_ = _loc16_;
               _loc15_ = lf32(_loc4_ - 80);
               _loc18_ = lf32(_loc4_ - 76);
               if(!(_loc12_ == _loc12_ & _loc12_ == _loc12_))
               {
                  sf32(_loc16_,_loc4_ - 84);
                  _loc32_ = li32(_loc4_ - 84);
                  _loc32_ = _loc32_ & -2147483648;
                  si32(_loc32_,_loc4_ - 88);
                  _loc16_ = lf32(_loc4_ - 88);
               }
               _loc12_ = _loc20_;
               if(!(_loc12_ == _loc12_ & _loc12_ == _loc12_))
               {
                  sf32(_loc20_,_loc4_ - 92);
                  _loc32_ = li32(_loc4_ - 92);
                  _loc32_ = _loc32_ & -2147483648;
                  si32(_loc32_,_loc4_ - 96);
                  _loc20_ = lf32(_loc4_ - 96);
               }
               §§goto(addr872);
            }
            sf32(_loc20_,_loc4_ - 8);
            sf32(_loc16_,_loc4_ - 4);
            _loc31_ = 1;
            _loc30_ = 0;
            if(_loc33_ != _loc30_)
            {
               _loc31_ = _loc30_;
            }
            _loc32_ = _loc31_ & _loc35_;
            _loc31_ = _loc30_;
            if(_loc32_ == _loc30_)
            {
               _loc31_ = 1065353216;
            }
            _loc32_ = li32(_loc4_ - 8);
            _loc32_ = _loc32_ & -2147483648;
            _loc32_ = _loc31_ | _loc32_;
            si32(_loc32_,_loc4_ - 16);
            if(_loc22_ != _loc30_)
            {
               _loc30_ = 1065353216;
            }
            _loc32_ = li32(_loc4_ - 4);
            _loc32_ = _loc32_ & -2147483648;
            _loc32_ = _loc30_ | _loc32_;
            si32(_loc32_,_loc4_ - 12);
            _loc20_ = lf32(_loc4_ - 16);
            _loc16_ = lf32(_loc4_ - 12);
            if(!(_loc8_ == _loc8_ & _loc8_ == _loc8_))
            {
               sf32(_loc18_,_loc4_ - 20);
               _loc32_ = li32(_loc4_ - 20);
               _loc32_ = _loc32_ & -2147483648;
               si32(_loc32_,_loc4_ - 24);
               _loc18_ = lf32(_loc4_ - 24);
            }
            _loc37_ = 1;
            if(!(_loc17_ == _loc17_ & _loc17_ == _loc17_))
            {
               sf32(_loc15_,_loc4_ - 28);
               _loc32_ = li32(_loc4_ - 28);
               _loc32_ = _loc32_ & -2147483648;
               si32(_loc32_,_loc4_ - 32);
               _loc37_ = 1;
               _loc15_ = lf32(_loc4_ - 32);
            }
            §§goto(addr391);
         }
      }
      sf32(_loc5_,_loc4_ - 100);
      sf32(_loc13_,_loc4_ - 104);
      _loc32_ = li32(_loc4_ - 100);
      var _loc24_:* = li32(_loc4_ - 104);
      eax = _loc32_;
      edx = _loc24_;
      _loc3_ = _loc4_;
      ESP = _loc3_;
   }
}
