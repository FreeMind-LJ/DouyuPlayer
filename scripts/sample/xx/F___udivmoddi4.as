package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F___udivmoddi4() : void
   {
      var _loc10_:* = 0;
      var _loc22_:* = 0;
      var _loc19_:* = 0;
      var _loc9_:int = 0;
      var _loc3_:* = 0;
      var _loc2_:* = 0;
      var _loc1_:* = 0;
      var _loc20_:* = 0;
      var _loc11_:* = 0;
      var _loc21_:* = 0;
      var _loc17_:* = 0;
      var _loc8_:* = 0;
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = int(ESP);
      _loc10_ = _loc5_;
      _loc6_ = li32(_loc10_ + 12);
      _loc22_ = li32(_loc10_ + 8);
      _loc21_ = li32(_loc10_ + 4);
      _loc20_ = li32(_loc10_);
      _loc19_ = li32(_loc10_ + 16);
      if(_loc21_ == 0)
      {
         if(_loc6_ == 0)
         {
            if(_loc19_ != 0)
            {
               si32(0,_loc19_ + 4);
               var _loc18_:* = int(uint(_loc20_) % uint(_loc22_));
               si32(_loc18_,_loc19_);
            }
            _loc6_ = int(uint(_loc20_) / uint(_loc22_));
            _loc17_ = 0;
         }
         else
         {
            _loc6_ = 0;
            _loc17_ = _loc6_;
            if(_loc19_ != 0)
            {
               _loc6_ = 0;
               si32(_loc6_,_loc19_ + 4);
               si32(_loc20_,_loc19_);
               _loc17_ = _loc6_;
            }
         }
      }
      else
      {
         if(_loc22_ == 0)
         {
            if(_loc6_ == 0)
            {
               if(_loc19_ != 0)
               {
                  si32(0,_loc19_ + 4);
                  _loc18_ = int(uint(_loc21_) % uint(_loc22_));
                  si32(_loc18_,_loc19_);
               }
               _loc6_ = int(uint(_loc21_) / uint(_loc22_));
               _loc17_ = 0;
            }
            else if(_loc20_ == 0)
            {
               if(_loc19_ != 0)
               {
                  si32(0,_loc19_);
                  _loc18_ = int(uint(_loc21_) % uint(_loc6_));
                  si32(_loc18_,_loc19_ + 4);
               }
               _loc6_ = int(uint(_loc21_) / uint(_loc6_));
               _loc17_ = 0;
            }
            else
            {
               _loc17_ = int(_loc6_ + -1);
               _loc18_ = _loc17_ & _loc6_;
               if(_loc18_ == 0)
               {
                  if(_loc19_ != 0)
                  {
                     si32(_loc20_,_loc19_);
                     _loc18_ = _loc17_ & _loc21_;
                     si32(_loc18_,_loc19_ + 4);
                  }
                  _loc18_ = int(_loc6_ + -1);
                  var _loc16_:* = _loc6_ ^ -1;
                  _loc18_ = _loc16_ & _loc18_;
                  _loc16_ = int(_loc18_ >>> 1);
                  _loc16_ = _loc16_ & 1431655765;
                  _loc16_ = int(_loc18_ - _loc16_);
                  _loc18_ = _loc16_ & 858993459;
                  _loc16_ = int(_loc16_ >>> 2);
                  _loc16_ = _loc16_ & 858993459;
                  _loc18_ = int(_loc18_ + _loc16_);
                  _loc16_ = int(_loc18_ >>> 4);
                  _loc18_ = int(_loc18_ + _loc16_);
                  _loc18_ = _loc18_ & 252645135;
                  _loc18_ = int(_loc18_ * 16843009);
                  _loc18_ = int(_loc18_ >>> 24);
                  _loc6_ = int(_loc21_ >>> _loc18_);
                  _loc17_ = 0;
               }
               else
               {
                  _loc18_ = _loc6_ | int(_loc6_ >>> 1);
                  _loc18_ = _loc18_ | int(_loc18_ >>> 2);
                  _loc18_ = _loc18_ | int(_loc18_ >>> 4);
                  _loc18_ = _loc18_ | int(_loc18_ >>> 8);
                  _loc18_ = _loc18_ | int(_loc18_ >>> 16);
                  _loc18_ = _loc18_ ^ -1;
                  _loc16_ = int(_loc18_ >>> 1);
                  _loc16_ = int(_loc18_ - (_loc16_ & 1431655765));
                  _loc16_ = int(_loc16_ >>> 2);
                  _loc16_ = int((_loc16_ & 858993459) + (_loc16_ & 858993459));
                  _loc18_ = int(_loc16_ + (int(_loc16_ >>> 4)));
                  _loc18_ = _loc18_ & 252645135;
                  _loc18_ = int(_loc18_ * 16843009);
                  var _loc15_:* = _loc21_ | int(_loc21_ >>> 1);
                  _loc15_ = _loc15_ | int(_loc15_ >>> 2);
                  _loc15_ = _loc15_ | int(_loc15_ >>> 4);
                  _loc15_ = _loc15_ | int(_loc15_ >>> 8);
                  _loc16_ = _loc15_ | int(_loc15_ >>> 16);
                  _loc16_ = _loc16_ ^ -1;
                  _loc15_ = int(_loc16_ >>> 1);
                  _loc15_ = int(_loc16_ - (_loc15_ & 1431655765));
                  _loc15_ = int(_loc15_ >>> 2);
                  _loc15_ = int((_loc15_ & 858993459) + (_loc15_ & 858993459));
                  _loc16_ = int(_loc15_ + (int(_loc15_ >>> 4)));
                  _loc16_ = _loc16_ & 252645135;
                  _loc16_ = int(_loc16_ * 16843009);
                  _loc1_ = int((int(_loc18_ >>> 24)) - (int(_loc16_ >>> 24)));
                  if(uint(_loc1_) >= 31)
                  {
                     _loc6_ = 0;
                     _loc17_ = _loc6_;
                     if(_loc19_ != 0)
                     {
                        si32(_loc20_,_loc19_);
                        si32(_loc21_,_loc19_ + 4);
                        _loc6_ = 0;
                        _loc17_ = _loc6_;
                     }
                  }
                  else
                  {
                     _loc17_ = int(_loc1_ + 1);
                     _loc16_ = int(31 - _loc1_);
                     _loc18_ = _loc21_ << _loc16_;
                     _loc1_ = _loc18_ | int(_loc20_ >>> _loc17_);
                     _loc21_ = int(_loc21_ >>> _loc17_);
                     _loc11_ = _loc20_ << _loc16_;
                     _loc20_ = 0;
                  }
               }
            }
         }
         else if(_loc6_ == 0)
         {
            _loc1_ = int(_loc22_ + -1);
            _loc18_ = _loc1_ & _loc22_;
            if(_loc18_ == 0)
            {
               if(_loc19_ != 0)
               {
                  si32(0,_loc19_ + 4);
                  _loc18_ = _loc1_ & _loc20_;
                  si32(_loc18_,_loc19_);
               }
               _loc6_ = _loc20_;
               _loc17_ = _loc21_;
               if(_loc22_ != 1)
               {
                  _loc18_ = _loc22_ ^ -1;
                  _loc18_ = _loc18_ & _loc1_;
                  _loc16_ = int(_loc18_ >>> 1);
                  _loc16_ = int(_loc18_ - (_loc16_ & 1431655765));
                  _loc16_ = int(_loc16_ >>> 2);
                  _loc18_ = int((_loc16_ & 858993459) + (_loc16_ & 858993459));
                  _loc18_ = int(_loc18_ + (int(_loc18_ >>> 4)));
                  _loc18_ = _loc18_ & 252645135;
                  _loc18_ = int(_loc18_ * 16843009);
                  _loc16_ = int(_loc18_ >>> 24);
                  _loc15_ = _loc21_ << int(32 - _loc16_);
                  _loc6_ = _loc15_ | int(_loc20_ >>> _loc16_);
                  _loc17_ = int(_loc21_ >>> _loc16_);
               }
            }
            else
            {
               _loc18_ = _loc22_ | int(_loc22_ >>> 1);
               _loc18_ = _loc18_ | int(_loc18_ >>> 2);
               _loc18_ = _loc18_ | int(_loc18_ >>> 4);
               _loc18_ = _loc18_ | int(_loc18_ >>> 8);
               _loc18_ = _loc18_ | int(_loc18_ >>> 16);
               _loc18_ = _loc18_ ^ -1;
               _loc16_ = int(_loc18_ >>> 1);
               _loc16_ = int(_loc18_ - (_loc16_ & 1431655765));
               _loc16_ = int(_loc16_ >>> 2);
               _loc18_ = int((_loc16_ & 858993459) + (_loc16_ & 858993459));
               _loc18_ = int(_loc18_ + (int(_loc18_ >>> 4)));
               _loc18_ = _loc18_ & 252645135;
               _loc18_ = int(_loc18_ * 16843009);
               _loc16_ = _loc21_ | int(_loc21_ >>> 1);
               _loc16_ = _loc16_ | int(_loc16_ >>> 2);
               _loc16_ = _loc16_ | int(_loc16_ >>> 4);
               _loc16_ = _loc16_ | int(_loc16_ >>> 8);
               _loc16_ = _loc16_ | int(_loc16_ >>> 16);
               _loc16_ = _loc16_ ^ -1;
               _loc15_ = int(_loc16_ >>> 1);
               _loc15_ = int(_loc16_ - (_loc15_ & 1431655765));
               _loc15_ = int(_loc15_ >>> 2);
               _loc15_ = int((_loc15_ & 858993459) + (_loc15_ & 858993459));
               _loc16_ = int(_loc15_ + (int(_loc15_ >>> 4)));
               _loc16_ = _loc16_ & 252645135;
               _loc16_ = int(_loc16_ * 16843009);
               _loc15_ = int((int(_loc18_ >>> 24)) - (int(_loc16_ >>> 24)));
               var _loc12_:* = int(_loc15_ + 1);
               _loc16_ = int(-2 - _loc15_);
               _loc16_ = _loc15_ ^ -1;
               _loc17_ = int(_loc15_ + 33);
               var _loc14_:* = int(_loc20_ >>> _loc17_);
               _loc18_ = _loc12_ >> 31;
               _loc14_ = (_loc14_ | _loc21_ << _loc16_) & _loc18_;
               _loc1_ = _loc14_ | int(_loc21_ >>> _loc12_) & _loc16_ >> 31;
               _loc15_ = int(31 - _loc15_);
               _loc14_ = _loc21_ << _loc15_;
               _loc16_ = _loc16_ >> 31;
               _loc12_ = (_loc14_ | int(_loc20_ >>> _loc12_)) & _loc16_;
               _loc11_ = _loc12_ | _loc20_ << _loc16_ & _loc15_ >> 31;
               _loc12_ = int(_loc21_ >>> _loc17_);
               _loc21_ = _loc12_ & _loc18_;
               _loc18_ = _loc20_ << _loc15_;
               _loc20_ = _loc18_ & _loc16_;
            }
         }
         else
         {
            _loc18_ = _loc21_ | int(_loc21_ >>> 1);
            _loc18_ = _loc18_ | int(_loc18_ >>> 2);
            _loc18_ = _loc18_ | int(_loc18_ >>> 4);
            _loc18_ = _loc18_ | int(_loc18_ >>> 8);
            _loc18_ = _loc18_ | int(_loc18_ >>> 16);
            _loc18_ = _loc18_ ^ -1;
            _loc16_ = int(_loc18_ >>> 1);
            _loc16_ = int(_loc18_ - (_loc16_ & 1431655765));
            _loc16_ = int(_loc16_ >>> 2);
            _loc18_ = int((_loc16_ & 858993459) + (_loc16_ & 858993459));
            _loc18_ = int(_loc18_ + (int(_loc18_ >>> 4)));
            _loc18_ = _loc18_ & 252645135;
            _loc18_ = int(_loc18_ * 16843009);
            _loc15_ = _loc6_ | int(_loc6_ >>> 1);
            _loc16_ = _loc15_ | int(_loc15_ >>> 2);
            _loc16_ = _loc16_ | int(_loc16_ >>> 4);
            _loc16_ = _loc16_ | int(_loc16_ >>> 8);
            _loc16_ = _loc16_ | int(_loc16_ >>> 16);
            _loc16_ = _loc16_ ^ -1;
            _loc15_ = int(_loc16_ >>> 1);
            _loc15_ = int(_loc16_ - (_loc15_ & 1431655765));
            _loc15_ = int(_loc15_ >>> 2);
            _loc15_ = int((_loc15_ & 858993459) + (_loc15_ & 858993459));
            _loc16_ = int(_loc15_ + (int(_loc15_ >>> 4)));
            _loc16_ = _loc16_ & 252645135;
            _loc16_ = int(_loc16_ * 16843009);
            _loc16_ = int(_loc16_ >>> 24);
            _loc1_ = int(_loc16_ - (int(_loc18_ >>> 24)));
            if(uint(_loc1_) >= 32)
            {
               _loc6_ = 0;
               _loc17_ = _loc6_;
               if(_loc19_ != 0)
               {
                  si32(_loc20_,_loc19_);
                  si32(_loc21_,_loc19_ + 4);
                  _loc6_ = 0;
                  _loc17_ = _loc6_;
               }
            }
            else
            {
               _loc18_ = int(31 - _loc1_);
               _loc17_ = int(_loc1_ + 1);
               _loc15_ = int(_loc1_ + -31);
               _loc15_ = _loc15_ >> 31;
               _loc12_ = int(_loc20_ >>> _loc17_) & _loc15_;
               _loc1_ = _loc12_ | _loc21_ << _loc18_;
               _loc11_ = _loc20_ << _loc18_;
               _loc18_ = int(_loc21_ >>> _loc17_);
               _loc21_ = _loc18_ & _loc15_;
               _loc20_ = 0;
            }
         }
         _loc4_ = 0;
         _loc7_ = _loc4_;
         if(_loc17_ != 0)
         {
            _loc7_ = int(_loc22_ + -1);
            _loc4_ = 1;
            _loc8_ = _loc4_;
            if(uint(_loc7_) >= uint(_loc22_))
            {
               _loc8_ = 0;
            }
            if(_loc22_ == 0)
            {
               _loc4_ = _loc8_;
            }
            _loc18_ = int(_loc6_ + _loc4_);
            _loc9_ = _loc18_ + -1;
            _loc16_ = int(_loc20_ >>> 31);
            _loc18_ = _loc11_ << 1;
            _loc8_ = _loc16_ | _loc18_;
            _loc16_ = int(_loc1_ >>> 31);
            _loc18_ = _loc21_ << 1;
            _loc3_ = _loc16_ | _loc18_;
            _loc2_ = int(_loc11_ >>> 31);
            _loc4_ = 0;
            do
            {
               _loc18_ = _loc1_ << 1;
               _loc11_ = _loc2_ | _loc18_;
               _loc21_ = 1;
               _loc2_ = _loc21_;
               if(uint(_loc7_) >= uint(_loc11_))
               {
                  _loc2_ = 0;
               }
               _loc18_ = int(_loc1_ >>> 31);
               _loc16_ = _loc3_ & -2;
               _loc3_ = _loc16_ | _loc18_;
               _loc18_ = int(_loc9_ - _loc3_);
               _loc18_ = int(_loc18_ - _loc2_);
               _loc2_ = _loc18_ >> 31;
               _loc1_ = _loc2_ & _loc22_;
               if(uint(_loc11_) >= uint(_loc1_))
               {
                  _loc21_ = 0;
               }
               _loc18_ = _loc2_ & _loc6_;
               _loc18_ = int(_loc3_ - _loc18_);
               _loc21_ = int(_loc18_ - _loc21_);
               _loc18_ = _loc21_ << 1;
               _loc1_ = int(_loc11_ - _loc1_);
               _loc16_ = int(_loc1_ >>> 31);
               _loc3_ = _loc16_ | _loc18_;
               _loc18_ = int(_loc20_ >>> 31);
               _loc16_ = _loc8_ & -2;
               _loc11_ = _loc16_ | _loc18_;
               _loc18_ = _loc11_ << 1;
               _loc16_ = _loc20_ << 1;
               _loc20_ = _loc16_ | _loc4_;
               _loc16_ = int(_loc20_ >>> 31);
               _loc18_ = _loc16_ | _loc18_;
               _loc4_ = _loc2_ & 1;
               _loc17_ = int(_loc17_ + -1);
               _loc2_ = int(_loc8_ >>> 31);
               _loc8_ = _loc18_;
            }
            while(_loc17_ != 0);
            
            _loc7_ = 0;
         }
         _loc18_ = _loc20_ << 1;
         _loc6_ = _loc18_ | _loc4_;
         _loc18_ = int(_loc20_ >>> 31);
         _loc16_ = _loc11_ << 1;
         _loc18_ = _loc16_ | _loc18_;
         _loc17_ = _loc18_ | _loc7_;
         if(_loc19_ != 0)
         {
            si32(_loc1_,_loc19_);
            si32(_loc21_,_loc19_ + 4);
         }
      }
      eax = _loc6_;
      edx = _loc17_;
      _loc5_ = _loc10_;
      ESP = _loc5_;
   }
}
