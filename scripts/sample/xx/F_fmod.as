package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._Zero82;
   import avm2.intrinsics.memory.si32;
   
   public function F_fmod() : void
   {
      var _loc4_:* = 0;
      var _loc9_:* = NaN;
      var _loc13_:* = 0;
      var _loc5_:* = 0;
      var _loc17_:* = 0;
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc16_:* = 0;
      var _loc14_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:* = NaN;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 24);
      _loc11_ = lf64(_loc4_);
      sf64(_loc11_,_loc4_ - 8);
      _loc9_ = lf64(_loc4_ + 8);
      sf64(_loc9_,_loc4_ - 16);
      _loc3_ = int(_loc4_ - 16);
      _loc3_ = _loc3_ | 4;
      _loc17_ = li32(_loc3_);
      _loc16_ = _loc17_ & 2147483647;
      _loc14_ = li32(_loc4_ - 16);
      _loc3_ = _loc16_ | _loc14_;
      if(_loc3_ != 0)
      {
         _loc13_ = li32(int(_loc4_ - 8) | 4);
         _loc12_ = _loc13_ & -2147483648;
         _loc10_ = _loc12_ ^ _loc13_;
         if(_loc10_ <= 2146435071)
         {
            if((uint(int((_loc14_ | int(0 - _loc14_)) >>> 31) | _loc16_)) < 2146435073)
            {
               _loc8_ = li32(_loc4_ - 8);
               if(_loc10_ <= _loc16_)
               {
                  if(_loc10_ >= _loc16_)
                  {
                     if(uint(_loc8_) >= uint(_loc14_))
                     {
                        if(_loc8_ == _loc14_)
                        {
                           _loc11_ = lf64(int(_Zero82 + (int((_loc13_ & -2147483648) >>> 28))));
                        }
                     }
                  }
               }
               if(_loc10_ <= 1048575)
               {
                  if(_loc13_ == _loc12_)
                  {
                     _loc7_ = -1043;
                     _loc1_ = _loc8_;
                     if(_loc8_ >= 1)
                     {
                        do
                        {
                           _loc7_ = int(_loc7_ + -1);
                           _loc1_ = _loc1_ << 1;
                        }
                        while(_loc1_ > 0);
                        
                     }
                  }
                  else
                  {
                     _loc1_ = _loc10_ << 11;
                     _loc7_ = -1022;
                     if(_loc1_ >= 1)
                     {
                        do
                        {
                           _loc7_ = int(_loc7_ + -1);
                           _loc1_ = _loc1_ << 1;
                        }
                        while(_loc1_ > 0);
                        
                     }
                  }
               }
               else
               {
                  _loc7_ = int((_loc10_ >> 20) + -1023);
               }
               if(uint(_loc16_) <= 1048575)
               {
                  if(_loc16_ == 0)
                  {
                     _loc1_ = -1043;
                     _loc5_ = _loc14_;
                     if(_loc14_ >= 1)
                     {
                        do
                        {
                           _loc1_ = int(_loc1_ + -1);
                           _loc5_ = _loc5_ << 1;
                        }
                        while(_loc5_ > 0);
                        
                     }
                  }
                  else
                  {
                     _loc5_ = _loc17_ << 11;
                     _loc1_ = -1022;
                     if(_loc5_ >= 1)
                     {
                        do
                        {
                           _loc1_ = int(_loc1_ + -1);
                           _loc5_ = _loc5_ << 1;
                        }
                        while(_loc5_ > 0);
                        
                     }
                  }
               }
               else
               {
                  _loc1_ = int((int(_loc16_ >>> 20)) + -1023);
               }
               if(_loc7_ >= -1022)
               {
                  _loc10_ = _loc10_ & 1048575 | 1048576;
               }
               else
               {
                  _loc5_ = int(-1022 - _loc7_);
                  if(_loc5_ <= 31)
                  {
                     var _loc6_:* = int(_loc8_ >>> int(32 - _loc5_));
                     _loc10_ = _loc6_ | _loc10_ << _loc5_;
                     _loc8_ = _loc8_ << _loc5_;
                  }
                  else
                  {
                     _loc10_ = _loc8_ << int(_loc5_ + -32);
                     _loc8_ = 0;
                  }
               }
               if(_loc1_ >= -1022)
               {
                  _loc16_ = _loc17_ & 1048575 | 1048576;
               }
               else
               {
                  _loc17_ = int(-1022 - _loc1_);
                  if(_loc17_ <= 31)
                  {
                     _loc6_ = int(_loc14_ >>> int(32 - _loc17_));
                     _loc16_ = _loc6_ | _loc16_ << _loc17_;
                     _loc14_ = _loc14_ << _loc17_;
                  }
                  else
                  {
                     _loc16_ = _loc14_ << int(_loc17_ + -32);
                     _loc14_ = 0;
                  }
               }
               _loc3_ = int(_loc7_ + 1);
               _loc5_ = int(_loc3_ - _loc1_);
               while(true)
               {
                  _loc7_ = 1;
                  if(uint(_loc8_) >= uint(_loc14_))
                  {
                     _loc7_ = 0;
                  }
                  _loc3_ = _loc7_ & 1;
                  _loc6_ = int(_loc10_ - _loc16_);
                  _loc17_ = int(_loc6_ - _loc3_);
                  _loc7_ = int(_loc8_ - _loc14_);
                  _loc5_ = int(_loc5_ + -1);
                  if(_loc5_ == 0)
                  {
                     if(_loc17_ <= -1)
                     {
                        _loc7_ = _loc8_;
                     }
                     if(_loc17_ <= -1)
                     {
                        _loc17_ = _loc10_;
                     }
                     _loc3_ = _loc17_ | _loc7_;
                     if(_loc3_ != 0)
                     {
                        if(_loc17_ < 1048576)
                        {
                           do
                           {
                              _loc6_ = int(_loc7_ >>> 31);
                              _loc3_ = _loc17_ << 1;
                              _loc17_ = _loc3_ | _loc6_;
                              _loc1_ = int(_loc1_ + -1);
                              _loc7_ = _loc7_ << 1;
                           }
                           while(_loc17_ < 1048576);
                           
                        }
                        if(_loc1_ >= -1022)
                        {
                           _loc6_ = _loc1_ << 20;
                           _loc12_ = int(_loc17_ + -1048576) | _loc12_ | int(_loc6_ + 1072693248);
                        }
                        else
                        {
                           _loc14_ = int(-1022 - _loc1_);
                           if(_loc14_ <= 20)
                           {
                              _loc6_ = _loc17_ << int(32 - _loc14_);
                              _loc7_ = _loc6_ | int(_loc7_ >>> _loc14_);
                              _loc14_ = _loc17_ >> _loc14_;
                           }
                           else if(_loc14_ <= 31)
                           {
                              _loc6_ = _loc17_ << int(32 - _loc14_);
                              _loc7_ = _loc6_ | int(_loc7_ >>> _loc14_);
                              _loc14_ = _loc12_;
                           }
                           else
                           {
                              _loc7_ = _loc17_ >> int(_loc14_ + -32);
                              _loc14_ = _loc12_;
                           }
                           _loc12_ = _loc14_ | _loc12_;
                        }
                        _loc3_ = int(_loc4_ - 24);
                        _loc3_ = _loc3_ | 4;
                        si32(_loc12_,_loc3_);
                        si32(_loc7_,_loc4_ - 24);
                        _loc11_ = lf64(_loc4_ - 24);
                        break;
                     }
                     _loc11_ = lf64(int(_Zero82 + (int((_loc13_ & -2147483648) >>> 28))));
                     break;
                  }
                  if(_loc17_ <= -1)
                  {
                     _loc6_ = int(_loc8_ >>> 31);
                     _loc10_ = _loc6_ | _loc10_ << 1;
                  }
                  else
                  {
                     if((_loc17_ | _loc7_) == 0)
                     {
                        _loc11_ = lf64(int(_Zero82 + (int((_loc13_ & -2147483648) >>> 28))));
                        break;
                     }
                     _loc6_ = _loc17_ << 1;
                     _loc10_ = _loc6_ | int(_loc7_ >>> 31);
                     _loc8_ = _loc7_;
                  }
                  _loc8_ = _loc8_ << 1;
               }
            }
            addr697:
            st0 = _loc11_;
            _loc2_ = _loc4_;
            ESP = _loc2_;
            return;
         }
      }
      var _loc15_:Number = _loc11_ * _loc9_;
      _loc11_ = Number(_loc15_ / _loc15_);
      §§goto(addr697);
   }
}
