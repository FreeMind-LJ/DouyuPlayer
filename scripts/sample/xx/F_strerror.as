package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_trerror_2E_o_3A_DADED045_2D_D9F4_2D_4B6F_2D_9B3D_2D_DDECF6594CF1.*;
   
   public function F_strerror() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      si32(2048,_loc2_ + 8);
      si32(_ebuf_2E_1915,_loc2_ + 4);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_strerror_r();
      _loc2_ = int(_loc2_ + 16);
      _loc1_ = int(eax);
      if(_loc1_ != 0)
      {
         ESP = _loc2_;
         F___error();
         si32(22,int(eax));
      }
      eax = _ebuf_2E_1915;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
