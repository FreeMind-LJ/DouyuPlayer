package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   
   public function F_lgamma_r() : void
   {
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc15_:* = 0;
      var _loc11_:* = 0;
      var _loc13_:* = 0;
      var _loc8_:* = NaN;
      var _loc9_:* = 0;
      var _loc2_:* = NaN;
      var _loc1_:Number = NaN;
      var _loc4_:* = NaN;
      var _loc10_:* = NaN;
      var _loc3_:* = NaN;
      var _loc5_:* = int(ESP);
      _loc7_ = _loc5_;
      _loc5_ = int(_loc5_ - 16);
      _loc6_ = li32(_loc7_ + 8);
      si32(1,_loc6_);
      _loc10_ = lf64(_loc7_);
      sf64(_loc10_,_loc7_ - 8);
      var _loc17_:* = int(_loc7_ - 8);
      _loc17_ = _loc17_ | 4;
      _loc15_ = li32(_loc17_);
      _loc13_ = _loc15_ & 2147483647;
      if(uint(_loc13_) >= 2146435072)
      {
         _loc8_ = Number(_loc10_ * _loc10_);
      }
      else
      {
         _loc11_ = li32(_loc7_ - 8);
         _loc8_ = Number(inf);
         if((_loc13_ | _loc11_) != 0)
         {
            if(uint(_loc13_) <= 999292927)
            {
               if(_loc15_ <= -1)
               {
                  si32(-1,_loc6_);
                  _loc5_ = int(_loc5_ - 16);
                  var _loc14_:Number = -_loc10_;
                  sf64(_loc14_,_loc5_);
                  ESP = _loc5_;
                  F_log();
                  _loc5_ = int(_loc5_ + 16);
                  _loc14_ = st0;
                  _loc8_ = Number(-_loc14_);
               }
               else
               {
                  _loc5_ = int(_loc5_ - 16);
                  sf64(_loc10_,_loc5_);
                  ESP = _loc5_;
                  F_log();
                  _loc5_ = int(_loc5_ + 16);
                  _loc14_ = st0;
                  _loc8_ = Number(-_loc14_);
               }
            }
            else
            {
               if(_loc15_ <= -1)
               {
                  _loc8_ = Number(inf);
                  if(uint(_loc13_) <= 1127219199)
                  {
                     if(uint(_loc13_) <= 1070596095)
                     {
                        _loc14_ = _loc10_ * 3.14159265358979;
                        var _loc12_:Number = _loc14_ * _loc14_;
                        var _loc16_:Number = _loc12_ * 1.58969099521155e-10;
                        _loc16_ = _loc12_ * 2.75573137070701e-6;
                        _loc16_ = _loc16_ + -0.00019841269829858;
                        _loc16_ = _loc16_ * _loc12_;
                        _loc16_ = _loc16_ + 0.00833333333332249;
                        var _loc18_:Number = _loc12_ * (_loc16_ + Number(_loc12_ * (_loc12_ * _loc12_) * (_loc16_ + -2.50507602534069e-8)));
                        _loc12_ = (_loc18_ + -0.166666666666666) * (_loc12_ * _loc14_);
                        _loc1_ = _loc12_ + _loc14_;
                     }
                     else
                     {
                        _loc5_ = int(_loc5_ - 16);
                        _loc14_ = -_loc10_;
                        sf64(_loc14_,_loc5_);
                        ESP = _loc5_;
                        F_floor();
                        _loc5_ = int(_loc5_ + 16);
                        _loc8_ = Number(st0);
                        if(_loc8_ != _loc14_)
                        {
                           _loc5_ = int(_loc5_ - 16);
                           _loc12_ = _loc10_ * -0.5;
                           sf64(_loc12_,_loc5_);
                           ESP = _loc5_;
                           F_floor();
                           _loc5_ = int(_loc5_ + 16);
                           _loc14_ = _loc12_ - st0;
                           _loc2_ = Number(_loc14_ + _loc14_);
                           _loc14_ = _loc2_ * 4;
                           _loc9_ = int(_loc14_);
                           addr376:
                           addr917:
                           if(_loc9_ <= 2)
                           {
                              if(_loc9_ != 0)
                              {
                                 _loc17_ = int(_loc9_ + -1);
                                 if(uint(_loc17_) >= 2)
                                 {
                                    addr826:
                                    _loc14_ = _loc2_ + -2;
                                    _loc14_ = _loc14_ * 3.14159265358979;
                                    _loc12_ = _loc14_ * _loc14_;
                                    _loc18_ = _loc12_ * _loc12_;
                                    _loc18_ = _loc12_ * _loc18_;
                                    _loc16_ = _loc12_ * 1.58969099521155e-10;
                                    _loc16_ = _loc16_ + -2.50507602534069e-8;
                                    _loc18_ = _loc18_ * _loc16_;
                                    _loc16_ = _loc12_ * 2.75573137070701e-6;
                                    _loc16_ = _loc16_ + -0.00019841269829858;
                                    _loc16_ = _loc16_ * _loc12_;
                                    _loc16_ = _loc16_ + 0.00833333333332249;
                                    _loc18_ = _loc16_ + _loc18_;
                                    _loc18_ = _loc12_ * _loc18_;
                                    _loc18_ = _loc18_ + -0.166666666666666;
                                    _loc12_ = _loc12_ * _loc14_;
                                    _loc12_ = _loc18_ * _loc12_;
                                    _loc2_ = Number(_loc12_ + _loc14_);
                                 }
                                 else
                                 {
                                    _loc14_ = 0.5 - _loc2_;
                                    _loc12_ = _loc14_ * 3.14159265358979;
                                    _loc14_ = _loc12_ * _loc12_;
                                    _loc18_ = _loc14_ * -1.13596475577882e-11;
                                    _loc18_ = _loc18_ + 2.08757232129818e-9;
                                    _loc18_ = _loc18_ * _loc14_;
                                    _loc16_ = _loc14_ * _loc14_;
                                    _loc16_ = _loc16_ * _loc16_;
                                    _loc16_ = _loc14_ * 0.0000248015872894767;
                                    _loc16_ = _loc16_ + -0.00138888888888741;
                                    _loc16_ = _loc16_ * _loc14_;
                                    _loc16_ = _loc16_ + 0.0416666666666666;
                                    _loc16_ = _loc16_ * _loc14_;
                                    _loc18_ = _loc14_ * 0.5;
                                    _loc14_ = 1 - _loc18_;
                                    _loc16_ = 1 - _loc14_;
                                    _loc18_ = _loc16_ - _loc18_;
                                    _loc12_ = _loc18_ + (Number(Number(_loc14_ * (_loc16_ + Number(_loc16_ * (_loc18_ + -2.75573143513907e-7)))) + Number(_loc12_ * 0)));
                                    _loc2_ = Number(_loc12_ + _loc14_);
                                 }
                              }
                           }
                           else
                           {
                              _loc17_ = int(_loc9_ + -3);
                              if(uint(_loc17_) >= 2)
                              {
                                 _loc17_ = int(_loc9_ + -5);
                                 if(uint(_loc17_) >= 2)
                                 {
                                    §§goto(addr826);
                                 }
                                 else
                                 {
                                    _loc14_ = _loc2_ + -1.5;
                                    _loc12_ = _loc14_ * 3.14159265358979;
                                    _loc14_ = _loc12_ * _loc12_;
                                    _loc18_ = _loc14_ * -1.13596475577882e-11;
                                    _loc18_ = _loc18_ + 2.08757232129818e-9;
                                    _loc18_ = _loc18_ * _loc14_;
                                    _loc16_ = _loc14_ * _loc14_;
                                    _loc16_ = _loc16_ * _loc16_;
                                    _loc16_ = _loc14_ * 0.0000248015872894767;
                                    _loc16_ = _loc16_ + -0.00138888888888741;
                                    _loc16_ = _loc16_ * _loc14_;
                                    _loc16_ = _loc16_ + 0.0416666666666666;
                                    _loc16_ = _loc16_ * _loc14_;
                                    _loc18_ = _loc14_ * 0.5;
                                    _loc14_ = 1 - _loc18_;
                                    _loc16_ = 1 - _loc14_;
                                    _loc18_ = _loc16_ - _loc18_;
                                    _loc12_ = _loc18_ + (Number(Number(_loc14_ * (_loc16_ + Number(_loc16_ * (_loc18_ + -2.75573143513907e-7)))) + Number(_loc12_ * 0)));
                                    _loc14_ = _loc12_ + _loc14_;
                                    _loc2_ = Number(-_loc14_);
                                 }
                              }
                              else
                              {
                                 _loc14_ = 1 - _loc2_;
                                 _loc14_ = _loc14_ * 3.14159265358979;
                                 _loc12_ = _loc14_ * _loc14_;
                                 _loc16_ = _loc12_ * 1.58969099521155e-10;
                                 _loc16_ = _loc12_ * 2.75573137070701e-6;
                                 _loc16_ = _loc16_ + -0.00019841269829858;
                                 _loc16_ = _loc16_ * _loc12_;
                                 _loc16_ = _loc16_ + 0.00833333333332249;
                                 _loc18_ = _loc12_ * (_loc16_ + Number(_loc12_ * (_loc12_ * _loc12_) * (_loc16_ + -2.50507602534069e-8)));
                                 _loc12_ = (_loc18_ + -0.166666666666666) * (_loc12_ * _loc14_);
                                 _loc2_ = Number(_loc12_ + _loc14_);
                              }
                           }
                           _loc1_ = -_loc2_;
                        }
                        else
                        {
                           _loc2_ = 0;
                           if(uint(_loc13_) <= 1128267775)
                           {
                              if(uint(_loc13_) <= 1127219199)
                              {
                                 _loc8_ = Number(4503599627370500 - _loc10_);
                              }
                              sf64(_loc8_,_loc7_ - 16);
                              _loc17_ = li32(_loc7_ - 16);
                              _loc17_ = _loc17_ & 1;
                              _loc9_ = _loc17_ << 2;
                              _loc2_ = Number(_loc17_);
                              §§goto(addr376);
                           }
                        }
                        _loc14_ = _loc2_ * 3.14159265358979;
                        _loc12_ = _loc14_ * _loc14_;
                        _loc18_ = _loc12_ * _loc12_;
                        _loc18_ = _loc12_ * _loc18_;
                        _loc16_ = _loc12_ * 1.58969099521155e-10;
                        _loc16_ = _loc16_ + -2.50507602534069e-8;
                        _loc18_ = _loc18_ * _loc16_;
                        _loc16_ = _loc12_ * 2.75573137070701e-6;
                        _loc16_ = _loc16_ + -0.00019841269829858;
                        _loc16_ = _loc16_ * _loc12_;
                        _loc16_ = _loc16_ + 0.00833333333332249;
                        _loc18_ = _loc16_ + _loc18_;
                        _loc18_ = _loc12_ * _loc18_;
                        _loc18_ = _loc18_ + -0.166666666666666;
                        _loc12_ = _loc12_ * _loc14_;
                        _loc12_ = _loc18_ * _loc12_;
                        _loc2_ = Number(_loc12_ + _loc14_);
                        §§goto(addr917);
                     }
                     _loc8_ = Number(inf);
                     if(_loc1_ != 0)
                     {
                        _loc5_ = int(_loc5_ - 16);
                        sf64(Number(3.14159265358979 / Math.abs(Number(_loc1_ * _loc10_))),_loc5_);
                        ESP = _loc5_;
                        F_log();
                        _loc5_ = int(_loc5_ + 16);
                        _loc2_ = Number(st0);
                        if(!(_loc1_ >= 0 | _loc1_ != _loc1_ | false))
                        {
                           si32(-1,_loc6_);
                        }
                        _loc10_ = Number(-_loc10_);
                     }
                  }
               }
               _loc17_ = int(_loc13_ + -1072693248);
               _loc17_ = _loc17_ | _loc11_;
               _loc8_ = 0;
               if(_loc17_ != 0)
               {
                  _loc17_ = int(_loc13_ + -1073741824);
                  _loc8_ = 0;
                  if((_loc17_ | _loc11_) != 0)
                  {
                     if(uint(_loc13_) <= 1073741823)
                     {
                        if(uint(_loc13_) <= 1072483532)
                        {
                           _loc5_ = int(_loc5_ - 16);
                           sf64(_loc10_,_loc5_);
                           ESP = _loc5_;
                           F_log();
                           _loc5_ = int(_loc5_ + 16);
                           _loc14_ = st0;
                           _loc3_ = Number(-_loc14_);
                           _loc4_ = 1;
                           if(uint(_loc13_) <= 1072130371)
                           {
                              if(uint(_loc13_) >= 1070442081)
                              {
                                 _loc10_ = Number(_loc10_ + -0.461632144968362);
                                 addr1240:
                                 _loc14_ = _loc10_ * _loc10_;
                                 _loc12_ = _loc14_ * _loc10_;
                                 _loc18_ = _loc12_ * 0.000335529192635519;
                                 _loc18_ = _loc18_ + -0.000538595305356741;
                                 _loc18_ = _loc18_ * _loc12_;
                                 _loc18_ = _loc18_ + 0.00225964780900612;
                                 _loc18_ = _loc18_ * _loc12_;
                                 _loc18_ = _loc18_ + -0.0103142241298341;
                                 _loc18_ = _loc18_ * _loc12_;
                                 _loc18_ = _loc18_ + 0.0646249402391334;
                                 _loc18_ = _loc10_ * _loc18_;
                                 _loc16_ = _loc12_ * -0.000312754168375121;
                                 _loc16_ = _loc16_ + 0.000881081882437654;
                                 _loc16_ = _loc16_ * _loc12_;
                                 _loc16_ = _loc16_ + -0.00368452016781138;
                                 _loc16_ = _loc16_ * _loc12_;
                                 _loc16_ = _loc16_ + 0.017970675081182;
                                 _loc16_ = _loc16_ * _loc12_;
                                 _loc16_ = _loc16_ + -0.147587722994594;
                                 _loc18_ = _loc18_ + _loc16_;
                                 _loc18_ = _loc18_ * _loc12_;
                                 _loc18_ = -3.63867699703951e-18 - _loc18_;
                                 _loc16_ = _loc12_ * 0.000315632070903626;
                                 _loc16_ = _loc16_ + -0.00140346469989233;
                                 _loc16_ = _loc16_ * _loc12_;
                                 _loc16_ = _loc16_ + 0.00610053870246291;
                                 _loc16_ = _loc16_ * _loc12_;
                                 _loc16_ = _loc16_ + -0.032788541075986;
                                 _loc12_ = _loc16_ * _loc12_;
                                 _loc12_ = _loc12_ + 0.48383612272381;
                                 _loc14_ = _loc14_ * _loc12_;
                                 _loc14_ = _loc14_ - _loc18_;
                                 _loc14_ = _loc14_ + -0.12148629053585;
                                 _loc8_ = Number(_loc14_ + _loc3_);
                              }
                              else
                              {
                                 addr1412:
                                 _loc14_ = _loc10_ * 0.0133810918536788;
                                 _loc14_ = _loc14_ + 0.228963728064692;
                                 _loc14_ = _loc14_ * _loc10_;
                                 _loc14_ = _loc14_ + 0.977717527963373;
                                 _loc14_ = _loc14_ * _loc10_;
                                 _loc14_ = _loc14_ + 1.45492250137235;
                                 _loc14_ = _loc14_ * _loc10_;
                                 _loc14_ = _loc14_ + 0.632827064025093;
                                 _loc14_ = _loc14_ * _loc10_;
                                 _loc14_ = _loc14_ + -0.0772156649015329;
                                 _loc14_ = _loc14_ * _loc10_;
                                 _loc12_ = _loc10_ * 0.00321709242282424;
                                 _loc12_ = _loc12_ + 0.104222645593369;
                                 _loc12_ = _loc12_ * _loc10_;
                                 _loc12_ = _loc12_ + 0.769285150456673;
                                 _loc12_ = _loc12_ * _loc10_;
                                 _loc12_ = _loc12_ + 2.12848976379893;
                                 _loc12_ = _loc12_ * _loc10_;
                                 _loc12_ = _loc12_ + 2.45597793713041;
                                 _loc12_ = _loc12_ * _loc10_;
                                 _loc12_ = _loc12_ + 1;
                                 _loc14_ = _loc14_ / _loc12_;
                                 _loc12_ = _loc10_ * -0.5;
                                 _loc14_ = _loc12_ + _loc14_;
                                 _loc8_ = Number(_loc14_ + _loc3_);
                              }
                           }
                        }
                        else
                        {
                           _loc4_ = 2;
                           _loc3_ = 0;
                           if(uint(_loc13_) <= 1073460418)
                           {
                              if(uint(_loc13_) >= 1072936132)
                              {
                                 _loc10_ = Number(_loc10_ + -1.46163214496836);
                                 _loc3_ = 0;
                                 §§goto(addr1240);
                              }
                              else
                              {
                                 _loc10_ = Number(_loc10_ + -1);
                                 _loc3_ = 0;
                                 §§goto(addr1412);
                              }
                           }
                        }
                        _loc14_ = _loc4_ - _loc10_;
                        _loc12_ = _loc14_ * _loc14_;
                        _loc18_ = _loc12_ * 0.0000448640949618915;
                        _loc18_ = _loc18_ + 0.000108011567247584;
                        _loc18_ = _loc18_ * _loc12_;
                        _loc18_ = _loc18_ + 0.000510069792153511;
                        _loc18_ = _loc18_ * _loc12_;
                        _loc18_ = _loc18_ + 0.00289051383673416;
                        _loc18_ = _loc18_ * _loc12_;
                        _loc18_ = _loc18_ + 0.0205808084325167;
                        _loc18_ = _loc18_ * _loc12_;
                        _loc18_ = _loc18_ + 0.322467033424114;
                        _loc18_ = _loc18_ * _loc12_;
                        _loc16_ = _loc12_ * 0.0000252144565451257;
                        _loc16_ = _loc16_ + 0.000220862790713908;
                        _loc16_ = _loc16_ * _loc12_;
                        _loc16_ = _loc16_ + 0.00119270763183362;
                        _loc16_ = _loc16_ * _loc12_;
                        _loc16_ = _loc16_ + 0.00738555086081403;
                        _loc16_ = _loc16_ * _loc12_;
                        _loc16_ = _loc16_ + 0.0673523010531293;
                        _loc12_ = _loc16_ * _loc12_;
                        _loc12_ = _loc12_ + 0.0772156649015329;
                        _loc12_ = _loc14_ * _loc12_;
                        _loc12_ = _loc12_ + _loc18_;
                        _loc14_ = _loc14_ * -0.5;
                        _loc14_ = _loc14_ + _loc12_;
                        _loc8_ = Number(_loc14_ + _loc3_);
                     }
                     else if(uint(_loc13_) <= 1075838975)
                     {
                        _loc13_ = int(_loc10_);
                        _loc3_ = Number(_loc10_ - _loc13_);
                        _loc14_ = _loc3_ * 0.0000319475326584101;
                        _loc14_ = _loc14_ + 0.00184028451407338;
                        _loc14_ = _loc14_ * _loc3_;
                        _loc14_ = _loc14_ + 0.0266422703033639;
                        _loc14_ = _loc14_ * _loc3_;
                        _loc14_ = _loc14_ + 0.146350472652464;
                        _loc14_ = _loc14_ * _loc3_;
                        _loc14_ = _loc14_ + 0.325778796408931;
                        _loc14_ = _loc14_ * _loc3_;
                        _loc14_ = _loc14_ + 0.214982415960609;
                        _loc14_ = _loc14_ * _loc3_;
                        _loc14_ = _loc14_ + -0.0772156649015329;
                        _loc12_ = _loc3_ * 7.32668430744626e-6;
                        _loc12_ = _loc12_ + 0.000777942496381894;
                        _loc12_ = _loc12_ * _loc3_;
                        _loc12_ = _loc12_ + 0.0186459191715653;
                        _loc12_ = _loc12_ * _loc3_;
                        _loc12_ = _loc12_ + 0.171933865632803;
                        _loc12_ = _loc12_ * _loc3_;
                        _loc12_ = _loc12_ + 0.721935547567138;
                        _loc12_ = _loc12_ * _loc3_;
                        _loc12_ = _loc12_ + 1.39200533467621;
                        _loc12_ = _loc12_ * _loc3_;
                        _loc12_ = _loc3_ * 0.5;
                        _loc8_ = Number(_loc12_ + Number(Number(_loc14_ * _loc3_) / (Number(_loc12_ + 1))));
                        _loc10_ = 1;
                        if(_loc13_ <= 4)
                        {
                           if(_loc13_ != 3)
                           {
                              if(_loc13_ != 4)
                              {
                              }
                           }
                           addr1755:
                           _loc14_ = _loc3_ + 2;
                           _loc14_ = _loc14_ * _loc10_;
                           _loc5_ = int(_loc5_ - 16);
                           sf64(_loc14_,_loc5_);
                           ESP = _loc5_;
                           F_log();
                           _loc5_ = int(_loc5_ + 16);
                           _loc14_ = st0;
                           _loc8_ = Number(_loc14_ + _loc8_);
                        }
                        else
                        {
                           if(_loc13_ != 5)
                           {
                              if(_loc13_ != 6)
                              {
                                 if(_loc13_ == 7)
                                 {
                                    _loc10_ = Number(_loc3_ + 6);
                                 }
                              }
                              _loc14_ = _loc3_ + 5;
                              _loc10_ = Number(_loc14_ * _loc10_);
                           }
                           _loc14_ = _loc3_ + 4;
                           _loc10_ = Number(_loc14_ * _loc10_);
                        }
                        _loc14_ = _loc3_ + 3;
                        _loc10_ = Number(_loc14_ * _loc10_);
                        §§goto(addr1755);
                     }
                     else
                     {
                        _loc5_ = int(_loc5_ - 16);
                        sf64(_loc10_,_loc5_);
                        ESP = _loc5_;
                        F_log();
                        _loc5_ = int(_loc5_ + 16);
                        _loc3_ = Number(st0);
                        if(uint(_loc13_) <= 1133510655)
                        {
                           _loc14_ = _loc10_ + -0.5;
                           _loc12_ = 1 / _loc10_;
                           _loc18_ = _loc12_ * _loc12_;
                           _loc16_ = _loc18_ * -0.00163092934096575;
                           _loc16_ = _loc16_ + 0.000836339918996282;
                           _loc16_ = _loc16_ * _loc18_;
                           _loc16_ = _loc16_ + -0.00059518755745034;
                           _loc16_ = _loc16_ * _loc18_;
                           _loc16_ = _loc16_ + 0.00079365055864302;
                           _loc16_ = _loc16_ * _loc18_;
                           _loc16_ = _loc16_ + -0.00277777777728776;
                           _loc18_ = _loc16_ * _loc18_;
                           _loc18_ = _loc18_ + 0.083333333333333;
                           _loc12_ = _loc18_ * _loc12_;
                           _loc8_ = Number(Number(_loc14_ * (_loc3_ + -1)) + (Number(_loc12_ + 0.418938533204673)));
                        }
                        else
                        {
                           _loc14_ = _loc3_ + -1;
                           _loc8_ = Number(_loc14_ * _loc10_);
                        }
                     }
                  }
               }
               if(_loc15_ <= -1)
               {
                  _loc8_ = Number(_loc2_ - _loc8_);
               }
            }
         }
      }
      st0 = _loc8_;
      _loc5_ = _loc7_;
      ESP = _loc5_;
   }
}
