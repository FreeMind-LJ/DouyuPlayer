package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_dtoa_strtodg_2E_o_3A_D03194A0_2D_E400_2D_413E_2D_98F8_2D_5D6B1524177D.*;
   
   public function F___increment_D2A() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:int = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc8_ = _loc1_ + 20;
      _loc7_ = li32(_loc1_ + 16);
      _loc7_ = _loc7_ << 2;
      _loc6_ = int(_loc8_ + _loc7_);
      while(true)
      {
         _loc5_ = li32(_loc8_);
         if(_loc5_ != -1)
         {
            _loc7_ = int(_loc5_ + 1);
            si32(_loc7_,_loc8_);
            break;
         }
         si32(0,_loc8_);
         _loc8_ = _loc8_ + 4;
         if(uint(_loc8_) >= uint(_loc6_))
         {
            _loc6_ = li32(_loc1_ + 16);
            if(_loc6_ >= li32(_loc1_ + 8))
            {
               _loc2_ = int(_loc2_ - 16);
               _loc7_ = int(li32(_loc1_ + 4) + 1);
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F___Balloc_D2A();
               _loc2_ = int(_loc2_ + 16);
               _loc2_ = int(_loc2_ - 16);
               var _loc4_:* = li32(_loc1_ + 16) << 2;
               _loc4_ = int(_loc4_ + 8);
               si32(_loc4_,_loc2_ + 8);
               _loc4_ = int(_loc1_ + 12);
               si32(_loc4_,_loc2_ + 4);
               _loc4_ = int(int(eax) + 12);
               si32(_loc4_,_loc2_);
               ESP = _loc2_;
               Fmemcpy();
               _loc2_ = int(_loc2_ + 16);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F___Bfree_D2A();
               _loc2_ = int(_loc2_ + 16);
               _loc6_ = li32(int(eax) + 16);
               _loc1_ = int(eax);
            }
            _loc7_ = _loc6_ << 2;
            _loc7_ = int(_loc1_ + _loc7_);
            si32(1,_loc7_ + 20);
            _loc7_ = int(_loc6_ + 1);
            si32(_loc7_,_loc1_ + 16);
            break;
         }
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
