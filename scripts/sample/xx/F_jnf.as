package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_jnf() : void
   {
      var _loc6_:* = 0;
      var _loc36_:* = 0;
      var _loc20_:* = NaN;
      var _loc21_:* = NaN;
      var _loc15_:* = NaN;
      var _loc30_:int = 0;
      var _loc27_:* = 0;
      var _loc8_:* = NaN;
      var _loc14_:* = NaN;
      var _loc2_:* = NaN;
      var _loc3_:* = NaN;
      var _loc4_:* = NaN;
      var _loc1_:* = NaN;
      var _loc24_:* = 0;
      var _loc34_:* = 0;
      var _loc31_:int = 0;
      var _loc18_:* = NaN;
      var _loc12_:* = NaN;
      var _loc29_:* = 0;
      var _loc22_:* = NaN;
      var _loc23_:int = 0;
      var _loc35_:* = NaN;
      var _loc7_:* = NaN;
      var _loc10_:* = NaN;
      var _loc25_:* = 0;
      var _loc5_:* = int(ESP);
      _loc6_ = _loc5_;
      _loc5_ = int(_loc5_ - 32);
      _loc20_ = lf32(_loc6_ + 4);
      sf32(_loc20_,_loc6_ - 4);
      _loc24_ = li32(_loc6_ - 4);
      _loc36_ = _loc24_ & 2147483647;
      if(uint(_loc36_) >= 2139095041)
      {
         var _loc11_:* = _loc20_;
         _loc11_ = Number(_loc11_ + _loc11_);
         _loc22_ = _loc11_;
      }
      else
      {
         _loc34_ = li32(_loc6_);
         if(_loc34_ <= -1)
         {
            _loc24_ = _loc24_ ^ -2147483648;
            _loc34_ = int(0 - _loc34_);
            _loc11_ = _loc20_;
            _loc11_ = Number(-_loc11_);
            _loc20_ = _loc11_;
         }
         if(_loc34_ != 1)
         {
            if(_loc34_ == 0)
            {
               _loc5_ = int(_loc5_ - 16);
               sf32(_loc20_,_loc5_);
               ESP = _loc5_;
               F_j0f();
               _loc5_ = int(_loc5_ + 16);
               _loc22_ = Number(st0);
            }
            else
            {
               sf32(_loc20_,_loc6_ - 8);
               var _loc32_:* = li32(_loc6_ - 8);
               _loc32_ = _loc32_ & 2147483647;
               si32(_loc32_,_loc6_ - 12);
               _loc22_ = 0;
               if(_loc36_ != 0)
               {
                  if(uint(_loc36_) <= 2139095039)
                  {
                     _loc21_ = lf32(_loc6_ - 12);
                     _loc8_ = _loc21_;
                     var _loc16_:* = Number(_loc34_);
                     _loc14_ = _loc16_;
                     if(!(_loc14_ > _loc8_ | _loc14_ != _loc14_ | _loc8_ != _loc8_))
                     {
                        _loc5_ = int(_loc5_ - 16);
                        sf32(_loc21_,_loc5_);
                        ESP = _loc5_;
                        F_j1f();
                        _loc5_ = int(_loc5_ + 16);
                        _loc22_ = Number(st0);
                        if(_loc34_ >= 2)
                        {
                           _loc5_ = int(_loc5_ - 16);
                           sf32(_loc21_,_loc5_);
                           ESP = _loc5_;
                           F_j0f();
                           _loc31_ = _loc34_ + -1;
                           _loc30_ = 2;
                           _loc5_ = int(_loc5_ + 16);
                           _loc18_ = Number(st0);
                           _loc12_ = _loc22_;
                           while(true)
                           {
                              _loc16_ = Number(_loc30_);
                              _loc11_ = _loc16_;
                              _loc11_ = Number(_loc11_ / _loc8_);
                              _loc16_ = _loc11_;
                              _loc11_ = _loc16_;
                              var _loc13_:* = _loc12_;
                              _loc11_ = Number(_loc11_ * _loc13_);
                              _loc16_ = _loc11_;
                              _loc13_ = _loc16_;
                              _loc11_ = _loc18_;
                              _loc11_ = Number(_loc13_ - _loc11_);
                              _loc22_ = _loc11_;
                              _loc30_ = _loc30_ + 2;
                              _loc31_ = _loc31_ + -1;
                              _loc18_ = _loc12_;
                              _loc12_ = _loc22_;
                              if(_loc31_ != 0)
                              {
                                 continue;
                              }
                              break;
                           }
                        }
                     }
                     else if(uint(_loc36_) <= 813694975)
                     {
                        _loc22_ = 0;
                        if(_loc34_ <= 33)
                        {
                           _loc16_ = 0.5;
                           _loc11_ = Number(_loc8_ * _loc16_);
                           _loc15_ = _loc11_;
                           _loc18_ = 1;
                           _loc22_ = _loc15_;
                           if(_loc34_ >= 2)
                           {
                              _loc18_ = 1;
                              _loc30_ = 0 - _loc34_;
                              _loc29_ = 2;
                              _loc22_ = _loc15_;
                              do
                              {
                                 var _loc28_:int = _loc29_ + 1;
                                 _loc32_ = int(_loc30_ + _loc28_);
                                 var _loc19_:* = _loc15_;
                                 var _loc17_:* = _loc22_;
                                 _loc19_ = Number(_loc17_ * _loc19_);
                                 _loc22_ = _loc19_;
                                 _loc19_ = _loc18_;
                                 var _loc9_:Number = _loc29_;
                                 _loc17_ = _loc9_;
                                 _loc19_ = Number(_loc17_ * _loc19_);
                                 _loc18_ = _loc19_;
                                 _loc29_ = _loc28_;
                              }
                              while(_loc32_ != 1);
                              
                           }
                           _loc11_ = _loc18_;
                           _loc13_ = _loc22_;
                           _loc11_ = Number(_loc13_ / _loc11_);
                           _loc22_ = _loc11_;
                        }
                     }
                     else
                     {
                        _loc16_ = 2;
                        _loc11_ = _loc16_;
                        _loc11_ = Number(_loc11_ / _loc8_);
                        _loc16_ = _loc11_;
                        _loc1_ = _loc16_;
                        _loc27_ = _loc34_ << 1;
                        _loc16_ = Number(_loc27_);
                        _loc11_ = _loc16_;
                        _loc11_ = Number(_loc11_ / _loc8_);
                        _loc10_ = _loc11_;
                        _loc11_ = _loc10_;
                        _loc13_ = Number(_loc11_ + _loc1_);
                        _loc7_ = _loc13_;
                        _loc11_ = Number(_loc11_ * _loc7_);
                        _loc16_ = _loc11_;
                        var _loc33_:* = -1;
                        _loc11_ = Number(_loc16_ + _loc33_);
                        _loc35_ = _loc11_;
                        _loc11_ = _loc35_;
                        _loc33_ = 1000000000;
                        _loc2_ = _loc33_;
                        _loc23_ = 1;
                        if(!(_loc11_ >= _loc2_ | _loc11_ != _loc11_ | _loc2_ != _loc2_))
                        {
                           do
                           {
                              _loc16_ = _loc35_;
                              _loc13_ = _loc7_;
                              _loc13_ = Number(_loc13_ + _loc1_);
                              _loc7_ = _loc13_;
                              _loc13_ = _loc7_;
                              _loc19_ = _loc16_;
                              _loc13_ = Number(_loc13_ * _loc19_);
                              _loc33_ = _loc13_;
                              _loc13_ = _loc33_;
                              _loc19_ = _loc10_;
                              _loc13_ = Number(_loc13_ - _loc19_);
                              _loc35_ = _loc13_;
                              _loc13_ = _loc35_;
                              _loc23_ = _loc23_ + 1;
                              _loc10_ = _loc16_;
                           }
                           while(_loc13_ < _loc2_);
                           
                        }
                        _loc32_ = int(_loc23_ + _loc34_);
                        _loc25_ = _loc32_ << 1;
                        _loc22_ = 0;
                        if(_loc25_ >= _loc27_)
                        {
                           _loc22_ = 0;
                           do
                           {
                              _loc16_ = Number(_loc25_);
                              _loc11_ = _loc16_;
                              _loc11_ = Number(_loc11_ / _loc8_);
                              _loc16_ = _loc11_;
                              _loc11_ = _loc16_;
                              _loc13_ = _loc22_;
                              _loc11_ = Number(_loc11_ - _loc13_);
                              _loc16_ = _loc11_;
                              _loc11_ = _loc16_;
                              _loc33_ = 1;
                              _loc13_ = _loc33_;
                              _loc11_ = Number(_loc13_ / _loc11_);
                              _loc22_ = _loc11_;
                              _loc25_ = int(_loc25_ + -2);
                           }
                           while(_loc25_ >= _loc27_);
                           
                        }
                        _loc11_ = Number(_loc1_ * _loc14_);
                        sf32(_loc11_,_loc6_ - 16);
                        _loc5_ = int(_loc5_ - 16);
                        _loc32_ = li32(_loc6_ - 16);
                        _loc32_ = _loc32_ & 2147483647;
                        si32(_loc32_,_loc5_);
                        ESP = _loc5_;
                        F_logf();
                        _loc5_ = int(_loc5_ + 16);
                        _loc16_ = Number(st0);
                        _loc11_ = _loc16_;
                        _loc11_ = Number(_loc11_ * _loc14_);
                        _loc16_ = _loc11_;
                        _loc11_ = _loc16_;
                        _loc33_ = 88.7216796875;
                        _loc13_ = _loc33_;
                        _loc27_ = int(_loc34_ + -1);
                        var _loc26_:* = _loc27_ << 1;
                        _loc7_ = Number(_loc26_);
                        if(!(_loc11_ >= _loc13_ | _loc11_ != _loc11_ | _loc13_ != _loc13_))
                        {
                           _loc15_ = 1;
                           _loc18_ = _loc22_;
                           if(_loc27_ >= 1)
                           {
                              _loc15_ = 1;
                              _loc27_ = int(_loc34_ + -1);
                              _loc35_ = _loc22_;
                              while(true)
                              {
                                 _loc18_ = _loc15_;
                                 _loc11_ = _loc7_;
                                 _loc33_ = -2;
                                 _loc13_ = _loc33_;
                                 _loc13_ = Number(_loc11_ + _loc13_);
                                 _loc7_ = _loc13_;
                                 _loc13_ = _loc18_;
                                 _loc11_ = Number(_loc13_ * _loc11_);
                                 _loc16_ = _loc11_;
                                 _loc11_ = _loc16_;
                                 _loc11_ = Number(_loc11_ / _loc8_);
                                 _loc16_ = _loc11_;
                                 _loc11_ = _loc16_;
                                 _loc13_ = _loc35_;
                                 _loc11_ = Number(_loc11_ - _loc13_);
                                 _loc15_ = _loc11_;
                                 _loc27_ = int(_loc27_ + -1);
                                 _loc35_ = _loc18_;
                                 if(_loc27_ != 0)
                                 {
                                    continue;
                                 }
                              }
                           }
                        }
                        else
                        {
                           _loc15_ = 1;
                           _loc18_ = _loc22_;
                           if(_loc27_ >= 1)
                           {
                              _loc35_ = 1;
                              _loc18_ = _loc22_;
                              do
                              {
                                 _loc3_ = _loc7_;
                                 _loc4_ = _loc35_;
                                 _loc11_ = Number(_loc4_ * _loc3_);
                                 _loc16_ = _loc11_;
                                 _loc11_ = _loc16_;
                                 _loc11_ = Number(_loc11_ / _loc8_);
                                 _loc16_ = _loc11_;
                                 _loc13_ = _loc16_;
                                 _loc11_ = _loc18_;
                                 _loc11_ = Number(_loc13_ - _loc11_);
                                 _loc15_ = _loc11_;
                                 _loc1_ = _loc15_;
                                 _loc16_ = 10000000000;
                                 _loc11_ = _loc16_;
                                 if(!(_loc1_ <= _loc11_ | _loc1_ != _loc1_ | _loc11_ != _loc11_))
                                 {
                                    _loc11_ = _loc22_;
                                    _loc11_ = Number(_loc11_ / _loc1_);
                                    _loc22_ = _loc11_;
                                    _loc11_ = Number(_loc4_ / _loc1_);
                                    _loc35_ = _loc11_;
                                    _loc15_ = 1;
                                 }
                                 _loc18_ = _loc35_;
                                 _loc16_ = -2;
                                 _loc11_ = _loc16_;
                                 _loc11_ = Number(_loc3_ + _loc11_);
                                 _loc7_ = _loc11_;
                                 _loc27_ = int(_loc27_ + -1);
                                 _loc35_ = _loc15_;
                              }
                              while(_loc27_ != 0);
                              
                           }
                        }
                        _loc5_ = int(_loc5_ - 16);
                        sf32(_loc21_,_loc5_);
                        ESP = _loc5_;
                        F_j0f();
                        _loc5_ = int(_loc5_ + 16);
                        _loc20_ = Number(st0);
                        sf32(_loc20_,_loc6_ - 20);
                        _loc5_ = int(_loc5_ - 16);
                        sf32(_loc21_,_loc5_);
                        _loc32_ = li32(_loc6_ - 20);
                        _loc32_ = _loc32_ & 2147483647;
                        si32(_loc32_,_loc6_ - 24);
                        ESP = _loc5_;
                        F_j1f();
                        _loc5_ = int(_loc5_ + 16);
                        _loc21_ = Number(st0);
                        sf32(_loc21_,_loc6_ - 28);
                        _loc32_ = li32(_loc6_ - 28);
                        _loc32_ = _loc32_ & 2147483647;
                        si32(_loc32_,_loc6_ - 32);
                        _loc11_ = lf32(_loc6_ - 24);
                        _loc13_ = lf32(_loc6_ - 32);
                        if(!(_loc11_ < _loc13_ | _loc11_ != _loc11_ | _loc13_ != _loc13_))
                        {
                           _loc11_ = _loc22_;
                           _loc11_ = Number(_loc11_ * _loc20_);
                           _loc16_ = _loc11_;
                           _loc11_ = Number(_loc16_ / _loc15_);
                           _loc22_ = _loc11_;
                        }
                        else
                        {
                           _loc11_ = _loc22_;
                           _loc11_ = Number(_loc11_ * _loc21_);
                           _loc16_ = _loc11_;
                           _loc11_ = Number(_loc16_ / _loc18_);
                           _loc22_ = _loc11_;
                        }
                     }
                  }
               }
               _loc32_ = int(_loc24_ >>> 31);
               _loc32_ = _loc34_ & _loc32_;
               if(_loc32_ == 1)
               {
                  _loc11_ = _loc22_;
                  _loc11_ = Number(-_loc11_);
                  _loc22_ = _loc11_;
               }
            }
         }
         else
         {
            _loc5_ = int(_loc5_ - 16);
            sf32(_loc20_,_loc5_);
            ESP = _loc5_;
            F_j1f();
            _loc5_ = int(_loc5_ + 16);
            _loc22_ = Number(st0);
         }
      }
      st0 = _loc22_;
      _loc5_ = _loc6_;
      ESP = _loc5_;
   }
}
