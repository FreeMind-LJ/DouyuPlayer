package sample.xx_p_2D_demangle_2E_o_3A_4EAE8D64_2D_DBB8_2D_467F_2D_83C7_2D_85C6725F4EAC
{
   import sample.xx.ESP;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx.eax;
   
   public function F_d_substitution() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc12_:* = 0;
      var _loc9_:* = 0;
      var _loc6_:int = 0;
      var _loc5_:* = 0;
      var _loc11_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc12_ = li32(_loc1_ + 12);
      _loc11_ = li8(_loc12_);
      var _loc10_:* = int(_loc12_ + 1);
      si32(_loc10_,_loc1_ + 12);
      _loc9_ = 0;
      if(_loc11_ == 83)
      {
         _loc8_ = li8(_loc12_ + 1);
         _loc9_ = int(_loc12_ + 2);
         si32(_loc9_,_loc1_ + 12);
         if(_loc8_ != 95)
         {
            _loc10_ = int(_loc8_ + -48);
            _loc10_ = _loc10_ & 255;
            if(uint(_loc10_) >= 10)
            {
               _loc10_ = int(_loc8_ + -65);
               _loc10_ = _loc10_ & 255;
               if(uint(_loc10_) > 25)
               {
                  _loc10_ = li32(_loc1_ + 8);
                  _loc10_ = int(_loc10_ >>> 3);
                  _loc12_ = _loc10_ & 1;
                  if(_loc12_ == 0)
                  {
                     _loc10_ = li32(_loc3_ + 4);
                     if(_loc10_ != 0)
                     {
                        _loc10_ = li8(_loc9_);
                        _loc10_ = int(_loc10_ + -67);
                        _loc10_ = _loc10_ & 255;
                        if(uint(_loc10_) <= 1)
                        {
                           _loc12_ = 1;
                        }
                     }
                  }
                  _loc9_ = 0;
                  _loc6_ = 24;
                  _loc5_ = _loc9_;
                  while(_loc5_ < 196)
                  {
                     _loc7_ = int(_standard_subs + _loc6_);
                     _loc10_ = li8(_loc7_ - 24);
                     if(_loc10_ == _loc8_)
                     {
                        if(_loc6_ != 24)
                        {
                           _loc5_ = li32(_loc1_ + 20);
                           _loc8_ = 0;
                           if(_loc5_ < li32(_loc1_ + 24))
                           {
                              _loc9_ = li32(_loc1_ + 16);
                              _loc10_ = int(_loc5_ + 1);
                              si32(_loc10_,_loc1_ + 20);
                              _loc5_ = int(_loc5_ * 12);
                              _loc6_ = _loc9_ + _loc5_;
                              _loc8_ = 0;
                              if(_loc6_ != 0)
                              {
                                 var _loc4_:* = li32(_loc7_);
                                 _loc11_ = int(_loc9_ + _loc5_);
                                 si32(21,_loc11_);
                                 si32(li32(_loc7_ - 4),_loc11_ + 4);
                                 si32(_loc4_,_loc11_ + 8);
                                 _loc8_ = _loc6_;
                              }
                           }
                           si32(_loc8_,_loc1_ + 44);
                        }
                        _loc8_ = int(_loc7_ + -20);
                        _loc9_ = 0;
                        if(_loc12_ != _loc9_)
                        {
                           _loc8_ = int(_loc7_ + -12);
                        }
                        _loc8_ = li32(_loc8_);
                        _loc5_ = int(_loc7_ + -16);
                        if(_loc12_ != _loc9_)
                        {
                           _loc5_ = int(_loc7_ + -8);
                        }
                        _loc7_ = li32(_loc5_);
                        _loc10_ = li32(_loc1_ + 48);
                        _loc10_ = int(_loc10_ + _loc7_);
                        si32(_loc10_,_loc1_ + 48);
                        _loc5_ = li32(_loc1_ + 20);
                        _loc10_ = li32(_loc1_ + 24);
                        if(_loc5_ < _loc10_)
                        {
                           _loc12_ = li32(_loc1_ + 16);
                           _loc10_ = int(_loc5_ + 1);
                           si32(_loc10_,_loc1_ + 20);
                           _loc5_ = int(_loc5_ * 12);
                           _loc1_ = int(_loc12_ + _loc5_);
                           _loc9_ = 0;
                           if(_loc1_ != 0)
                           {
                              _loc10_ = int(_loc12_ + _loc5_);
                              si32(21,_loc10_);
                              si32(_loc8_,_loc10_ + 4);
                              si32(_loc7_,_loc10_ + 8);
                              _loc9_ = _loc1_;
                              break;
                           }
                           break;
                        }
                        break;
                     }
                     _loc6_ = _loc6_ + 28;
                     _loc5_ = int(_loc5_ + 28);
                  }
               }
            }
         }
         _loc7_ = 0;
         if(_loc8_ != 95)
         {
            _loc7_ = int(_loc12_ + 3);
            _loc12_ = 0;
            while(true)
            {
               _loc10_ = int(_loc8_ + -48);
               _loc10_ = _loc10_ & 255;
               if(uint(_loc10_) <= 9)
               {
                  _loc11_ = _loc8_ << 24;
                  _loc10_ = int(int(_loc12_ * 36) + (_loc11_ >> 24));
                  _loc12_ = int(_loc10_ + -48);
                  addr183:
                  _loc9_ = 0;
                  if(_loc12_ >= 0)
                  {
                     _loc8_ = li8(_loc7_ - 1);
                     si32(_loc7_,_loc1_ + 12);
                     _loc7_ = int(_loc7_ + 1);
                     if(_loc8_ == 95)
                     {
                        _loc7_ = int(_loc12_ + 1);
                     }
                     else
                     {
                        continue;
                     }
                  }
               }
               else
               {
                  _loc10_ = int(_loc8_ + -65);
                  _loc9_ = 0;
                  if((uint(_loc10_ & 255)) <= 25)
                  {
                     _loc11_ = _loc8_ << 24;
                     _loc10_ = int(int(_loc12_ * 36) + (_loc11_ >> 24));
                     _loc12_ = int(_loc10_ + -55);
                     §§goto(addr183);
                  }
               }
            }
         }
         _loc10_ = li32(_loc1_ + 32);
         _loc9_ = 0;
         if(_loc10_ > _loc7_)
         {
            _loc10_ = li32(_loc1_ + 40);
            _loc10_ = int(_loc10_ + 1);
            si32(_loc10_,_loc1_ + 40);
            _loc10_ = li32(_loc1_ + 28);
            _loc10_ = int(_loc10_ + (_loc7_ << 2));
            _loc9_ = li32(_loc10_);
         }
      }
      eax = _loc9_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
