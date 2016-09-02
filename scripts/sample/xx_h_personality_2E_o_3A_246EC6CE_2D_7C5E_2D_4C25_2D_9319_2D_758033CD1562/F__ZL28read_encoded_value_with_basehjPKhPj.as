package sample.xx_h_personality_2E_o_3A_246EC6CE_2D_7C5E_2D_4C25_2D_9319_2D_758033CD1562
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sxi8;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.sxi16;
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZL28read_encoded_value_with_basehjPKhPj() : void
   {
      var _loc4_:* = 0;
      var _loc13_:* = 0;
      var _loc14_:* = 0;
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:int = 0;
      var _loc11_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_ + 12);
      _loc14_ = li32(_loc4_ + 8);
      _loc13_ = li32(_loc4_);
      if(_loc13_ == 80)
      {
         var _loc12_:* = int(_loc14_ + 3);
         _loc12_ = _loc12_ & -4;
         _loc11_ = int(_loc12_ + 4);
         _loc10_ = li32(_loc12_);
      }
      else
      {
         _loc9_ = li32(_loc4_ + 4);
         _loc8_ = _loc13_ & 15;
         _loc7_ = 0;
         if(_loc8_ <= 3)
         {
            if(_loc8_ <= 1)
            {
               if(_loc8_ != 0)
               {
                  _loc11_ = _loc14_;
                  _loc1_ = _loc7_;
                  if(_loc8_ != 1)
                  {
                     addr295:
                     ESP = _loc2_;
                     F_abort();
                  }
                  else
                  {
                     do
                     {
                        _loc12_ = si8(li8(_loc11_));
                        var _loc5_:* = _loc12_ & 127;
                        _loc5_ = _loc5_ << _loc7_;
                        _loc1_ = _loc5_ | _loc1_;
                        _loc7_ = _loc7_ + 7;
                        _loc11_ = int(_loc11_ + 1);
                     }
                     while(_loc12_ < 0);
                     
                  }
               }
               else
               {
                  _loc11_ = int(_loc14_ + 4);
                  _loc1_ = li32(_loc14_);
               }
            }
            else if(_loc8_ != 2)
            {
               if(_loc8_ != 3)
               {
                  §§goto(addr295);
               }
               else
               {
                  _loc11_ = int(_loc14_ + 4);
                  _loc1_ = li32(_loc14_);
               }
            }
            else
            {
               _loc11_ = int(_loc14_ + 2);
               _loc1_ = li16(_loc14_);
            }
         }
         else if(_loc8_ <= 9)
         {
            if(_loc8_ != 4)
            {
               _loc11_ = _loc14_;
               _loc1_ = _loc7_;
               if(_loc8_ != 9)
               {
                  §§goto(addr295);
               }
               else
               {
                  do
                  {
                     _loc12_ = si8(li8(_loc11_));
                     _loc5_ = _loc12_ & 127;
                     _loc5_ = _loc5_ << _loc7_;
                     _loc1_ = _loc5_ | _loc1_;
                     _loc7_ = _loc7_ + 7;
                     _loc11_ = int(_loc11_ + 1);
                     _loc6_ = _loc12_ & 255;
                  }
                  while(_loc12_ < 0);
                  
                  if(uint(_loc7_) <= 31)
                  {
                     _loc12_ = _loc6_ & 64;
                     if(_loc12_ != 0)
                     {
                        _loc1_ = _loc1_ | -1 << _loc7_;
                        addr308:
                        _loc12_ = _loc13_ & 112;
                        if(_loc12_ == 16)
                        {
                           _loc9_ = _loc14_;
                        }
                        _loc10_ = int(_loc9_ + _loc1_);
                        _loc12_ = _loc13_ << 24;
                        _loc12_ = _loc12_ >> 24;
                        if(_loc12_ <= -1)
                        {
                           _loc10_ = li32(_loc10_);
                        }
                     }
                  }
               }
            }
            else
            {
               _loc11_ = int(_loc14_ + 8);
               _loc1_ = li32(_loc14_);
            }
         }
         else if(_loc8_ != 10)
         {
            if(_loc8_ != 11)
            {
               if(_loc8_ != 12)
               {
                  §§goto(addr295);
               }
               else
               {
                  _loc11_ = int(_loc14_ + 8);
                  _loc1_ = li32(_loc14_);
               }
            }
            else
            {
               _loc11_ = int(_loc14_ + 4);
               _loc1_ = li32(_loc14_);
            }
         }
         else
         {
            _loc11_ = int(_loc14_ + 2);
            _loc1_ = si16(li16(_loc14_));
         }
         _loc10_ = 0;
         if(_loc1_ != 0)
         {
            §§goto(addr308);
         }
      }
      si32(_loc10_,_loc3_);
      eax = _loc11_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
