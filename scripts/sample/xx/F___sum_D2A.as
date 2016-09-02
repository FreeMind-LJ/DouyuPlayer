package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_dtoa_sum_2E_o_3A_7B363C54_2D_6200_2D_4681_2D_9F59_2D_C47394408673.*;
   import avm2.intrinsics.memory.si16;
   
   public function F___sum_D2A() : void
   {
      var _loc4_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:int = 0;
      var _loc3_:* = 0;
      var _loc15_:* = 0;
      var _loc13_:* = 0;
      var _loc12_:* = 0;
      var _loc14_:* = 0;
      var _loc1_:int = 0;
      var _loc10_:int = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_ + 4);
      _loc15_ = li32(_loc3_ + 16);
      _loc14_ = li32(_loc4_);
      _loc13_ = li32(_loc14_ + 16);
      _loc12_ = _loc3_;
      if(_loc13_ >= _loc15_)
      {
         _loc12_ = _loc14_;
      }
      var _loc11_:* = li32(_loc12_ + 4);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc11_,_loc2_);
      ESP = _loc2_;
      F___Balloc_D2A();
      _loc2_ = int(_loc2_ + 16);
      _loc10_ = eax;
      _loc11_ = li32(_loc12_ + 16);
      si32(_loc11_,_loc10_ + 16);
      if(_loc13_ >= _loc15_)
      {
         _loc14_ = _loc3_;
      }
      _loc9_ = li32(_loc14_ + 16);
      _loc11_ = _loc9_ << 2;
      _loc3_ = int(_loc10_ + 20);
      _loc8_ = _loc3_ + _loc11_;
      _loc1_ = _loc14_ + 20;
      _loc13_ = int(_loc12_ + 20);
      _loc15_ = 0;
      do
      {
         var _loc5_:* = li32(_loc13_);
         var _loc6_:int = _loc5_ >>> 16;
         var _loc7_:* = li32(_loc1_);
         _loc11_ = int(_loc7_ >>> 16);
         _loc11_ = int(_loc11_ + _loc6_);
         _loc5_ = _loc5_ & 65535;
         _loc5_ = int(_loc5_ + _loc15_);
         _loc7_ = _loc7_ & 65535;
         _loc7_ = int(_loc5_ + _loc7_);
         _loc5_ = int(_loc7_ >>> 16);
         _loc5_ = _loc5_ & 1;
         _loc11_ = int(_loc11_ + _loc5_);
         si16(_loc11_,_loc3_ + 2);
         si16(_loc7_,_loc3_);
         _loc11_ = int(_loc11_ >>> 16);
         _loc15_ = _loc11_ & 1;
         _loc1_ = _loc1_ + 4;
         _loc3_ = int(_loc3_ + 4);
         _loc13_ = int(_loc13_ + 4);
      }
      while(uint(_loc3_) < uint(_loc8_));
      
      _loc11_ = li32(_loc12_ + 16);
      _loc11_ = int(int(_loc11_ + _loc9_) - li32(_loc14_ + 16));
      _loc11_ = int(_loc10_ + (_loc11_ << 2));
      _loc12_ = int(_loc11_ + 20);
      if(uint(_loc3_) < uint(_loc12_))
      {
         do
         {
            _loc7_ = li32(_loc13_);
            _loc11_ = _loc7_ & 65535;
            _loc11_ = int(_loc11_ + _loc15_);
            _loc5_ = int(_loc11_ >>> 16);
            _loc5_ = _loc5_ & 1;
            _loc7_ = int(_loc7_ >>> 16);
            _loc7_ = int(_loc5_ + _loc7_);
            si16(_loc7_,_loc3_ + 2);
            si16(_loc11_,_loc3_);
            _loc11_ = int(_loc7_ >>> 16);
            _loc15_ = _loc11_ & 1;
            _loc3_ = int(_loc3_ + 4);
            _loc13_ = int(_loc13_ + 4);
         }
         while(uint(_loc3_) < uint(_loc12_));
         
      }
      if(_loc15_ != 0)
      {
         _loc12_ = li32(_loc10_ + 16);
         if(_loc12_ == li32(_loc10_ + 8))
         {
            _loc2_ = int(_loc2_ - 16);
            _loc11_ = int(li32(_loc10_ + 4) + 1);
            si32(_loc11_,_loc2_);
            ESP = _loc2_;
            F___Balloc_D2A();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            _loc7_ = li32(_loc10_ + 16) << 2;
            _loc7_ = int(_loc7_ + 8);
            si32(_loc7_,_loc2_ + 8);
            _loc7_ = int(_loc10_ + 12);
            si32(_loc7_,_loc2_ + 4);
            _loc7_ = int(int(eax) + 12);
            si32(_loc7_,_loc2_);
            ESP = _loc2_;
            Fmemcpy();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F___Bfree_D2A();
            _loc2_ = int(_loc2_ + 16);
            _loc12_ = li32(int(eax) + 16);
            _loc10_ = eax;
         }
         _loc11_ = _loc12_ << 2;
         _loc11_ = int(_loc10_ + _loc11_);
         si32(1,_loc11_ + 20);
         _loc11_ = int(_loc12_ + 1);
         si32(_loc11_,_loc10_ + 16);
      }
      eax = _loc10_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
