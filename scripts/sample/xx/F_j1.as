package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   
   public function F_j1() : void
   {
      var _loc15_:* = 0;
      var _loc17_:* = NaN;
      var _loc28_:* = 0;
      var _loc27_:* = 0;
      var _loc19_:* = NaN;
      var _loc16_:Number = NaN;
      var _loc1_:* = NaN;
      var _loc26_:* = 0;
      var _loc2_:* = NaN;
      var _loc3_:* = NaN;
      var _loc4_:* = NaN;
      var _loc7_:* = NaN;
      var _loc6_:* = NaN;
      var _loc5_:* = NaN;
      var _loc11_:* = NaN;
      var _loc10_:* = NaN;
      var _loc9_:* = NaN;
      var _loc18_:Number = NaN;
      var _loc24_:int = 0;
      var _loc25_:int = 0;
      var _loc23_:int = 0;
      var _loc14_:* = int(ESP);
      _loc15_ = _loc14_;
      _loc14_ = int(_loc14_ - 16);
      _loc17_ = lf64(_loc15_);
      sf64(_loc17_,_loc15_ - 8);
      var _loc22_:* = int(_loc15_ - 8);
      _loc22_ = _loc22_ | 4;
      _loc28_ = li32(_loc22_);
      _loc27_ = _loc28_ & 2147483647;
      if(uint(_loc27_) >= 2146435072)
      {
         _loc17_ = Number(1 / _loc17_);
      }
      else if(uint(_loc27_) >= 1073741824)
      {
         _loc17_ = Number(Math.abs(_loc17_));
         _loc16_ = Math.cos(_loc17_);
         _loc19_ = Number(Math.sin(_loc17_));
         _loc18_ = _loc19_ - _loc16_;
         if(uint(_loc27_) <= 2145386495)
         {
            var _loc21_:Number = _loc19_ * _loc16_;
            _loc1_ = Number(Math.cos(Number(_loc17_ + _loc17_)));
            if(!(_loc21_ <= 0 | _loc21_ != _loc21_ | false))
            {
               var _loc20_:Number = -_loc19_;
               _loc16_ = _loc20_ - _loc16_;
               _loc18_ = _loc1_ / _loc16_;
            }
            else
            {
               _loc16_ = _loc1_ / _loc18_;
            }
            if(uint(_loc27_) < 1207959553)
            {
               sf64(_loc17_,_loc15_ - 16);
               _loc22_ = int(_loc15_ - 16);
               _loc22_ = _loc22_ | 4;
               _loc22_ = li32(_loc22_);
               _loc26_ = _loc22_ & 2147483647;
               _loc25_ = _ps8;
               _loc24_ = _pr8;
               if(uint(_loc26_) <= 1075838975)
               {
                  _loc25_ = _ps5;
                  _loc24_ = _pr5;
                  if(uint(_loc26_) <= 1074933386)
                  {
                     _loc25_ = _ps3;
                     _loc24_ = _pr3;
                     if(uint(_loc26_) <= 1074191212)
                     {
                        if(uint(_loc26_) >= 1073741824)
                        {
                           _loc25_ = _ps2;
                           _loc24_ = _pr2;
                        }
                     }
                  }
               }
               _loc2_ = lf64(_loc24_ + 40);
               _loc1_ = lf64(_loc24_ + 32);
               _loc19_ = lf64(_loc24_ + 24);
               _loc3_ = lf64(_loc24_ + 16);
               _loc4_ = lf64(_loc24_ + 8);
               _loc7_ = lf64(_loc24_);
               _loc6_ = lf64(_loc25_ + 32);
               _loc5_ = lf64(_loc25_ + 24);
               _loc11_ = lf64(_loc25_ + 16);
               _loc10_ = lf64(_loc25_ + 8);
               _loc9_ = lf64(_loc25_);
               _loc23_ = _qs8;
               _loc25_ = _qr8;
               if(uint(_loc26_) <= 1075838975)
               {
                  _loc23_ = _qs5;
                  _loc25_ = _qr5;
                  if(uint(_loc26_) <= 1074933386)
                  {
                     _loc23_ = _qs3;
                     _loc25_ = _qr3;
                     if(uint(_loc26_) <= 1074191212)
                     {
                        if(uint(_loc26_) >= 1073741824)
                        {
                           _loc23_ = _qs2;
                           _loc25_ = _qr2;
                        }
                     }
                  }
               }
               _loc20_ = _loc17_ * _loc17_;
               _loc20_ = 1 / _loc20_;
               _loc21_ = _loc2_ * _loc20_;
               _loc21_ = _loc1_ + _loc21_;
               _loc21_ = _loc21_ * _loc20_;
               _loc21_ = _loc19_ + _loc21_;
               _loc21_ = _loc21_ * _loc20_;
               _loc21_ = _loc3_ + _loc21_;
               _loc21_ = _loc21_ * _loc20_;
               _loc21_ = _loc4_ + _loc21_;
               _loc21_ = _loc21_ * _loc20_;
               _loc21_ = _loc7_ + _loc21_;
               var _loc8_:* = Number(_loc6_ * _loc20_);
               _loc8_ = Number(_loc5_ + _loc8_);
               _loc8_ = Number(_loc8_ * _loc20_);
               _loc8_ = Number(_loc11_ + _loc8_);
               _loc8_ = Number(_loc8_ * _loc20_);
               _loc8_ = Number(_loc10_ + _loc8_);
               _loc8_ = Number(_loc8_ * _loc20_);
               _loc8_ = Number(_loc9_ + _loc8_);
               _loc8_ = Number(_loc8_ * _loc20_);
               _loc8_ = Number(_loc8_ + 1);
               _loc21_ = _loc21_ / _loc8_;
               _loc21_ = _loc21_ + 1;
               _loc8_ = lf64(_loc25_ + 40);
               _loc8_ = Number(_loc8_ * _loc20_);
               var _loc13_:* = lf64(_loc25_ + 32);
               _loc8_ = Number(_loc13_ + _loc8_);
               _loc8_ = Number(_loc8_ * _loc20_);
               _loc13_ = lf64(_loc25_ + 24);
               _loc8_ = Number(_loc13_ + _loc8_);
               _loc8_ = Number(_loc8_ * _loc20_);
               _loc13_ = lf64(_loc25_ + 16);
               _loc8_ = Number(_loc13_ + _loc8_);
               _loc8_ = Number(_loc8_ * _loc20_);
               _loc13_ = lf64(_loc25_ + 8);
               _loc8_ = Number(_loc13_ + _loc8_);
               _loc8_ = Number(_loc8_ * _loc20_);
               _loc13_ = lf64(_loc25_);
               _loc8_ = Number(_loc13_ + _loc8_);
               _loc13_ = lf64(_loc23_ + 40);
               _loc13_ = Number(_loc13_ * _loc20_);
               var _loc12_:* = lf64(_loc23_ + 32);
               _loc13_ = Number(_loc12_ + _loc13_);
               _loc13_ = Number(_loc13_ * _loc20_);
               _loc12_ = lf64(_loc23_ + 24);
               _loc13_ = Number(_loc12_ + _loc13_);
               _loc13_ = Number(_loc13_ * _loc20_);
               _loc12_ = lf64(_loc23_ + 16);
               _loc13_ = Number(_loc12_ + _loc13_);
               _loc13_ = Number(_loc13_ * _loc20_);
               _loc12_ = lf64(_loc23_ + 8);
               _loc13_ = Number(_loc12_ + _loc13_);
               _loc12_ = Number(_loc13_ * _loc20_);
               _loc13_ = lf64(_loc23_);
               _loc13_ = Number(_loc13_ + _loc12_);
               _loc20_ = _loc13_ * _loc20_;
               _loc20_ = _loc20_ + 1;
               _loc20_ = _loc8_ / _loc20_;
               _loc20_ = _loc20_ + 0.375;
               _loc14_ = int(_loc14_ - 16);
               sf64(_loc17_,_loc14_);
               _loc20_ = _loc20_ / _loc17_;
               _loc20_ = _loc20_ * _loc16_;
               _loc21_ = _loc21_ * _loc18_;
               _loc20_ = _loc21_ - _loc20_;
               _loc20_ = _loc20_ * 0.564189583547756;
               ESP = _loc14_;
               F_sqrt();
               _loc14_ = int(_loc14_ + 16);
               _loc21_ = st0;
               _loc17_ = Number(_loc20_ / _loc21_);
            }
            addr719:
            if(_loc28_ <= -1)
            {
               _loc17_ = Number(-_loc17_);
            }
         }
         _loc14_ = int(_loc14_ - 16);
         sf64(_loc17_,_loc14_);
         ESP = _loc14_;
         F_sqrt();
         _loc20_ = _loc18_ * 0.564189583547756;
         _loc14_ = int(_loc14_ + 16);
         _loc21_ = st0;
         _loc17_ = Number(_loc20_ / _loc21_);
         §§goto(addr719);
      }
      else
      {
         if(uint(_loc27_) <= 1044381695)
         {
            _loc20_ = _loc17_ + 1.0e300;
            if(!(_loc20_ <= 1 | _loc20_ != _loc20_ | false))
            {
               _loc17_ = Number(_loc17_ * 0.5);
            }
         }
         _loc20_ = _loc17_ * _loc17_;
         _loc21_ = _loc20_ * 4.96727999609584e-8;
         _loc21_ = _loc21_ + -0.0000159955631084036;
         _loc21_ = _loc21_ * _loc20_;
         _loc21_ = _loc21_ + 0.0014070566695519;
         _loc21_ = _loc21_ * _loc20_;
         _loc21_ = _loc21_ + -0.0625;
         _loc21_ = _loc21_ * _loc20_;
         _loc21_ = _loc21_ * _loc17_;
         _loc8_ = Number(_loc20_ * 1.23542274426138e-11);
         _loc8_ = Number(_loc8_ + 5.04636257076217e-9);
         _loc8_ = Number(_loc8_ * _loc20_);
         _loc8_ = Number(_loc8_ + 1.17718464042624e-6);
         _loc8_ = Number(_loc8_ * _loc20_);
         _loc8_ = Number(_loc8_ + 0.000185946785588631);
         _loc8_ = Number(_loc8_ * _loc20_);
         _loc8_ = Number(_loc8_ + 0.0191537599538363);
         _loc20_ = _loc8_ * _loc20_;
         _loc20_ = _loc20_ + 1;
         _loc21_ = _loc21_ / _loc20_;
         _loc20_ = _loc17_ * 0.5;
         _loc17_ = Number(_loc20_ + _loc21_);
      }
      st0 = _loc17_;
      _loc14_ = _loc15_;
      ESP = _loc14_;
   }
}
