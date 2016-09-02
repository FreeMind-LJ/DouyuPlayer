package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   
   public function F___d2b_D2A() : void
   {
      var _loc4_:* = 0;
      var _loc11_:* = 0;
      var _loc9_:int = 0;
      var _loc13_:* = 0;
      var _loc15_:* = 0;
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc12_:* = 0;
      var _loc10_:* = 0;
      var _loc14_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc3_ = 1;
      si32(_loc3_,_loc2_);
      _loc15_ = _loc4_;
      _loc15_ = _loc15_ | 4;
      _loc15_ = li32(_loc15_);
      _loc14_ = _loc15_ & 1048575;
      _loc15_ = int(_loc15_ >>> 20);
      _loc13_ = _loc15_ & 2047;
      if(_loc13_ != 0)
      {
         _loc14_ = _loc14_ | 1048576;
      }
      ESP = _loc2_;
      F___Balloc_D2A();
      _loc12_ = li32(_loc4_);
      _loc11_ = li32(_loc4_ + 12);
      _loc10_ = li32(_loc4_ + 8);
      _loc2_ = int(_loc2_ + 16);
      _loc9_ = eax;
      if(_loc12_ != 0)
      {
         _loc15_ = _loc12_ & 7;
         if(_loc15_ != 0)
         {
            _loc15_ = _loc12_ & 1;
            if(_loc15_ == 0)
            {
               _loc15_ = _loc12_ & 2;
               if(_loc15_ != 0)
               {
                  _loc8_ = int(_loc12_ >>> 1);
               }
               else
               {
                  _loc8_ = int(_loc12_ >>> 2);
                  _loc3_ = 2;
               }
               addr281:
               _loc15_ = int(32 - _loc3_);
               _loc15_ = _loc14_ << _loc15_;
               _loc15_ = _loc15_ | _loc8_;
               si32(_loc15_,_loc9_ + 20);
               _loc14_ = int(_loc14_ >>> _loc3_);
            }
            addr314:
            si32(_loc14_,_loc9_ + 24);
            _loc12_ = 1;
            if(_loc14_ != 0)
            {
               _loc12_ = 2;
            }
            si32(_loc12_,_loc9_ + 16);
         }
         else
         {
            _loc3_ = int(_loc12_ >>> 16);
            _loc1_ = _loc12_ & 65535;
            if(_loc1_ != 0)
            {
               _loc3_ = _loc12_;
            }
            _loc5_ = int(_loc3_ >>> 8);
            _loc8_ = _loc3_ & 255;
            if(_loc8_ != 0)
            {
               _loc5_ = _loc3_;
            }
            _loc6_ = int(_loc5_ >>> 4);
            _loc7_ = _loc5_ & 15;
            if(_loc7_ != 0)
            {
               _loc6_ = _loc5_;
            }
            _loc5_ = int(_loc6_ >>> 2);
            _loc3_ = _loc6_ & 3;
            if(_loc3_ != 0)
            {
               _loc5_ = _loc6_;
            }
            _loc6_ = 16;
            if(_loc1_ != 0)
            {
               _loc6_ = 0;
            }
            _loc1_ = _loc6_ | 8;
            if(_loc8_ != 0)
            {
               _loc1_ = _loc6_;
            }
            _loc8_ = _loc1_ | 4;
            if(_loc7_ != 0)
            {
               _loc8_ = _loc1_;
            }
            _loc7_ = _loc8_ | 2;
            if(_loc3_ != 0)
            {
               _loc7_ = _loc8_;
            }
            _loc15_ = _loc5_ & 1;
            if(_loc15_ == 0)
            {
               _loc5_ = int(_loc5_ >>> 1);
               _loc7_ = int(_loc7_ + 1);
               _loc3_ = 32;
               _loc8_ = _loc12_;
               if(_loc5_ != 0)
               {
               }
               §§goto(addr281);
            }
            _loc3_ = _loc7_;
            _loc8_ = _loc5_;
            _loc12_ = _loc5_;
            if(_loc7_ != 0)
            {
               §§goto(addr281);
            }
            §§goto(addr314);
         }
         si32(_loc12_,_loc9_ + 20);
         _loc3_ = 0;
         §§goto(addr314);
      }
      else
      {
         _loc15_ = _loc14_ & 7;
         if(_loc15_ != 0)
         {
            _loc5_ = 0;
            if((_loc14_ & 1) == 0)
            {
               _loc15_ = _loc14_ & 2;
               if(_loc15_ != 0)
               {
                  _loc14_ = int(_loc14_ >>> 1);
                  _loc5_ = 1;
               }
               else
               {
                  _loc14_ = int(_loc14_ >>> 2);
                  _loc5_ = 2;
               }
            }
         }
         else
         {
            _loc5_ = int(_loc14_ >>> 16);
            _loc7_ = _loc14_ & 65535;
            if(_loc7_ != 0)
            {
               _loc5_ = _loc14_;
            }
            _loc12_ = int(_loc5_ >>> 8);
            _loc3_ = _loc5_ & 255;
            if(_loc3_ != 0)
            {
               _loc12_ = _loc5_;
            }
            _loc1_ = int(_loc12_ >>> 4);
            _loc8_ = _loc12_ & 15;
            if(_loc8_ != 0)
            {
               _loc1_ = _loc12_;
            }
            _loc12_ = int(_loc1_ >>> 2);
            _loc5_ = _loc1_ & 3;
            if(_loc5_ != 0)
            {
               _loc12_ = _loc1_;
            }
            _loc1_ = 16;
            if(_loc7_ != 0)
            {
               _loc1_ = 0;
            }
            _loc7_ = _loc1_ | 8;
            if(_loc3_ != 0)
            {
               _loc7_ = _loc1_;
            }
            _loc3_ = _loc7_ | 4;
            if(_loc8_ != 0)
            {
               _loc3_ = _loc7_;
            }
            _loc8_ = _loc3_ | 2;
            if(_loc5_ != 0)
            {
               _loc8_ = _loc3_;
            }
            _loc15_ = _loc12_ & 1;
            if(_loc15_ == 0)
            {
               _loc12_ = int(_loc12_ >>> 1);
               _loc8_ = int(_loc8_ + 1);
               _loc5_ = 32;
               if(_loc12_ != 0)
               {
               }
            }
            _loc14_ = _loc12_;
            _loc5_ = _loc8_;
         }
         si32(_loc14_,_loc9_ + 20);
         _loc12_ = 1;
         si32(_loc12_,_loc9_ + 16);
         _loc3_ = int(_loc5_ + 32);
      }
      if(_loc13_ != 0)
      {
         _loc15_ = int(_loc13_ + _loc3_);
         _loc15_ = int(_loc15_ + -1075);
         si32(_loc15_,_loc10_);
         _loc14_ = int(53 - _loc3_);
      }
      else
      {
         _loc15_ = int(_loc13_ + _loc3_);
         _loc15_ = int(_loc15_ + -1074);
         si32(_loc15_,_loc10_);
         _loc15_ = _loc12_ << 2;
         _loc15_ = int(_loc15_ + _loc9_);
         _loc5_ = li32(_loc15_ + 16);
         _loc8_ = _loc5_ << 16;
         if(uint(_loc5_) >= 65536)
         {
            _loc8_ = _loc5_;
         }
         _loc10_ = _loc8_ << 8;
         if(uint(_loc8_) >= 16777216)
         {
            _loc10_ = _loc8_;
         }
         _loc13_ = _loc10_ << 4;
         if(uint(_loc10_) >= 268435456)
         {
            _loc13_ = _loc10_;
         }
         _loc14_ = _loc13_ << 2;
         if(uint(_loc13_) >= 1073741824)
         {
            _loc14_ = _loc13_;
         }
         _loc3_ = 16;
         if(uint(_loc5_) >= 65536)
         {
            _loc3_ = 0;
         }
         _loc5_ = _loc3_ | 8;
         if(uint(_loc8_) >= 16777216)
         {
            _loc5_ = _loc3_;
         }
         _loc3_ = _loc5_ | 4;
         if(uint(_loc10_) >= 268435456)
         {
            _loc3_ = _loc5_;
         }
         _loc10_ = _loc3_ | 2;
         if(uint(_loc13_) >= 1073741824)
         {
            _loc10_ = _loc3_;
         }
         _loc13_ = _loc12_ << 5;
         if(_loc14_ >= 0)
         {
            _loc10_ = int(_loc10_ + 1);
            _loc14_ = 32;
            if((_loc14_ & 1073741824) != 0)
            {
            }
            addr682:
            _loc14_ = int(_loc13_ - _loc14_);
         }
         _loc14_ = _loc10_;
         §§goto(addr682);
      }
      si32(_loc14_,_loc11_);
      eax = _loc9_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
