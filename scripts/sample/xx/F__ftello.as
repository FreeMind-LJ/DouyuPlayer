package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_tell_2E_o_3A_D1C059F9_2D_AD21_2D_4FC7_2D_BE52_2D_9407C8C30F65.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.si16;
   
   public function F__ftello() : void
   {
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc11_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc12_:* = li32(_loc1_ + 40);
      if(_loc12_ == 0)
      {
         ESP = _loc2_;
         F___error();
         si32(29,int(eax));
         _loc11_ = 1;
      }
      else
      {
         _loc10_ = li32(_loc3_ + 4);
         _loc11_ = li16(_loc1_ + 12);
         _loc12_ = _loc11_ & 4096;
         if(_loc12_ != 0)
         {
            _loc9_ = li32(_loc1_ + 84);
            _loc8_ = li32(_loc1_ + 80);
            addr141:
            _loc12_ = _loc11_ & 4;
            if(_loc12_ != 0)
            {
               _loc7_ = int(_loc1_ + 4);
               _loc6_ = li32(_loc1_ + 48);
               _loc5_ = _loc7_;
               if(_loc6_ != 0)
               {
                  _loc5_ = int(_loc1_ + 60);
               }
               _loc4_ = li32(_loc5_);
               _loc5_ = 1;
               if(uint(_loc8_) >= uint(_loc4_))
               {
                  _loc5_ = 0;
               }
               _loc12_ = _loc4_ >> 31;
               _loc12_ = int(_loc9_ - _loc12_);
               _loc9_ = int(_loc12_ - _loc5_);
               if(_loc9_ <= -1)
               {
                  _loc12_ = _loc11_ | 64;
                  si16(_loc12_,_loc1_ + 12);
                  ESP = _loc2_;
                  F___error();
                  si32(5,int(eax));
                  _loc11_ = 1;
               }
               else
               {
                  _loc8_ = int(_loc8_ - _loc4_);
                  if(_loc6_ != 0)
                  {
                     _loc1_ = li32(_loc7_);
                     _loc11_ = 1;
                     if(uint(_loc8_) >= uint(_loc1_))
                     {
                        _loc11_ = 0;
                     }
                     _loc12_ = _loc1_ >> 31;
                     _loc12_ = int(_loc9_ - _loc12_);
                     _loc9_ = int(_loc12_ - _loc11_);
                     _loc8_ = int(_loc8_ - _loc1_);
                  }
               }
            }
            else
            {
               _loc12_ = _loc11_ & 65535;
               _loc12_ = _loc12_ & 8;
               if(_loc12_ != 0)
               {
                  _loc11_ = li32(_loc1_);
                  if(_loc11_ != 0)
                  {
                     _loc1_ = int(_loc11_ - li32(_loc1_ + 16));
                     _loc11_ = 1;
                     if((uint(_loc1_ ^ -1)) < uint(_loc8_))
                     {
                        _loc11_ = 0;
                     }
                     if(_loc9_ != 2147483647)
                     {
                        _loc11_ = 1;
                     }
                     if(_loc11_ == 0)
                     {
                        ESP = _loc2_;
                        F___error();
                        si32(84,int(eax));
                        _loc11_ = 1;
                     }
                     else
                     {
                        _loc6_ = int(_loc1_ + _loc8_);
                        _loc7_ = 1;
                        _loc11_ = _loc7_;
                        if(uint(_loc6_) >= uint(_loc1_))
                        {
                           _loc11_ = 0;
                        }
                        if(uint(_loc6_) >= uint(_loc8_))
                        {
                           _loc7_ = _loc11_;
                        }
                        _loc12_ = int(0 + _loc9_);
                        _loc9_ = int(_loc12_ + _loc7_);
                        _loc8_ = _loc6_;
                     }
                  }
               }
            }
            si32(_loc8_,_loc10_);
            si32(_loc9_,_loc10_ + 4);
            _loc11_ = 0;
         }
         else
         {
            _loc2_ = int(_loc2_ - 16);
            _loc11_ = 1;
            si32(_loc11_,_loc2_ + 12);
            si32(0,_loc2_ + 8);
            si32(0,_loc2_ + 4);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F__sseek();
            _loc2_ = int(_loc2_ + 16);
            _loc8_ = int(eax);
            _loc9_ = int(edx);
            _loc12_ = _loc8_ & _loc9_;
            if(_loc12_ != -1)
            {
               _loc11_ = li16(_loc1_ + 12);
               §§goto(addr141);
            }
         }
      }
      eax = _loc11_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
