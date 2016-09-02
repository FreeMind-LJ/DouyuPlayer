package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._TWO23;
   import avm2.intrinsics.memory.si32;
   
   public function F_scalbf() : void
   {
      var _loc6_:* = 0;
      var _loc1_:* = NaN;
      var _loc5_:* = 0;
      var _loc20_:* = 0;
      var _loc14_:int = 0;
      var _loc16_:int = 0;
      var _loc9_:* = 0;
      var _loc7_:int = 0;
      var _loc8_:* = 0;
      var _loc12_:* = NaN;
      var _loc10_:* = NaN;
      var _loc17_:* = NaN;
      var _loc3_:* = NaN;
      var _loc4_:* = int(ESP);
      _loc6_ = _loc4_;
      _loc4_ = int(_loc4_ - 64);
      _loc1_ = lf32(_loc6_ + 4);
      _loc12_ = _loc1_;
      _loc3_ = lf32(_loc6_);
      _loc10_ = _loc3_;
      if(!(_loc10_ == _loc10_ & _loc12_ == _loc12_))
      {
         var _loc15_:* = Number(_loc10_ * _loc12_);
         _loc3_ = _loc15_;
      }
      else
      {
         sf32(_loc1_,_loc6_ - 4);
         _loc5_ = li32(_loc6_ - 4);
         _loc20_ = _loc5_ & 2147483647;
         var _loc18_:* = int(_loc20_ + -2139095040);
         if(_loc18_ >= 0)
         {
            _loc15_ = 0;
            if(!(_loc12_ <= _loc15_ | _loc12_ != _loc12_ | _loc15_ != _loc15_))
            {
               _loc15_ = Number(_loc10_ * _loc12_);
               _loc3_ = _loc15_;
            }
            else
            {
               _loc15_ = Number(-_loc12_);
               _loc15_ = Number(_loc10_ / _loc15_);
               _loc3_ = _loc15_;
            }
         }
         else
         {
            _loc18_ = int(_loc5_ >>> 23);
            _loc18_ = _loc18_ & 255;
            _loc16_ = _loc18_ + -127;
            if(_loc16_ <= 22)
            {
               _loc14_ = _loc5_ >>> 31;
               if(_loc16_ <= -1)
               {
                  _loc17_ = _loc1_;
                  if(_loc20_ != 0)
                  {
                     _loc18_ = int(_TWO23 + (_loc14_ << 2));
                     _loc15_ = lf32(_loc18_);
                     var _loc13_:* = Number(_loc15_ + _loc12_);
                     var _loc19_:* = _loc13_;
                     _loc13_ = _loc19_;
                     _loc15_ = Number(_loc13_ - _loc15_);
                     sf32(_loc15_,_loc6_ - 8);
                     var _loc11_:* = li32(_loc6_ - 8);
                     _loc11_ = _loc11_ & 2147483647;
                     _loc18_ = _loc11_ | _loc5_ & -2147483648;
                     si32(_loc18_,_loc6_ - 12);
                     _loc17_ = lf32(_loc6_ - 12);
                  }
               }
               else
               {
                  _loc18_ = int(_TWO23 + (_loc14_ << 2));
                  _loc15_ = lf32(_loc18_);
                  _loc13_ = Number(_loc15_ + _loc12_);
                  _loc19_ = _loc13_;
                  _loc13_ = _loc19_;
                  _loc15_ = Number(_loc13_ - _loc15_);
                  _loc17_ = _loc15_;
               }
            }
            else
            {
               _loc17_ = _loc1_;
               if(_loc16_ == 128)
               {
                  _loc15_ = Number(_loc12_ + _loc12_);
                  _loc17_ = _loc15_;
               }
            }
            _loc15_ = _loc17_;
            if(_loc15_ != _loc12_)
            {
               _loc15_ = Number(_loc12_ - _loc12_);
               _loc15_ = _loc15_;
               _loc15_ = Number(_loc15_ / _loc15_);
               _loc3_ = _loc15_;
            }
            else
            {
               _loc15_ = 65000;
               if(!(_loc12_ <= _loc15_ | _loc12_ != _loc12_ | _loc15_ != _loc15_))
               {
                  sf32(_loc3_,_loc6_ - 24);
                  _loc9_ = li32(_loc6_ - 24);
                  _loc18_ = int(_loc9_ >>> 23);
                  _loc8_ = _loc18_ & 255;
                  if(_loc8_ == 0)
                  {
                     _loc18_ = _loc9_ & 2147483647;
                     if(_loc18_ != 0)
                     {
                        _loc15_ = Number(_loc10_ * 33554432);
                        _loc3_ = _loc15_;
                        sf32(_loc3_,_loc6_ - 28);
                        _loc9_ = li32(_loc6_ - 28);
                        _loc18_ = int(_loc9_ >>> 23);
                        _loc18_ = _loc18_ & 255;
                        _loc8_ = int(_loc18_ + -25);
                     }
                  }
                  if(_loc8_ == 255)
                  {
                     _loc15_ = _loc3_;
                     _loc15_ = Number(_loc15_ + _loc15_);
                     _loc3_ = _loc15_;
                  }
                  else
                  {
                     _loc7_ = _loc8_ + 65000;
                     if(_loc7_ >= 255)
                     {
                        sf32(_loc3_,_loc6_ - 48);
                        _loc18_ = li32(_loc6_ - 48);
                        _loc18_ = _loc18_ & -2147483648;
                        _loc18_ = _loc18_ | 1900671690;
                        si32(_loc18_,_loc6_ - 52);
                        _loc15_ = lf32(_loc6_ - 52);
                        _loc15_ = Number(_loc15_ * 1.00000001504747e30);
                        _loc3_ = _loc15_;
                     }
                     else if(_loc7_ >= 1)
                     {
                        _loc18_ = _loc9_ & -2139095041;
                        _loc18_ = _loc18_ | _loc7_ << 23;
                        si32(_loc18_,_loc6_ - 44);
                        _loc3_ = lf32(_loc6_ - 44);
                     }
                     else if(_loc7_ <= -25)
                     {
                        sf32(_loc3_,_loc6_ - 36);
                        _loc18_ = li32(_loc6_ - 36);
                        _loc18_ = _loc18_ & -2147483648;
                        _loc18_ = _loc18_ | 1900671690;
                        si32(_loc18_,_loc6_ - 40);
                        _loc15_ = lf32(_loc6_ - 40);
                        _loc15_ = Number(_loc15_ * 1.00000001504747e30);
                        _loc3_ = _loc15_;
                     }
                     else
                     {
                        _loc11_ = _loc7_ << 23;
                        _loc11_ = int(_loc11_ + 209715200);
                        _loc18_ = _loc11_ | _loc9_ & -2139095041;
                        si32(_loc18_,_loc6_ - 32);
                        _loc15_ = lf32(_loc6_ - 32);
                        _loc15_ = Number(_loc15_ * 2.98023223876953e-8);
                        _loc3_ = _loc15_;
                     }
                  }
               }
               else
               {
                  _loc15_ = -65000;
                  if(!(_loc12_ >= _loc15_ | _loc12_ != _loc12_ | _loc15_ != _loc15_))
                  {
                     sf32(_loc3_,_loc6_ - 16);
                     _loc8_ = li32(_loc6_ - 16);
                     _loc18_ = int(_loc8_ >>> 23);
                     _loc9_ = _loc18_ & 255;
                     if(_loc9_ != 255)
                     {
                        if(_loc9_ == 0)
                        {
                           _loc18_ = _loc8_ & 2147483647;
                           if(_loc18_ != 0)
                           {
                              _loc15_ = Number(_loc10_ * 33554432);
                              _loc19_ = 1.00000000317108e-30;
                              _loc15_ = Number(_loc15_ * _loc19_);
                              _loc3_ = _loc15_;
                           }
                        }
                        else
                        {
                           _loc18_ = _loc8_ & -2147483648;
                           _loc18_ = _loc18_ | 228737632;
                           si32(_loc18_,_loc6_ - 20);
                           _loc13_ = lf32(_loc6_ - 20);
                           _loc15_ = Number(_loc13_ * 1.00000000317108e-30);
                           _loc3_ = _loc15_;
                        }
                     }
                     else
                     {
                        _loc15_ = Number(_loc10_ + _loc10_);
                        _loc3_ = _loc15_;
                     }
                  }
                  else
                  {
                     _loc4_ = int(_loc4_ - 16);
                     sf32(_loc3_,_loc4_);
                     _loc18_ = int(_loc1_);
                     si32(_loc18_,_loc4_ + 4);
                     ESP = _loc4_;
                     F_scalbnf();
                     _loc4_ = int(_loc4_ + 16);
                     _loc3_ = Number(st0);
                  }
               }
            }
         }
      }
      st0 = _loc3_;
      _loc4_ = _loc6_;
      ESP = _loc4_;
   }
}
