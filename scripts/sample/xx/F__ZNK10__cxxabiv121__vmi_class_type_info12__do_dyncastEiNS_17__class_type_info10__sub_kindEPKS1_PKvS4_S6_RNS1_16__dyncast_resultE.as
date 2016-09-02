package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZNK10__cxxabiv121__vmi_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE() : void
   {
      var _loc7_:* = 0;
      var _loc38_:* = 0;
      var _loc13_:* = 0;
      var _loc32_:* = 0;
      var _loc28_:* = 0;
      var _loc34_:* = 0;
      var _loc35_:* = 0;
      var _loc37_:* = 0;
      var _loc16_:* = 0;
      var _loc30_:* = 0;
      var _loc17_:* = 0;
      var _loc15_:* = 0;
      var _loc6_:* = 0;
      var _loc23_:* = 0;
      var _loc31_:* = 0;
      var _loc18_:int = 0;
      var _loc19_:* = 0;
      var _loc20_:int = 0;
      var _loc14_:* = 0;
      var _loc39_:* = 0;
      var _loc22_:int = 0;
      var _loc12_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc25_:int = 0;
      var _loc4_:* = 0;
      var _loc27_:* = 0;
      var _loc2_:* = 0;
      var _loc29_:* = 0;
      var _loc26_:* = 0;
      var _loc24_:* = 0;
      var _loc11_:int = 0;
      var _loc21_:* = 0;
      var _loc3_:* = int(ESP);
      _loc7_ = _loc3_;
      _loc3_ = int(_loc3_ - 32);
      _loc16_ = li32(_loc7_ + 28);
      _loc39_ = li8(_loc16_ + 16);
      _loc39_ = _loc39_ & 16;
      _loc38_ = li32(_loc7_);
      if(_loc39_ != 0)
      {
         _loc39_ = li32(_loc38_ + 8);
         si32(_loc39_,_loc16_ + 16);
      }
      _loc37_ = li32(_loc7_ + 24);
      _loc35_ = li32(_loc7_ + 20);
      _loc34_ = li32(_loc7_ + 16);
      _loc32_ = li32(_loc7_ + 8);
      _loc30_ = li32(_loc38_ + 4);
      if(_loc34_ == _loc37_)
      {
         if(_loc30_ == li32(_loc35_ + 4))
         {
            si32(_loc32_,_loc16_ + 8);
            _loc21_ = 0;
         }
         addr1007:
         _loc39_ = _loc21_ & 255;
         eax = _loc39_;
         _loc3_ = _loc7_;
         ESP = _loc3_;
         return;
      }
      _loc28_ = li32(_loc7_ + 12);
      _loc13_ = li32(_loc7_ + 4);
      _loc39_ = li32(_loc28_ + 4);
      if(_loc30_ != _loc39_)
      {
         _loc24_ = li32(_loc38_ + 12);
         _loc26_ = 0;
         loop0:
         while(true)
         {
            _loc21_ = _loc26_;
            _loc11_ = _loc24_ + -1;
            while(true)
            {
               _loc24_ = _loc11_;
               if(_loc24_ != -1)
               {
                  _loc17_ = li32(_loc16_ + 16);
                  si32(0,_loc7_ - 24);
                  _loc18_ = _loc7_ - 24;
                  _loc19_ = _loc18_ | 4;
                  si32(0,_loc19_);
                  si32(0,_loc7_ - 16);
                  si32(0,_loc7_ - 12);
                  si32(_loc17_,_loc7_ - 8);
                  _loc20_ = _loc38_ + (_loc24_ << 3);
                  _loc15_ = li32(_loc20_ + 20);
                  _loc14_ = _loc15_ & 1;
                  _loc12_ = _loc15_ >> 8;
                  if(_loc14_ != 0)
                  {
                     _loc39_ = li32(_loc34_);
                     _loc39_ = int(_loc39_ + _loc12_);
                     _loc12_ = li32(_loc39_);
                  }
                  _loc10_ = _loc14_ | _loc32_;
                  _loc39_ = _loc15_ & 2;
                  if(_loc39_ == 0)
                  {
                     if(_loc13_ == -2)
                     {
                        _loc11_ = _loc24_ + -1;
                        _loc39_ = _loc17_ & 3;
                        if(_loc39_ == 0)
                        {
                           continue;
                        }
                     }
                     _loc10_ = _loc10_ & -3;
                  }
                  _loc39_ = int(_loc34_ + _loc12_);
                  var _loc8_:* = li32(_loc20_ + 16);
                  var _loc9_:* = li32(_loc8_);
                  var _loc5_:* = li32(_loc9_ + 28);
                  _loc3_ = int(_loc3_ - 32);
                  si32(_loc18_,_loc3_ + 28);
                  si32(_loc37_,_loc3_ + 24);
                  si32(_loc35_,_loc3_ + 20);
                  si32(_loc39_,_loc3_ + 16);
                  si32(_loc28_,_loc3_ + 12);
                  si32(_loc10_,_loc3_ + 8);
                  si32(_loc13_,_loc3_ + 4);
                  si32(_loc8_,_loc3_);
                  ESP = _loc3_;
                  ptr2fun[_loc5_]();
                  _loc3_ = int(_loc3_ + 32);
                  _loc26_ = int(eax);
                  _loc9_ = li32(_loc16_ + 8);
                  _loc39_ = li32(_loc7_ - 16);
                  _loc6_ = _loc39_ | _loc9_;
                  si32(_loc6_,_loc16_ + 8);
                  _loc2_ = li32(_loc7_ - 12);
                  _loc39_ = _loc2_ | 4;
                  if(_loc39_ == 6)
                  {
                     _loc39_ = li32(_loc7_ - 24);
                     si32(_loc39_,_loc16_);
                     _loc39_ = li32(_loc19_);
                     si32(_loc39_,_loc16_ + 4);
                     si32(_loc2_,_loc16_ + 12);
                     _loc21_ = _loc26_;
                     break;
                  }
                  _loc4_ = li32(_loc16_);
                  _loc39_ = _loc21_ & 255;
                  if(_loc39_ == 0)
                  {
                     if(_loc4_ == 0)
                     {
                        _loc39_ = li32(_loc7_ - 24);
                        si32(_loc39_,_loc16_);
                        _loc9_ = li32(_loc19_);
                        si32(_loc9_,_loc16_ + 4);
                        if(_loc39_ != 0)
                        {
                           if(_loc6_ != 0)
                           {
                              _loc39_ = li8(_loc38_ + 8);
                              _loc21_ = _loc26_;
                              if((_loc39_ & 1) != 0)
                              {
                              }
                              break;
                           }
                           continue loop0;
                        }
                     }
                     addr982:
                     _loc39_ = li32(_loc16_ + 8);
                     _loc21_ = _loc26_;
                     if(_loc39_ != 4)
                     {
                        continue loop0;
                     }
                     break;
                  }
                  if(_loc4_ == 0)
                  {
                     _loc1_ = 1;
                     _loc25_ = 0;
                     _loc39_ = li32(_loc7_ - 24);
                     if(_loc39_ == _loc25_)
                     {
                        _loc1_ = _loc25_;
                     }
                     _loc4_ = _loc25_;
                  }
                  addr607:
                  _loc39_ = _loc25_ & _loc26_;
                  _loc39_ = _loc39_ & 1;
                  if(_loc39_ == 0)
                  {
                     _loc39_ = _loc1_ & _loc21_;
                     _loc26_ = _loc21_;
                     if((_loc39_ & 1) != 0)
                     {
                     }
                     §§goto(addr982);
                  }
                  addr631:
                  _loc29_ = li32(_loc16_ + 12);
                  if(_loc6_ >= 4)
                  {
                     _loc39_ = _loc6_ & 1;
                     if(_loc39_ != 0)
                     {
                        _loc39_ = li8(_loc16_ + 16);
                        _loc39_ = _loc39_ & 2;
                        if(_loc39_ != 0)
                        {
                        }
                        addr903:
                        _loc39_ = _loc29_ ^ _loc2_;
                        if(_loc39_ >= 4)
                        {
                           _loc26_ = _loc21_;
                           if(_loc2_ >= 4)
                           {
                              _loc39_ = li32(_loc7_ - 24);
                              si32(_loc39_,_loc16_);
                              _loc39_ = li32(_loc19_);
                              si32(_loc39_,_loc16_ + 4);
                              _loc26_ = 0;
                              _loc29_ = _loc2_;
                           }
                           si32(_loc29_,_loc16_ + 12);
                           _loc39_ = _loc29_ & 3;
                           _loc21_ = 0;
                           if(_loc39_ != 1)
                           {
                              break;
                           }
                        }
                        else
                        {
                           si32(0,_loc16_);
                           _loc39_ = _loc29_ & _loc2_;
                           if(_loc39_ >= 4)
                           {
                              si32(2,_loc16_ + 12);
                              _loc21_ = 1;
                              break;
                           }
                           _loc26_ = 1;
                           si32(_loc26_,_loc16_ + 12);
                        }
                        §§goto(addr982);
                     }
                     _loc27_ = 1;
                     if(_loc29_ != 0)
                     {
                        _loc27_ = _loc29_;
                     }
                     _loc29_ = _loc27_;
                     if(_loc2_ == 0)
                     {
                        _loc2_ = 1;
                        _loc29_ = _loc27_;
                     }
                     §§goto(addr903);
                  }
                  if(_loc29_ < 1)
                  {
                     if(_loc2_ >= 4)
                     {
                        _loc29_ = 1;
                        if((_loc2_ & 1) != 0)
                        {
                           _loc39_ = li8(_loc38_ + 8);
                           _loc29_ = 1;
                           if((_loc39_ & 2) != 0)
                           {
                           }
                        }
                        §§goto(addr903);
                     }
                     if(_loc13_ >= 0)
                     {
                        _loc29_ = 6;
                        if(int(_loc4_ + _loc13_) != _loc37_)
                        {
                           _loc29_ = 1;
                        }
                     }
                     else
                     {
                        _loc29_ = 1;
                        if(_loc13_ != -2)
                        {
                           _loc39_ = li32(_loc28_);
                           var _loc33_:* = li32(_loc39_ + 32);
                           _loc3_ = int(_loc3_ - 32);
                           si32(_loc37_,_loc3_ + 16);
                           si32(_loc35_,_loc3_ + 12);
                           si32(_loc4_,_loc3_ + 8);
                           si32(_loc13_,_loc3_ + 4);
                           si32(_loc28_,_loc3_);
                           ESP = _loc3_;
                           ptr2fun[_loc33_]();
                           _loc3_ = int(_loc3_ + 32);
                           _loc29_ = int(eax);
                        }
                     }
                  }
                  if(_loc2_ <= 0)
                  {
                     if(_loc29_ >= 4)
                     {
                        _loc2_ = 1;
                        if((_loc29_ & 1) != 0)
                        {
                           _loc39_ = li8(_loc38_ + 8);
                           _loc2_ = 1;
                           if((_loc39_ & 2) != 0)
                           {
                           }
                        }
                     }
                     _loc31_ = li32(_loc7_ - 24);
                     if(_loc13_ >= 0)
                     {
                        _loc2_ = 6;
                        if(int(_loc31_ + _loc13_) != _loc37_)
                        {
                           _loc2_ = 1;
                        }
                     }
                     else
                     {
                        _loc2_ = 1;
                        if(_loc13_ != -2)
                        {
                           _loc39_ = li32(_loc28_);
                           var _loc36_:* = li32(_loc39_ + 32);
                           _loc3_ = int(_loc3_ - 32);
                           si32(_loc37_,_loc3_ + 16);
                           si32(_loc35_,_loc3_ + 12);
                           si32(_loc31_,_loc3_ + 8);
                           si32(_loc13_,_loc3_ + 4);
                           si32(_loc28_,_loc3_);
                           ESP = _loc3_;
                           ptr2fun[_loc36_]();
                           _loc3_ = int(_loc3_ + 32);
                           _loc2_ = int(eax);
                        }
                     }
                  }
                  §§goto(addr903);
                  _loc23_ = li32(_loc7_ - 24);
                  if(_loc4_ == _loc23_)
                  {
                     _loc9_ = li32(_loc19_);
                     _loc39_ = _loc9_ | li32(_loc16_ + 4);
                     si32(_loc39_,_loc16_ + 4);
                     _loc26_ = _loc21_;
                  }
                  else
                  {
                     _loc25_ = 1;
                     _loc1_ = _loc25_;
                     if(_loc23_ == 0)
                     {
                        _loc1_ = 0;
                     }
                     if(_loc4_ == 0)
                     {
                        _loc25_ = 0;
                     }
                     if(_loc4_ != 0)
                     {
                        if(_loc23_ == 0)
                        {
                        }
                        §§goto(addr631);
                     }
                     §§goto(addr607);
                  }
                  §§goto(addr982);
               }
               break;
            }
         }
      }
      else
      {
         si32(_loc34_,_loc16_);
         si32(_loc32_,_loc16_ + 4);
         if(_loc13_ >= 0)
         {
            _loc22_ = 6;
            if(int(_loc34_ + _loc13_) != _loc37_)
            {
               _loc22_ = 1;
            }
            si32(_loc22_,_loc16_ + 12);
            _loc21_ = 0;
         }
         else
         {
            _loc21_ = 0;
            if(_loc13_ == -2)
            {
               si32(1,_loc16_ + 12);
               _loc21_ = 0;
            }
         }
      }
      §§goto(addr1007);
   }
}
