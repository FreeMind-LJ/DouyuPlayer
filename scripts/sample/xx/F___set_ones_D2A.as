package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_dtoa_strtodg_2E_o_3A_D03194A0_2D_E400_2D_413E_2D_98F8_2D_5D6B1524177D.*;
   
   public function F___set_ones_D2A() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc8_:* = 0;
      var _loc4_:int = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc8_ = li32(_loc1_ + 4);
      _loc7_ = li32(_loc3_ + 4);
      var _loc6_:* = int(_loc7_ + 31);
      _loc5_ = _loc6_ >> 5;
      if(_loc8_ < _loc5_)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F___Bfree_D2A();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc5_,_loc2_);
         ESP = _loc2_;
         F___Balloc_D2A();
         _loc2_ = int(_loc2_ + 16);
         _loc1_ = int(eax);
      }
      _loc5_ = _loc7_ & 31;
      _loc4_ = 1;
      if(_loc5_ == 0)
      {
         _loc4_ = 0;
      }
      _loc8_ = _loc4_ & 1;
      _loc6_ = _loc7_ >> 5;
      _loc4_ = _loc8_ + _loc6_;
      si32(_loc4_,_loc1_ + 16);
      _loc7_ = int(_loc1_ + 20);
      if(_loc4_ >= 1)
      {
         _loc4_ = _loc7_ + (_loc4_ << 2);
         _loc7_ = int(_loc1_ + 20);
         do
         {
            si32(-1,_loc7_);
            _loc7_ = int(_loc7_ + 4);
         }
         while(uint(_loc7_) < uint(_loc4_));
         
      }
      if(_loc5_ != 0)
      {
         _loc6_ = li32(_loc7_ - 4);
         _loc8_ = int(_loc6_ >>> int(32 - _loc5_));
         si32(_loc8_,_loc7_ - 4);
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
