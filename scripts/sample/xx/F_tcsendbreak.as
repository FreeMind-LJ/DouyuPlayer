package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_ermios_2E_o_3A_24B50498_2D_1A89_2D_45E4_2D_9675_2D_4B0A949BF8D0.*;
   
   public function F_tcsendbreak() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:int = 0;
      var _loc6_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      si32(0,_loc3_ - 8);
      _loc1_ = _loc3_ - 8;
      _loc6_ = _loc1_ | 4;
      si32(400000,_loc6_);
      _loc2_ = int(_loc2_ - 16);
      si32(0,_loc2_ + 8);
      si32(536900731,_loc2_ + 4);
      _loc5_ = li32(_loc3_);
      si32(_loc5_,_loc2_);
      ESP = _loc2_;
      F__ioctl();
      _loc4_ = -1;
      _loc2_ = int(_loc2_ + 16);
      _loc6_ = int(eax);
      if(_loc6_ != -1)
      {
         _loc2_ = int(_loc2_ - 32);
         si32(_loc1_,_loc2_ + 16);
         si32(0,_loc2_ + 12);
         si32(0,_loc2_ + 8);
         si32(0,_loc2_ + 4);
         si32(0,_loc2_);
         ESP = _loc2_;
         F__select();
         _loc2_ = int(_loc2_ + 32);
         _loc2_ = int(_loc2_ - 16);
         si32(0,_loc2_ + 8);
         si32(536900730,_loc2_ + 4);
         si32(_loc5_,_loc2_);
         ESP = _loc2_;
         F__ioctl();
         _loc4_ = -1;
         _loc2_ = int(_loc2_ + 16);
         _loc6_ = int(eax);
         if(_loc6_ != _loc4_)
         {
            _loc4_ = 0;
         }
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
