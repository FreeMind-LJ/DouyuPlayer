package sample.xx_tf8_2E_o_3A_71874781_2D_5724_2D_4B16_2D_9C7F_2D_C30AC3EB270F
{
   import avm2.intrinsics.memory.li32;
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   
   public function F__UTF8_mbrtowc() : void
   {
      var _loc4_:* = 0;
      var _loc10_:* = 0;
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc13_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc8_:* = 0;
      var _loc11_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_ + 12);
      _loc13_ = li32(_loc3_ + 4);
      if(uint(_loc13_) >= 7)
      {
         ESP = _loc2_;
         F___error();
         si32(22,int(eax));
         _loc11_ = -1;
      }
      else
      {
         _loc10_ = li32(_loc4_ + 4);
         _loc9_ = 1;
         if(_loc10_ != 0)
         {
            _loc9_ = li32(_loc4_ + 8);
         }
         _loc8_ = 0;
         if(_loc10_ != 0)
         {
            _loc8_ = li32(_loc4_);
         }
         _loc7_ = int(L__2E_str);
         if(_loc10_ != 0)
         {
            _loc7_ = _loc10_;
         }
         _loc11_ = -2;
         if(_loc9_ != 0)
         {
            if(_loc13_ == 0)
            {
               _loc10_ = li8(_loc7_);
               var _loc12_:* = _loc10_ & 128;
               if(_loc12_ == 0)
               {
                  if(_loc8_ != 0)
                  {
                     si32(_loc10_,_loc8_);
                  }
                  _loc8_ = 1;
                  if(_loc10_ == 0)
                  {
                     _loc8_ = 0;
                  }
                  _loc11_ = _loc8_ & 1;
               }
               else
               {
                  _loc6_ = li8(_loc7_);
                  _loc1_ = 127;
                  _loc10_ = 1;
                  _loc11_ = 0;
                  if((_loc6_ & 128) != 0)
                  {
                     _loc11_ = 128;
                     _loc10_ = 2;
                     _loc1_ = 31;
                     if((_loc6_ & 224) != 192)
                     {
                        _loc11_ = 2048;
                        _loc10_ = 3;
                        _loc1_ = 15;
                        if((_loc6_ & 240) != 224)
                        {
                           _loc11_ = 65536;
                           _loc10_ = 4;
                           _loc1_ = 7;
                           if((_loc6_ & 248) != 240)
                           {
                              _loc11_ = 2097152;
                              _loc10_ = 5;
                              _loc1_ = 3;
                              if((_loc6_ & 252) != 248)
                              {
                                 _loc11_ = 67108864;
                                 _loc10_ = 6;
                                 _loc1_ = 1;
                                 if((_loc6_ & 254) != 252)
                                 {
                                    ESP = _loc2_;
                                    F___error();
                                    si32(86,int(eax));
                                    _loc11_ = -1;
                                 }
                              }
                           }
                        }
                     }
                     if(_loc13_ == 0)
                     {
                     }
                     addr256:
                     _loc1_ = 1;
                     if(_loc13_ != 0)
                     {
                        _loc1_ = 0;
                     }
                     if(uint(_loc9_) > uint(_loc10_))
                     {
                        _loc9_ = _loc10_;
                     }
                     _loc1_ = _loc1_ & 1;
                     while(true)
                     {
                        if(uint(_loc1_) >= uint(_loc9_))
                        {
                           if(_loc1_ < _loc10_)
                           {
                              _loc12_ = int(_loc10_ - _loc1_);
                              si32(_loc12_,_loc3_ + 4);
                              si32(_loc11_,_loc3_ + 8);
                              si32(_loc6_,_loc3_);
                              _loc11_ = -2;
                              break;
                           }
                           if(_loc6_ < _loc11_)
                           {
                              ESP = _loc2_;
                              F___error();
                              si32(86,int(eax));
                              _loc11_ = -1;
                              break;
                           }
                           if(_loc8_ != 0)
                           {
                              si32(_loc6_,_loc8_);
                           }
                           _loc11_ = 0;
                           si32(_loc11_,_loc3_ + 4);
                           if(_loc6_ != _loc11_)
                           {
                              _loc11_ = _loc10_;
                           }
                           break;
                        }
                        _loc13_ = li8(_loc7_);
                        _loc12_ = _loc13_ & 192;
                        if(_loc12_ != 128)
                        {
                           ESP = _loc2_;
                           F___error();
                           si32(86,int(eax));
                           _loc11_ = -1;
                           break;
                        }
                        _loc12_ = _loc13_ & 63;
                        _loc6_ = _loc12_ | _loc6_ << 6;
                        _loc7_ = int(_loc7_ + 1);
                        _loc1_ = int(_loc1_ + 1);
                     }
                  }
                  _loc12_ = li8(_loc7_);
                  _loc6_ = _loc12_ & _loc1_;
                  _loc7_ = int(_loc7_ + 1);
                  §§goto(addr256);
               }
            }
            else
            {
               _loc11_ = li32(_loc3_ + 8);
               _loc10_ = _loc13_;
            }
            _loc6_ = li32(_loc3_);
            §§goto(addr256);
         }
      }
      eax = _loc11_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
