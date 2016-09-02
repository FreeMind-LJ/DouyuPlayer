package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_ermios_2E_o_3A_24B50498_2D_1A89_2D_45E4_2D_9675_2D_4B0A949BF8D0.*;
   
   public function F_tcflush() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_ + 4);
      _loc5_ = li32(_loc3_);
      if(_loc1_ != 3)
      {
         if(_loc1_ != 2)
         {
            if(_loc1_ == 1)
            {
               si32(1,_loc3_ - 4);
            }
            else
            {
               ESP = _loc2_;
               F___error();
               si32(22,int(eax));
               _loc5_ = -1;
            }
            addr113:
            eax = _loc5_;
            _loc2_ = _loc3_;
            ESP = _loc2_;
            return;
         }
         si32(2,_loc3_ - 4);
      }
      else
      {
         si32(3,_loc3_ - 4);
      }
      _loc2_ = int(_loc2_ - 16);
      var _loc4_:int = _loc3_ - 4;
      si32(_loc4_,_loc2_ + 8);
      si32(-2147191792,_loc2_ + 4);
      si32(_loc5_,_loc2_);
      ESP = _loc2_;
      F__ioctl();
      _loc2_ = int(_loc2_ + 16);
      _loc5_ = int(eax);
      §§goto(addr113);
   }
}
