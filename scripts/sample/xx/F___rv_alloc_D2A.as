package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_dtoa_dmisc_2E_o_3A_3A1AE1C3_2D_4926_2D_4D3E_2D_9205_2D_26C127AFFDD0.*;
   
   public function F___rv_alloc_D2A() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:int = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 4;
      _loc6_ = 0;
      _loc5_ = li32(_loc3_);
      if(uint(_loc5_) >= 20)
      {
         do
         {
            _loc6_ = _loc6_ + 1;
            _loc1_ = _loc1_ << 1;
            var _loc4_:int = _loc1_ + 16;
         }
         while(uint(_loc4_) <= uint(_loc5_));
         
      }
      _loc2_ = int(_loc2_ - 16);
      si32(_loc6_,_loc2_);
      ESP = _loc2_;
      F___Balloc_D2A();
      _loc2_ = int(_loc2_ + 16);
      _loc4_ = eax;
      si32(_loc6_,_loc4_);
      _loc4_ = _loc4_ + 4;
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
