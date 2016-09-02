package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import sample.xx_tdio_2E_o_3A_66A14D5B_2D_6B97_2D_4D20_2D_8A3C_2D_E15E93A91578.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.si16;
   
   public function F__swrite() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc14_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:int = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc9_:* = 0;
      var _loc12_:int = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_);
      var _loc15_:* = li8(_loc3_ + 13);
      _loc15_ = _loc15_ & 1;
      if(_loc15_ != 0)
      {
         ESP = _loc2_;
         F___error();
         _loc15_ = int(eax);
         _loc14_ = li32(_loc15_);
         _loc2_ = int(_loc2_ - 16);
         si32(2,_loc2_ + 12);
         si32(0,_loc2_ + 8);
         si32(0,_loc2_ + 4);
         si32(_loc3_,_loc2_);
         ESP = _loc2_;
         F__sseek();
         _loc2_ = int(_loc2_ + 16);
         _loc15_ = int(eax) & int(edx);
         if(_loc15_ == -1)
         {
            _loc15_ = li8(_loc3_ + 13);
            _loc12_ = -1;
            if((_loc15_ & 4) == 0)
            {
            }
            addr318:
            eax = _loc12_;
            _loc2_ = _loc4_;
            ESP = _loc2_;
            return;
         }
         ESP = _loc2_;
         F___error();
         _loc15_ = int(eax);
         si32(_loc14_,_loc15_);
      }
      var _loc11_:* = li32(_loc4_ + 8);
      var _loc10_:* = li32(_loc4_ + 4);
      var _loc13_:* = li32(_loc3_ + 44);
      _loc15_ = li32(_loc3_ + 28);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc11_,_loc2_ + 8);
      si32(_loc10_,_loc2_ + 4);
      si32(_loc15_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc13_]();
      _loc2_ = int(_loc2_ + 16);
      _loc12_ = eax;
      _loc9_ = li16(_loc3_ + 12);
      if(_loc12_ >= 0)
      {
         _loc15_ = _loc9_ & 4352;
         if(_loc15_ == 4352)
         {
            _loc8_ = li32(_loc3_ + 80);
            _loc1_ = 1;
            _loc5_ = _loc1_;
            if(uint(_loc8_) <= (uint(_loc12_ ^ -1)))
            {
               _loc5_ = 0;
            }
            _loc6_ = li32(_loc3_ + 84);
            _loc14_ = _loc12_ >> 31;
            _loc7_ = 2147483647 - _loc14_;
            if(_loc6_ <= _loc7_)
            {
               _loc1_ = 0;
            }
            if(_loc6_ != _loc7_)
            {
               _loc5_ = _loc1_;
            }
            if(_loc5_ == 0)
            {
               _loc7_ = _loc8_ + _loc12_;
               si32(_loc7_,_loc3_ + 80);
               _loc1_ = 1;
               _loc9_ = _loc1_;
               if(uint(_loc7_) >= uint(_loc8_))
               {
                  _loc9_ = 0;
               }
               if(uint(_loc7_) >= uint(_loc12_))
               {
                  _loc1_ = _loc9_;
               }
               _loc15_ = int(_loc6_ + _loc14_);
               _loc15_ = int(_loc15_ + _loc1_);
               si32(_loc15_,_loc3_ + 84);
            }
         }
         _loc15_ = _loc9_ & 61439;
         si16(_loc15_,_loc3_ + 12);
      }
      else
      {
         _loc15_ = _loc9_ & 61439;
         si16(_loc15_,_loc3_ + 12);
      }
      §§goto(addr318);
   }
}
