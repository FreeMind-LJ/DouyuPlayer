package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F___mulxc3() : void
   {
      var _loc8_:* = 0;
      var _loc3_:Number = NaN;
      var _loc2_:Number = NaN;
      var _loc13_:Number = NaN;
      var _loc12_:Number = NaN;
      var _loc16_:int = 0;
      var _loc24_:* = 0;
      var _loc25_:int = 0;
      var _loc21_:int = 0;
      var _loc19_:int = 0;
      var _loc23_:* = 0;
      var _loc18_:int = 0;
      var _loc15_:int = 0;
      var _loc17_:int = 0;
      var _loc14_:* = NaN;
      var _loc9_:* = NaN;
      var _loc10_:* = NaN;
      var _loc11_:* = NaN;
      var _loc1_:Number = NaN;
      var _loc4_:Number = NaN;
      var _loc7_:* = int(ESP);
      _loc8_ = _loc7_;
      _loc7_ = int(_loc7_ - 192);
      _loc10_ = lf64(_loc8_ + 20);
      _loc9_ = lf64(_loc8_ + 12);
      _loc12_ = _loc9_ * _loc10_;
      _loc11_ = lf64(_loc8_ + 28);
      _loc14_ = lf64(_loc8_ + 4);
      _loc13_ = _loc14_ * _loc11_;
      _loc1_ = _loc13_ + _loc12_;
      _loc2_ = _loc9_ * _loc11_;
      _loc3_ = _loc14_ * _loc10_;
      _loc4_ = _loc3_ - _loc2_;
      if(!(_loc4_ == _loc4_ & _loc4_ == _loc4_))
      {
         if(!(_loc1_ == _loc1_ & _loc1_ == _loc1_))
         {
            _loc7_ = int(_loc7_ - 16);
            sf64(_loc14_,_loc7_);
            ESP = _loc7_;
            F_isinf();
            _loc7_ = int(_loc7_ + 16);
            _loc16_ = eax;
            _loc7_ = int(_loc7_ - 16);
            sf64(_loc9_,_loc7_);
            _loc25_ = 1;
            _loc24_ = _loc25_;
            if(_loc16_ == 0)
            {
               _loc24_ = 0;
            }
            ESP = _loc7_;
            F_isinf();
            _loc7_ = int(_loc7_ + 16);
            _loc23_ = int(eax);
            if(_loc23_ == 0)
            {
               _loc25_ = 0;
            }
            if(_loc16_ == 0)
            {
               _loc25_ = 0;
               if((_loc25_ & 1) != 0)
               {
               }
               addr423:
               _loc7_ = int(_loc7_ - 16);
               sf64(_loc10_,_loc7_);
               ESP = _loc7_;
               F_isinf();
               _loc7_ = int(_loc7_ + 16);
               _loc16_ = eax;
               _loc7_ = int(_loc7_ - 16);
               sf64(_loc11_,_loc7_);
               _loc18_ = 1;
               _loc23_ = _loc18_;
               if(_loc16_ == 0)
               {
                  _loc23_ = 0;
               }
               ESP = _loc7_;
               F_isinf();
               _loc7_ = int(_loc7_ + 16);
               _loc24_ = int(eax);
               if(_loc24_ == 0)
               {
                  _loc18_ = 0;
               }
               if(_loc16_ == 0)
               {
                  var _loc22_:* = _loc18_ & 1;
                  if(_loc22_ == 0)
                  {
                     if(_loc25_ == 0)
                     {
                        _loc7_ = int(_loc7_ - 16);
                        sf64(_loc3_,_loc7_);
                        ESP = _loc7_;
                        F_isinf();
                        _loc7_ = int(_loc7_ + 16);
                        _loc22_ = int(eax);
                        if(_loc22_ == 0)
                        {
                           _loc7_ = int(_loc7_ - 16);
                           sf64(_loc2_,_loc7_);
                           ESP = _loc7_;
                           F_isinf();
                           _loc7_ = int(_loc7_ + 16);
                           _loc22_ = int(eax);
                           if(_loc22_ == 0)
                           {
                              _loc7_ = int(_loc7_ - 16);
                              sf64(_loc13_,_loc7_);
                              ESP = _loc7_;
                              F_isinf();
                              _loc7_ = int(_loc7_ + 16);
                              _loc22_ = int(eax);
                              if(_loc22_ == 0)
                              {
                                 _loc7_ = int(_loc7_ - 16);
                                 sf64(_loc12_,_loc7_);
                                 ESP = _loc7_;
                                 F_isinf();
                                 _loc7_ = int(_loc7_ + 16);
                                 _loc22_ = int(eax);
                                 if(_loc22_ != 0)
                                 {
                                 }
                              }
                           }
                        }
                        if(!(_loc14_ == _loc14_ & _loc14_ == _loc14_))
                        {
                           sf64(_loc14_,_loc8_ - 72);
                           _loc22_ = int(_loc8_ - 80);
                           var _loc20_:* = int(_loc8_ - 72);
                           _loc20_ = _loc20_ | 4;
                           _loc20_ = li32(_loc20_);
                           _loc20_ = _loc20_ & -2147483648;
                           si32(_loc20_,_loc22_ | 4);
                           si32(0,_loc8_ - 80);
                           _loc14_ = lf64(_loc8_ - 80);
                        }
                        if(!(_loc9_ == _loc9_ & _loc9_ == _loc9_))
                        {
                           sf64(_loc9_,_loc8_ - 88);
                           _loc22_ = int(_loc8_ - 96);
                           _loc20_ = int(_loc8_ - 88);
                           _loc20_ = _loc20_ | 4;
                           _loc20_ = li32(_loc20_);
                           _loc20_ = _loc20_ & -2147483648;
                           si32(_loc20_,_loc22_ | 4);
                           si32(0,_loc8_ - 96);
                           _loc9_ = lf64(_loc8_ - 96);
                        }
                        if(!(_loc10_ == _loc10_ & _loc10_ == _loc10_))
                        {
                           sf64(_loc10_,_loc8_ - 104);
                           _loc22_ = int(_loc8_ - 112);
                           _loc20_ = int(_loc8_ - 104);
                           _loc20_ = _loc20_ | 4;
                           _loc20_ = li32(_loc20_);
                           _loc20_ = _loc20_ & -2147483648;
                           si32(_loc20_,_loc22_ | 4);
                           si32(0,_loc8_ - 112);
                           _loc10_ = lf64(_loc8_ - 112);
                        }
                        if(!(_loc11_ == _loc11_ & _loc11_ == _loc11_))
                        {
                           sf64(_loc11_,_loc8_ - 120);
                           _loc22_ = int(_loc8_ - 128);
                           _loc20_ = int(_loc8_ - 120);
                           _loc20_ = _loc20_ | 4;
                           _loc20_ = li32(_loc20_);
                           _loc20_ = _loc20_ & -2147483648;
                           si32(_loc20_,_loc22_ | 4);
                           si32(0,_loc8_ - 128);
                           _loc11_ = lf64(_loc8_ - 128);
                        }
                     }
                  }
                  addr1038:
                  var _loc6_:Number = _loc9_ * _loc10_;
                  var _loc5_:Number = _loc14_ * _loc11_;
                  _loc6_ = _loc5_ + _loc6_;
                  _loc1_ = _loc6_ * inf;
                  _loc6_ = _loc9_ * _loc11_;
                  _loc5_ = _loc14_ * _loc10_;
                  _loc6_ = _loc5_ - _loc6_;
                  _loc4_ = _loc6_ * inf;
               }
               sf64(_loc11_,_loc8_ - 152);
               _loc15_ = 1;
               if(_loc24_ != 0)
               {
                  _loc15_ = 0;
               }
               _loc22_ = _loc15_ & _loc23_;
               _loc15_ = 0;
               if(_loc22_ == 0)
               {
                  _loc15_ = 1072693248;
               }
               _loc22_ = int(_loc8_ - 152);
               _loc22_ = _loc22_ | 4;
               _loc22_ = li32(_loc22_);
               _loc22_ = _loc22_ & -2147483648;
               _loc22_ = _loc15_ | _loc22_;
               _loc20_ = int(_loc8_ - 160);
               _loc20_ = _loc20_ | 4;
               si32(_loc22_,_loc20_);
               sf64(_loc10_,_loc8_ - 136);
               _loc17_ = 0;
               if(_loc16_ != 0)
               {
                  _loc17_ = 1072693248;
               }
               _loc22_ = int(_loc8_ - 136);
               _loc22_ = _loc22_ | 4;
               _loc22_ = li32(_loc22_);
               _loc22_ = _loc22_ & -2147483648;
               _loc22_ = _loc17_ | _loc22_;
               _loc20_ = int(_loc8_ - 144);
               _loc20_ = _loc20_ | 4;
               si32(_loc22_,_loc20_);
               si32(0,_loc8_ - 160);
               si32(0,_loc8_ - 144);
               _loc11_ = lf64(_loc8_ - 160);
               _loc10_ = lf64(_loc8_ - 144);
               if(!(_loc14_ == _loc14_ & _loc14_ == _loc14_))
               {
                  sf64(_loc14_,_loc8_ - 168);
                  _loc22_ = int(_loc8_ - 176);
                  _loc20_ = int(_loc8_ - 168);
                  _loc20_ = _loc20_ | 4;
                  _loc20_ = li32(_loc20_);
                  _loc20_ = _loc20_ & -2147483648;
                  si32(_loc20_,_loc22_ | 4);
                  si32(0,_loc8_ - 176);
                  _loc14_ = lf64(_loc8_ - 176);
               }
               if(!(_loc9_ == _loc9_ & _loc9_ == _loc9_))
               {
                  sf64(_loc9_,_loc8_ - 184);
                  _loc22_ = int(_loc8_ - 192);
                  _loc20_ = int(_loc8_ - 184);
                  _loc20_ = _loc20_ | 4;
                  _loc20_ = li32(_loc20_);
                  _loc20_ = _loc20_ & -2147483648;
                  si32(_loc20_,_loc22_ | 4);
                  si32(0,_loc8_ - 192);
                  _loc9_ = lf64(_loc8_ - 192);
               }
               §§goto(addr1038);
            }
            sf64(_loc9_,_loc8_ - 24);
            _loc21_ = 1;
            if(_loc23_ != 0)
            {
               _loc21_ = 0;
            }
            _loc22_ = _loc21_ & _loc24_;
            _loc21_ = 0;
            if(_loc22_ == 0)
            {
               _loc21_ = 1072693248;
            }
            _loc22_ = int(_loc8_ - 24);
            _loc22_ = _loc22_ | 4;
            _loc22_ = li32(_loc22_);
            _loc22_ = _loc22_ & -2147483648;
            _loc22_ = _loc21_ | _loc22_;
            _loc20_ = int(_loc8_ - 32);
            _loc20_ = _loc20_ | 4;
            si32(_loc22_,_loc20_);
            sf64(_loc14_,_loc8_ - 8);
            _loc19_ = 0;
            if(_loc16_ != 0)
            {
               _loc19_ = 1072693248;
            }
            _loc22_ = int(_loc8_ - 8);
            _loc22_ = _loc22_ | 4;
            _loc22_ = li32(_loc22_);
            _loc22_ = _loc22_ & -2147483648;
            _loc22_ = _loc19_ | _loc22_;
            _loc20_ = int(_loc8_ - 16);
            _loc20_ = _loc20_ | 4;
            si32(_loc22_,_loc20_);
            si32(0,_loc8_ - 32);
            si32(0,_loc8_ - 16);
            _loc9_ = lf64(_loc8_ - 32);
            _loc14_ = lf64(_loc8_ - 16);
            if(!(_loc10_ == _loc10_ & _loc10_ == _loc10_))
            {
               sf64(_loc10_,_loc8_ - 40);
               _loc22_ = int(_loc8_ - 48);
               _loc20_ = int(_loc8_ - 40);
               _loc20_ = _loc20_ | 4;
               _loc20_ = li32(_loc20_);
               _loc20_ = _loc20_ & -2147483648;
               si32(_loc20_,_loc22_ | 4);
               si32(0,_loc8_ - 48);
               _loc10_ = lf64(_loc8_ - 48);
            }
            _loc25_ = 1;
            if(!(_loc11_ == _loc11_ & _loc11_ == _loc11_))
            {
               sf64(_loc11_,_loc8_ - 56);
               _loc22_ = int(_loc8_ - 64);
               _loc20_ = int(_loc8_ - 56);
               _loc20_ = _loc20_ | 4;
               _loc20_ = li32(_loc20_);
               _loc20_ = _loc20_ & -2147483648;
               si32(_loc20_,_loc22_ | 4);
               si32(0,_loc8_ - 64);
               _loc25_ = 1;
               _loc11_ = lf64(_loc8_ - 64);
            }
            §§goto(addr423);
         }
      }
      _loc22_ = li32(_loc8_);
      sf64(_loc4_,_loc22_);
      sf64(_loc1_,_loc22_ + 8);
      _loc7_ = _loc8_;
      ESP = _loc7_;
   }
}
