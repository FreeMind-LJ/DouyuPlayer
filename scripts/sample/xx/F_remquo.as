package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._Zero82;
   
   public function F_remquo() : void
   {
      var _loc5_:* = 0;
      var _loc14_:* = NaN;
      var _loc12_:* = NaN;
      var _loc10_:* = 0;
      var _loc17_:* = 0;
      var _loc22_:* = 0;
      var _loc18_:* = 0;
      var _loc11_:* = 0;
      var _loc20_:* = 0;
      var _loc21_:Number = NaN;
      var _loc15_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:int = 0;
      var _loc13_:* = 0;
      var _loc1_:* = 0;
      var _loc16_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc5_ = _loc3_;
      _loc3_ = int(_loc3_ - 40);
      _loc14_ = lf64(_loc5_);
      sf64(_loc14_,_loc5_ - 8);
      _loc12_ = lf64(_loc5_ + 8);
      sf64(_loc12_,_loc5_ - 16);
      var _loc4_:* = int(_loc5_ - 16);
      _loc4_ = _loc4_ | 4;
      _loc22_ = li32(_loc4_);
      _loc20_ = _loc22_ & 2147483647;
      _loc18_ = li32(_loc5_ - 16);
      _loc4_ = _loc20_ | _loc18_;
      if(_loc4_ != 0)
      {
         _loc4_ = int(_loc5_ - 8);
         _loc4_ = _loc4_ | 4;
         _loc17_ = li32(_loc4_);
         _loc15_ = _loc17_ & -2147483648;
         _loc13_ = _loc15_ ^ _loc17_;
         if(_loc13_ <= 2146435071)
         {
            _loc4_ = _loc18_ | int(0 - _loc18_);
            _loc4_ = int(_loc4_ >>> 31);
            _loc4_ = _loc4_ | _loc20_;
            if(uint(_loc4_) < 2146435073)
            {
               _loc11_ = _loc22_ ^ _loc17_;
               _loc10_ = li32(_loc5_ + 16);
               _loc1_ = li32(_loc5_ - 8);
               if(_loc13_ <= _loc20_)
               {
                  _loc6_ = 0;
                  if(_loc13_ >= _loc20_)
                  {
                     if(uint(_loc1_) >= uint(_loc18_))
                     {
                        if(_loc1_ == _loc18_)
                        {
                           si32(1,_loc10_);
                           _loc4_ = _loc17_ & -2147483648;
                           _loc4_ = int(_Zero82 + (int(_loc4_ >>> 28)));
                           _loc14_ = lf64(_loc4_);
                        }
                     }
                  }
                  addr767:
                  _loc4_ = int(_loc5_ - 24);
                  _loc4_ = _loc4_ | 4;
                  si32(_loc13_,_loc4_);
                  si32(_loc1_,_loc5_ - 24);
                  _loc12_ = Number(Math.abs(_loc12_));
                  _loc16_ = lf64(_loc5_ - 24);
                  if(!(_loc12_ >= 4.4501477170144e-308 | _loc12_ != _loc12_ | false))
                  {
                     _loc21_ = _loc16_ + _loc16_;
                     if(_loc21_ <= _loc12_)
                     {
                        if(!(_loc21_ != _loc12_ | _loc21_ != _loc21_ | _loc12_ != _loc12_))
                        {
                           _loc4_ = _loc6_ & 1;
                           if(_loc4_ != 0)
                           {
                           }
                        }
                     }
                     _loc16_ = Number(_loc16_ - _loc12_);
                     _loc6_ = int(_loc6_ + 1);
                  }
                  else
                  {
                     _loc21_ = _loc12_ * 0.5;
                     if(_loc21_ >= _loc16_)
                     {
                        if(!(_loc21_ != _loc16_ | _loc21_ != _loc21_ | _loc16_ != _loc16_))
                        {
                           _loc4_ = _loc6_ & 1;
                           if(_loc4_ != 0)
                           {
                           }
                        }
                     }
                     _loc16_ = Number(_loc16_ - _loc12_);
                     _loc6_ = int(_loc6_ + 1);
                  }
                  sf64(_loc16_,_loc5_ - 32);
                  _loc4_ = int(_loc5_ - 32);
                  _loc4_ = _loc4_ | 4;
                  _loc4_ = li32(_loc4_);
                  _loc4_ = _loc4_ ^ _loc15_;
                  var _loc9_:* = int(_loc5_ - 40);
                  _loc9_ = _loc9_ | 4;
                  si32(_loc4_,_loc9_);
                  _loc15_ = _loc6_ & 2147483647;
                  _loc17_ = int(0 - _loc15_);
                  if(_loc11_ >= 0)
                  {
                     _loc17_ = _loc15_;
                  }
                  si32(_loc17_,_loc10_);
                  _loc4_ = li32(_loc5_ - 32);
                  si32(_loc4_,_loc5_ - 40);
                  _loc14_ = lf64(_loc5_ - 40);
               }
               if(_loc13_ <= 1048575)
               {
                  if(_loc17_ == _loc15_)
                  {
                     _loc6_ = -1043;
                     _loc7_ = _loc1_;
                     if(_loc1_ >= 1)
                     {
                        do
                        {
                           _loc6_ = int(_loc6_ + -1);
                           _loc7_ = _loc7_ << 1;
                        }
                        while(_loc7_ > 0);
                        
                     }
                  }
                  else
                  {
                     _loc7_ = _loc13_ << 11;
                     _loc6_ = -1022;
                     if(_loc7_ >= 1)
                     {
                        do
                        {
                           _loc6_ = int(_loc6_ + -1);
                           _loc7_ = _loc7_ << 1;
                        }
                        while(_loc7_ > 0);
                        
                     }
                  }
               }
               else
               {
                  _loc4_ = _loc13_ >> 20;
                  _loc6_ = int(_loc4_ + -1023);
               }
               if(uint(_loc20_) <= 1048575)
               {
                  if(_loc20_ == 0)
                  {
                     _loc7_ = -1043;
                     _loc8_ = _loc18_;
                     if(_loc18_ >= 1)
                     {
                        do
                        {
                           _loc7_ = int(_loc7_ + -1);
                           _loc8_ = _loc8_ << 1;
                        }
                        while(_loc8_ > 0);
                        
                     }
                  }
                  else
                  {
                     _loc8_ = _loc22_ << 11;
                     _loc7_ = -1022;
                     if(_loc8_ >= 1)
                     {
                        do
                        {
                           _loc7_ = int(_loc7_ + -1);
                           _loc8_ = _loc8_ << 1;
                        }
                        while(_loc8_ > 0);
                        
                     }
                  }
               }
               else
               {
                  _loc4_ = int(_loc20_ >>> 20);
                  _loc7_ = int(_loc4_ + -1023);
               }
               if(_loc6_ >= -1022)
               {
                  _loc4_ = _loc13_ & 1048575;
                  _loc13_ = _loc4_ | 1048576;
               }
               else
               {
                  _loc8_ = int(-1022 - _loc6_);
                  if(_loc8_ <= 31)
                  {
                     _loc9_ = int(_loc1_ >>> int(32 - _loc8_));
                     _loc13_ = _loc9_ | _loc13_ << _loc8_;
                     _loc1_ = _loc1_ << _loc8_;
                  }
                  else
                  {
                     _loc13_ = _loc1_ << int(_loc8_ + -32);
                     _loc1_ = 0;
                  }
               }
               if(_loc7_ >= -1022)
               {
                  _loc4_ = _loc22_ & 1048575;
                  _loc22_ = _loc4_ | 1048576;
               }
               else
               {
                  _loc8_ = int(-1022 - _loc7_);
                  if(_loc8_ <= 31)
                  {
                     _loc9_ = int(_loc18_ >>> int(32 - _loc8_));
                     _loc22_ = _loc9_ | _loc20_ << _loc8_;
                     _loc18_ = _loc18_ << _loc8_;
                  }
                  else
                  {
                     _loc22_ = _loc18_ << int(_loc8_ + -32);
                     _loc18_ = 0;
                  }
               }
               _loc8_ = 0;
               _loc20_ = 1;
               if(uint(_loc1_) >= uint(_loc18_))
               {
                  _loc20_ = _loc8_;
               }
               _loc4_ = _loc20_ & 1;
               _loc9_ = int(_loc13_ - _loc22_);
               _loc2_ = _loc9_ - _loc4_;
               _loc20_ = int(_loc1_ - _loc18_);
               if(_loc6_ != _loc7_)
               {
                  _loc6_ = int(_loc6_ - _loc7_);
                  _loc8_ = 0;
                  do
                  {
                     if(_loc2_ <= -1)
                     {
                        _loc9_ = int(_loc1_ >>> 31);
                        _loc13_ = _loc9_ | _loc13_ << 1;
                     }
                     else
                     {
                        _loc9_ = int(_loc20_ >>> 31);
                        _loc13_ = _loc9_ | _loc2_ << 1;
                        _loc8_ = _loc8_ | 1;
                        _loc1_ = _loc20_;
                     }
                     _loc1_ = _loc1_ << 1;
                     _loc20_ = 1;
                     if(uint(_loc1_) >= uint(_loc18_))
                     {
                        _loc20_ = 0;
                     }
                     _loc4_ = _loc20_ & 1;
                     _loc9_ = int(_loc13_ - _loc22_);
                     _loc2_ = _loc9_ - _loc4_;
                     _loc20_ = int(_loc1_ - _loc18_);
                     _loc6_ = int(_loc6_ + -1);
                     _loc8_ = _loc8_ << 1;
                  }
                  while(_loc6_ != 0);
                  
               }
               if(_loc2_ <= -1)
               {
                  _loc20_ = _loc1_;
               }
               _loc18_ = _loc2_;
               if(_loc2_ <= -1)
               {
                  _loc18_ = _loc13_;
               }
               _loc4_ = _loc20_ | _loc18_;
               _loc9_ = int(_loc2_ >>> 31);
               _loc9_ = _loc8_ | _loc9_;
               _loc6_ = _loc9_ ^ 1;
               if(_loc4_ != 0)
               {
                  if(_loc18_ < 1048576)
                  {
                     do
                     {
                        _loc9_ = _loc18_ << 1;
                        _loc4_ = int(_loc20_ >>> 31);
                        _loc18_ = _loc4_ | _loc9_;
                        _loc7_ = int(_loc7_ + -1);
                        _loc20_ = _loc20_ << 1;
                     }
                     while(_loc18_ < 1048576);
                     
                  }
                  if(_loc7_ >= -1022)
                  {
                     _loc9_ = _loc7_ << 20;
                     _loc9_ = int(_loc9_ + 1072693248);
                     _loc13_ = _loc9_ | int(_loc18_ + -1048576);
                     _loc1_ = _loc20_;
                  }
                  else
                  {
                     _loc17_ = int(-1022 - _loc7_);
                     if(_loc17_ <= 20)
                     {
                        _loc9_ = _loc18_ << int(32 - _loc17_);
                        _loc1_ = _loc9_ | int(_loc20_ >>> _loc17_);
                        _loc13_ = _loc18_ >> _loc17_;
                     }
                     else if(_loc17_ <= 31)
                     {
                        _loc9_ = _loc18_ << int(32 - _loc17_);
                        _loc1_ = _loc9_ | int(_loc20_ >>> _loc17_);
                        _loc13_ = _loc15_;
                     }
                     else
                     {
                        _loc1_ = _loc18_ >> int(_loc17_ + -32);
                        _loc13_ = _loc15_;
                     }
                  }
                  §§goto(addr767);
               }
               else
               {
                  _loc15_ = int(0 - _loc6_);
                  if(_loc11_ >= 0)
                  {
                     _loc15_ = _loc6_;
                  }
                  si32(_loc15_,_loc10_);
                  _loc4_ = _loc17_ & -2147483648;
                  _loc4_ = int(_loc4_ >>> 28);
                  _loc4_ = int(_Zero82 + _loc4_);
                  _loc14_ = lf64(_loc4_);
               }
            }
            addr962:
            st0 = _loc14_;
            _loc3_ = _loc5_;
            ESP = _loc3_;
            return;
         }
      }
      var _loc19_:Number = _loc14_ * _loc12_;
      _loc14_ = Number(_loc19_ / _loc19_);
      §§goto(addr962);
   }
}
