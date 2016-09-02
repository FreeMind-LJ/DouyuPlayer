package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_sgcat_2E_o_3A_F0068227_2D_D04A_2D_4BF4_2D_8735_2D_ECF05396B5D8.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_catgets() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc12_:* = 0;
      var _loc13_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:int = 0;
      var _loc15_:* = 0;
      var _loc5_:int = 0;
      var _loc14_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_);
      _loc15_ = int(_loc3_ + -1);
      _loc14_ = li32(_loc4_ + 12);
      if(uint(_loc15_) >= 4294967294)
      {
         ESP = _loc2_;
         F___error();
         si32(9,int(eax));
      }
      else
      {
         _loc13_ = li32(_loc4_ + 8);
         _loc12_ = li32(_loc4_ + 4);
         _loc3_ = li32(_loc3_);
         _loc15_ = li32(_loc3_ + 4);
         var _loc10_:* = int(_loc15_ >>> 8);
         _loc10_ = _loc10_ & 65280;
         _loc15_ = _loc15_ << 8;
         _loc15_ = _loc15_ << 24 | _loc15_ & 16711680;
         _loc15_ = _loc15_ | (_loc10_ | int(_loc15_ >>> 24));
         _loc9_ = _loc15_ + -1;
         _loc8_ = 0;
         while(true)
         {
            while(true)
            {
               if(_loc8_ <= _loc9_)
               {
                  _loc15_ = int(_loc9_ + _loc8_);
                  _loc15_ = int(_loc15_ + (int(_loc15_ >>> 31)));
                  _loc1_ = _loc15_ >> 1;
                  _loc5_ = _loc3_ + int(_loc1_ * 12);
                  var _loc11_:* = li32(_loc5_ + 20);
                  _loc10_ = int(_loc11_ >>> 8);
                  _loc10_ = _loc10_ & 65280;
                  _loc11_ = _loc11_ << 8;
                  _loc11_ = _loc11_ << 24 | _loc11_ & 16711680;
                  _loc6_ = _loc11_ | (_loc10_ | int(_loc11_ >>> 24));
                  if(_loc6_ == _loc12_)
                  {
                     _loc15_ = li32(_loc5_ + 24);
                     _loc10_ = int(_loc15_ >>> 8);
                     _loc10_ = _loc10_ & 65280;
                     _loc15_ = _loc15_ << 8;
                     _loc15_ = _loc15_ << 24 | _loc15_ & 16711680;
                     _loc10_ = li32(_loc5_ + 28);
                     var _loc7_:* = int(_loc10_ >>> 8);
                     _loc7_ = _loc7_ & 65280;
                     _loc10_ = _loc10_ << 8;
                     _loc10_ = _loc10_ << 24 | _loc10_ & 16711680;
                     _loc8_ = _loc10_ | (_loc7_ | int(_loc10_ >>> 24));
                     _loc15_ = int(_loc8_ + (_loc15_ | (_loc10_ | int(_loc15_ >>> 24))));
                     _loc9_ = _loc15_ + -1;
                     _loc11_ = li32(_loc3_ + 12);
                     _loc10_ = int(_loc11_ >>> 8);
                     _loc10_ = _loc10_ & 65280;
                     _loc11_ = _loc11_ << 8;
                     _loc11_ = _loc11_ << 24 | _loc11_ & 16711680;
                     _loc15_ = _loc11_ | (_loc10_ | int(_loc11_ >>> 24));
                     _loc15_ = int(_loc15_ + _loc3_);
                     _loc12_ = int(_loc15_ + 20);
                     loop2:
                     while(true)
                     {
                        while(true)
                        {
                           if(_loc8_ <= _loc9_)
                           {
                              _loc15_ = int(_loc9_ + _loc8_);
                              _loc15_ = int(_loc15_ + (int(_loc15_ >>> 31)));
                              _loc1_ = _loc15_ >> 1;
                              _loc5_ = _loc12_ + int(_loc1_ * 12);
                              _loc15_ = li32(_loc5_);
                              _loc10_ = int(_loc15_ >>> 8);
                              _loc10_ = _loc10_ & 65280;
                              _loc15_ = _loc15_ << 8;
                              _loc15_ = _loc15_ << 24 | _loc15_ & 16711680;
                              _loc6_ = _loc15_ | (_loc10_ | int(_loc15_ >>> 24));
                              if(_loc6_ == _loc13_)
                              {
                                 _loc15_ = li32(_loc5_ + 8);
                                 _loc10_ = int(_loc15_ >>> 8);
                                 _loc10_ = _loc10_ & 65280;
                                 _loc15_ = _loc15_ << 8;
                                 _loc15_ = _loc15_ << 24 | _loc15_ & 16711680;
                                 _loc11_ = li32(_loc3_ + 16);
                                 _loc7_ = int(_loc11_ >>> 8);
                                 _loc7_ = _loc7_ & 65280;
                                 _loc11_ = _loc11_ << 8;
                                 _loc11_ = _loc11_ << 24 | _loc11_ & 16711680;
                                 _loc11_ = _loc11_ | (_loc7_ | int(_loc11_ >>> 24));
                                 _loc15_ = int(_loc11_ + (_loc15_ | (_loc10_ | int(_loc15_ >>> 24))));
                                 _loc15_ = int(_loc15_ + _loc3_);
                                 _loc14_ = int(_loc15_ + 20);
                                 break;
                              }
                              _loc15_ = int(_loc13_ - _loc6_);
                              if(_loc15_ <= -1)
                              {
                                 _loc9_ = _loc1_ + -1;
                                 continue;
                              }
                              _loc8_ = int(_loc1_ + 1);
                              continue loop2;
                           }
                        }
                     }
                  }
                  else
                  {
                     _loc15_ = int(_loc12_ - _loc6_);
                     if(_loc15_ <= -1)
                     {
                        _loc9_ = _loc1_ + -1;
                        continue;
                     }
                     break;
                  }
               }
               ESP = _loc2_;
               F___error();
               _loc15_ = int(eax);
               si32(83,_loc15_);
            }
            _loc8_ = int(_loc1_ + 1);
         }
      }
      eax = _loc14_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
