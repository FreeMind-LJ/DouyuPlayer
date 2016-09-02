package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   
   public function F_jn() : void
   {
      var _loc8_:* = 0;
      var _loc1_:* = NaN;
      var _loc11_:int = 0;
      var _loc16_:* = 0;
      var _loc2_:* = NaN;
      var _loc22_:* = 0;
      var _loc14_:* = NaN;
      var _loc18_:* = 0;
      var _loc15_:* = 0;
      var _loc13_:* = NaN;
      var _loc12_:int = 0;
      var _loc19_:* = NaN;
      var _loc20_:* = NaN;
      var _loc10_:int = 0;
      var _loc7_:* = 0;
      var _loc3_:* = NaN;
      var _loc4_:Number = NaN;
      var _loc5_:* = 0;
      var _loc9_:int = 0;
      var _loc6_:* = int(ESP);
      _loc8_ = _loc6_;
      _loc6_ = int(_loc6_ - 16);
      _loc14_ = lf64(_loc8_ + 4);
      sf64(_loc14_,_loc8_ - 8);
      _loc7_ = li32(_loc8_ - 8);
      _loc22_ = int(0 - _loc7_);
      _loc22_ = _loc7_ | _loc22_;
      _loc22_ = int(_loc22_ >>> 31);
      var _loc21_:* = int(_loc8_ - 8);
      _loc21_ = _loc21_ | 4;
      _loc18_ = li32(_loc21_);
      _loc16_ = _loc18_ & 2147483647;
      _loc22_ = _loc22_ | _loc16_;
      if(uint(_loc22_) >= 2146435073)
      {
         _loc13_ = Number(_loc14_ + _loc14_);
      }
      else
      {
         _loc15_ = li32(_loc8_);
         if(_loc15_ <= -1)
         {
            _loc18_ = _loc18_ ^ -2147483648;
            _loc14_ = Number(-_loc14_);
            _loc15_ = int(0 - _loc15_);
         }
         if(_loc15_ != 1)
         {
            if(_loc15_ == 0)
            {
               _loc6_ = int(_loc6_ - 16);
               sf64(_loc14_,_loc6_);
               ESP = _loc6_;
               F_j0();
               _loc6_ = int(_loc6_ + 16);
               _loc13_ = Number(st0);
            }
            else
            {
               _loc13_ = 0;
               if((_loc16_ | _loc7_) != 0)
               {
                  if(uint(_loc16_) <= 2146435071)
                  {
                     _loc14_ = Number(Math.abs(_loc14_));
                     _loc19_ = Number(_loc15_);
                     if(!(_loc19_ > _loc14_ | _loc19_ != _loc19_ | _loc14_ != _loc14_))
                     {
                        if(uint(_loc16_) >= 1389363200)
                        {
                           _loc7_ = _loc15_ & 3;
                           if(_loc7_ <= 1)
                           {
                              if(_loc7_ != 0)
                              {
                                 if(_loc7_ == 1)
                                 {
                                    var _loc23_:* = Number(Math.sin(_loc14_));
                                    _loc13_ = Number(_loc23_ - Math.cos(_loc14_));
                                 }
                              }
                              else
                              {
                                 _loc23_ = Number(Math.cos(_loc14_));
                                 _loc13_ = Number(_loc23_ + Number(Math.sin(_loc14_)));
                              }
                           }
                           else if(_loc7_ != 2)
                           {
                              if(_loc7_ == 3)
                              {
                                 _loc23_ = Number(Math.cos(_loc14_));
                                 _loc13_ = Number(_loc23_ - Math.sin(_loc14_));
                              }
                           }
                           else
                           {
                              _loc23_ = Number(Math.cos(_loc14_));
                              _loc23_ = Number(-_loc23_);
                              _loc13_ = Number(_loc23_ - Math.sin(_loc14_));
                           }
                           _loc6_ = int(_loc6_ - 16);
                           sf64(_loc14_,_loc6_);
                           ESP = _loc6_;
                           F_sqrt();
                           var _loc17_:Number = _loc13_ * 0.564189583547756;
                           _loc6_ = int(_loc6_ + 16);
                           _loc23_ = Number(st0);
                           _loc13_ = Number(_loc17_ / _loc23_);
                        }
                        else
                        {
                           _loc6_ = int(_loc6_ - 16);
                           sf64(_loc14_,_loc6_);
                           ESP = _loc6_;
                           F_j0();
                           _loc6_ = int(_loc6_ + 16);
                           _loc19_ = Number(st0);
                           _loc6_ = int(_loc6_ - 16);
                           sf64(_loc14_,_loc6_);
                           ESP = _loc6_;
                           F_j1();
                           _loc6_ = int(_loc6_ + 16);
                           _loc13_ = Number(st0);
                           if(_loc15_ >= 2)
                           {
                              _loc16_ = int(_loc15_ + -1);
                              _loc12_ = 2;
                              _loc20_ = _loc13_;
                              while(true)
                              {
                                 _loc17_ = _loc12_;
                                 _loc17_ = _loc17_ / _loc14_;
                                 _loc17_ = _loc17_ * _loc20_;
                                 _loc13_ = Number(_loc17_ - _loc19_);
                                 _loc12_ = _loc12_ + 2;
                                 _loc16_ = int(_loc16_ + -1);
                                 _loc19_ = _loc20_;
                                 _loc20_ = _loc13_;
                                 if(_loc16_ != 0)
                                 {
                                    continue;
                                 }
                                 break;
                              }
                           }
                        }
                     }
                     else if(uint(_loc16_) <= 1041235967)
                     {
                        _loc13_ = 0;
                        if(_loc15_ <= 33)
                        {
                           _loc1_ = Number(_loc14_ * 0.5);
                           _loc2_ = 1;
                           _loc13_ = _loc1_;
                           if(_loc15_ >= 2)
                           {
                              _loc11_ = 0 - _loc15_;
                              _loc2_ = 1;
                              _loc10_ = 2;
                              _loc13_ = _loc1_;
                              do
                              {
                                 _loc13_ = Number(_loc13_ * _loc1_);
                                 _loc17_ = _loc10_;
                                 _loc2_ = Number(_loc17_ * _loc2_);
                                 _loc10_ = _loc10_ + 1;
                                 _loc22_ = int(_loc11_ + _loc10_);
                              }
                              while(_loc22_ != 1);
                              
                           }
                           _loc13_ = Number(_loc13_ / _loc2_);
                        }
                     }
                     else
                     {
                        _loc16_ = _loc15_ << 1;
                        _loc17_ = _loc16_;
                        _loc3_ = Number(_loc17_ / _loc14_);
                        _loc2_ = Number(2 / _loc14_);
                        _loc4_ = _loc3_ + _loc2_;
                        _loc17_ = _loc3_ * _loc4_;
                        _loc20_ = Number(_loc17_ + -1);
                        _loc7_ = 1;
                        if(!(_loc20_ >= 1000000000 | _loc20_ != _loc20_ | false))
                        {
                           do
                           {
                              _loc23_ = _loc20_;
                              _loc4_ = _loc4_ + _loc2_;
                              _loc17_ = _loc4_ * _loc23_;
                              _loc20_ = Number(_loc17_ - _loc3_);
                              _loc7_ = int(_loc7_ + 1);
                              _loc3_ = _loc23_;
                           }
                           while(_loc20_ < 1000000000);
                           
                        }
                        _loc22_ = int(_loc7_ + _loc15_);
                        _loc5_ = _loc22_ << 1;
                        _loc13_ = 0;
                        if(_loc5_ >= _loc16_)
                        {
                           _loc13_ = 0;
                           do
                           {
                              _loc17_ = _loc5_;
                              _loc17_ = _loc17_ / _loc14_;
                              _loc17_ = _loc17_ - _loc13_;
                              _loc13_ = Number(1 / _loc17_);
                              _loc5_ = int(_loc5_ + -2);
                           }
                           while(_loc5_ >= _loc16_);
                           
                        }
                        _loc17_ = _loc2_ * _loc19_;
                        _loc17_ = Math.abs(_loc17_);
                        _loc6_ = int(_loc6_ - 16);
                        sf64(_loc17_,_loc6_);
                        ESP = _loc6_;
                        F_log();
                        _loc6_ = int(_loc6_ + 16);
                        _loc17_ = st0;
                        _loc23_ = Number(_loc17_ * _loc19_);
                        _loc9_ = _loc15_ + -1;
                        _loc22_ = _loc9_ << 1;
                        _loc2_ = Number(_loc22_);
                        if(!(_loc23_ >= 709.782712893384 | _loc23_ != _loc23_ | false))
                        {
                           _loc19_ = 1;
                           _loc1_ = _loc13_;
                           if(_loc9_ >= 1)
                           {
                              _loc5_ = int(_loc15_ + -1);
                              _loc19_ = 1;
                              _loc3_ = _loc13_;
                              while(true)
                              {
                                 _loc1_ = _loc19_;
                                 _loc17_ = _loc1_ * _loc2_;
                                 _loc17_ = _loc17_ / _loc14_;
                                 _loc19_ = Number(_loc17_ - _loc3_);
                                 _loc5_ = int(_loc5_ + -1);
                                 _loc2_ = Number(_loc2_ + -2);
                                 _loc3_ = _loc1_;
                                 if(_loc5_ != 0)
                                 {
                                    continue;
                                 }
                              }
                           }
                        }
                        else
                        {
                           _loc19_ = 1;
                           _loc1_ = _loc13_;
                           if(_loc9_ >= 1)
                           {
                              _loc20_ = 1;
                              _loc1_ = _loc13_;
                              do
                              {
                                 _loc17_ = _loc20_ * _loc2_;
                                 _loc17_ = _loc17_ / _loc14_;
                                 _loc19_ = Number(_loc17_ - _loc1_);
                                 if(!(_loc19_ <= 1.0e100 | _loc19_ != _loc19_ | false))
                                 {
                                    _loc13_ = Number(_loc13_ / _loc19_);
                                    _loc20_ = Number(_loc20_ / _loc19_);
                                    _loc19_ = 1;
                                 }
                                 _loc1_ = _loc20_;
                                 _loc2_ = Number(_loc2_ + -2);
                                 _loc9_ = _loc9_ + -1;
                                 _loc20_ = _loc19_;
                              }
                              while(_loc9_ != 0);
                              
                           }
                        }
                        _loc6_ = int(_loc6_ - 16);
                        sf64(_loc14_,_loc6_);
                        ESP = _loc6_;
                        F_j0();
                        _loc6_ = int(_loc6_ + 16);
                        _loc2_ = Number(st0);
                        _loc6_ = int(_loc6_ - 16);
                        sf64(_loc14_,_loc6_);
                        ESP = _loc6_;
                        F_j1();
                        _loc23_ = Number(Math.abs(_loc2_));
                        _loc6_ = int(_loc6_ + 16);
                        _loc14_ = Number(st0);
                        _loc17_ = Math.abs(_loc14_);
                        if(!(_loc23_ < _loc17_ | _loc23_ != _loc23_ | _loc17_ != _loc17_))
                        {
                           _loc17_ = _loc13_ * _loc2_;
                           _loc13_ = Number(_loc17_ / _loc19_);
                        }
                        else
                        {
                           _loc17_ = _loc13_ * _loc14_;
                           _loc13_ = Number(_loc17_ / _loc1_);
                        }
                     }
                  }
               }
               _loc22_ = int(_loc18_ >>> 31);
               _loc22_ = _loc15_ & _loc22_;
               if(_loc22_ == 1)
               {
                  _loc13_ = Number(-_loc13_);
               }
            }
         }
         else
         {
            _loc6_ = int(_loc6_ - 16);
            sf64(_loc14_,_loc6_);
            ESP = _loc6_;
            F_j1();
            _loc6_ = int(_loc6_ + 16);
            _loc13_ = Number(st0);
         }
      }
      st0 = _loc13_;
      _loc6_ = _loc8_;
      ESP = _loc6_;
   }
}
