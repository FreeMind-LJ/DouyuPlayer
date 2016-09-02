package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   
   public function F__ZNK10__cxxabiv121__vmi_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE() : void
   {
      var _loc2_:* = 0;
      var _loc26_:* = 0;
      var _loc11_:* = 0;
      var _loc23_:* = 0;
      var _loc24_:* = 0;
      var _loc21_:* = 0;
      var _loc20_:* = 0;
      var _loc13_:* = 0;
      var _loc12_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc3_:* = 0;
      var _loc8_:int = 0;
      var _loc27_:* = 0;
      var _loc25_:* = 0;
      var _loc16_:int = 0;
      var _loc17_:* = 0;
      var _loc19_:* = 0;
      var _loc10_:int = 0;
      var _loc18_:int = 0;
      var _loc15_:* = 0;
      var _loc14_:int = 0;
      var _loc4_:int = 0;
      var _loc22_:* = 0;
      var _loc1_:* = int(ESP);
      _loc2_ = _loc1_;
      _loc1_ = int(_loc1_ - 16);
      _loc11_ = li32(_loc2_ + 4);
      _loc27_ = li32(_loc11_ + 4);
      _loc26_ = li32(_loc2_);
      _loc25_ = li32(_loc26_ + 4);
      _loc24_ = li32(_loc2_ + 12);
      _loc23_ = li32(_loc2_ + 8);
      if(_loc25_ == _loc27_)
      {
         si32(_loc23_,_loc24_);
         si32(8,_loc24_ + 12);
         si32(6,_loc24_ + 4);
         _loc22_ = 1;
      }
      else
      {
         _loc21_ = li32(_loc24_ + 8);
         _loc27_ = _loc21_ & 16;
         if(_loc27_ != 0)
         {
            _loc21_ = li32(_loc26_ + 8);
         }
         _loc20_ = _loc21_ & 1;
         _loc27_ = li32(_loc26_ + 12);
         _loc8_ = _loc27_ + 1;
         while(true)
         {
            if(_loc8_ == 1)
            {
               _loc4_ = 1;
               if(li32(_loc24_ + 4) == 0)
               {
                  _loc4_ = 0;
               }
               _loc22_ = _loc4_ & 1;
               break;
            }
            si32(0,_loc2_ - 16);
            _loc16_ = _loc2_ - 16;
            _loc17_ = _loc16_ | 4;
            si32(0,_loc17_);
            si32(_loc21_,_loc2_ - 8);
            si32(0,_loc2_ - 4);
            _loc18_ = 1;
            if(_loc20_ == 0)
            {
               _loc18_ = 0;
            }
            _loc27_ = _loc8_ << 3;
            _loc27_ = int(_loc26_ + _loc27_);
            _loc19_ = li32(_loc27_ + 4);
            _loc12_ = _loc19_ & 2;
            if(_loc12_ == 0)
            {
               if(_loc18_ == 0)
               {
               }
               continue;
            }
            _loc13_ = _loc19_ & 1;
            _loc14_ = 0;
            if(_loc23_ != 0)
            {
               _loc15_ = _loc19_ >> 8;
               if(_loc13_ != 0)
               {
                  _loc27_ = li32(_loc23_);
                  _loc27_ = int(_loc27_ + _loc15_);
                  _loc15_ = li32(_loc27_);
               }
               _loc14_ = _loc23_ + _loc15_;
            }
            _loc27_ = _loc8_ << 1;
            _loc27_ = _loc27_ << 2;
            _loc10_ = _loc26_ + _loc27_;
            _loc25_ = li32(_loc10_);
            _loc27_ = li32(_loc25_);
            var _loc9_:* = li32(_loc27_ + 24);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc16_,_loc1_ + 12);
            si32(_loc14_,_loc1_ + 8);
            si32(_loc11_,_loc1_ + 4);
            si32(_loc25_,_loc1_);
            ESP = _loc1_;
            ptr2fun[_loc9_]();
            _loc1_ = int(_loc1_ + 16);
            _loc27_ = int(eax);
            if(_loc27_ != 0)
            {
               _loc7_ = li32(_loc2_ - 4);
               if(_loc7_ == 8)
               {
                  if(_loc13_ != 0)
                  {
                     _loc7_ = li32(_loc10_);
                     si32(_loc7_,_loc2_ - 4);
                  }
               }
               _loc5_ = li32(_loc17_);
               if(_loc5_ >= 4)
               {
                  if(_loc12_ == 0)
                  {
                     _loc5_ = _loc5_ & -3;
                     si32(_loc5_,_loc17_);
                  }
               }
               _loc6_ = li32(_loc24_ + 12);
               if(_loc6_ == 0)
               {
                  _loc27_ = li32(_loc2_ - 16);
                  si32(_loc27_,_loc24_);
                  si32(_loc5_,_loc24_ + 4);
                  _loc27_ = li32(_loc2_ - 8);
                  si32(_loc27_,_loc24_ + 8);
                  si32(_loc7_,_loc24_ + 12);
                  _loc22_ = 1;
                  if(_loc5_ >= 4)
                  {
                     _loc27_ = _loc5_ & 2;
                     if(_loc27_ != 0)
                     {
                        _loc27_ = li8(_loc26_ + 8);
                        _loc22_ = 1;
                        if((_loc27_ & 1) != 0)
                        {
                           continue;
                        }
                        break;
                     }
                     _loc22_ = 1;
                     if((_loc5_ & 1) != 0)
                     {
                        _loc27_ = li8(_loc26_ + 8);
                        _loc22_ = 1;
                        if((_loc27_ & 2) != 0)
                        {
                           continue;
                        }
                        break;
                     }
                     break;
                  }
                  break;
               }
               _loc3_ = li32(_loc24_);
               if(_loc3_ != li32(_loc2_ - 16))
               {
                  si32(0,_loc24_);
                  si32(2,_loc24_ + 4);
                  _loc22_ = 1;
                  break;
               }
               if(_loc3_ != 0)
               {
                  _loc27_ = _loc5_ | li32(_loc24_ + 4);
                  si32(_loc27_,_loc24_ + 4);
                  continue;
               }
               if(_loc7_ != 8)
               {
                  if(_loc6_ != 8)
                  {
                     _loc27_ = li32(_loc7_ + 4);
                     if(_loc27_ == li32(_loc6_ + 4))
                     {
                        _loc27_ = _loc5_ | li32(_loc24_ + 4);
                        si32(_loc27_,_loc24_ + 4);
                        continue;
                     }
                  }
               }
               si32(2,_loc24_ + 4);
               _loc22_ = 1;
               break;
            }
         }
      }
      eax = _loc22_;
      _loc1_ = _loc2_;
      ESP = _loc1_;
   }
}
