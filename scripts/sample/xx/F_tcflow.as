package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_ermios_2E_o_3A_24B50498_2D_1A89_2D_45E4_2D_9675_2D_4B0A949BF8D0.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F_tcflow() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:int = 0;
      var _loc7_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 64);
      _loc1_ = li32(_loc3_ + 4);
      _loc7_ = int(_loc1_ + -3);
      _loc6_ = li32(_loc3_);
      if(uint(_loc7_) >= 2)
      {
         if(_loc1_ != 2)
         {
            if(_loc1_ == 1)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(0,_loc2_ + 8);
               si32(536900719,_loc2_ + 4);
               si32(_loc6_,_loc2_);
               ESP = _loc2_;
               F__ioctl();
               _loc2_ = int(_loc2_ + 16);
               _loc5_ = eax;
            }
            else
            {
               ESP = _loc2_;
               F___error();
               si32(22,int(eax));
               _loc5_ = -1;
            }
         }
         else
         {
            _loc2_ = int(_loc2_ - 16);
            si32(0,_loc2_ + 8);
            si32(536900718,_loc2_ + 4);
            si32(_loc6_,_loc2_);
            ESP = _loc2_;
            F__ioctl();
            _loc2_ = int(_loc2_ + 16);
            _loc5_ = eax;
         }
      }
      else
      {
         _loc2_ = int(_loc2_ - 16);
         _loc4_ = _loc3_ - 48;
         si32(_loc4_,_loc2_ + 8);
         si32(1076655123,_loc2_ + 4);
         si32(_loc6_,_loc2_);
         ESP = _loc2_;
         F__ioctl();
         _loc5_ = -1;
         _loc2_ = int(_loc2_ + 16);
         _loc7_ = int(eax);
         if(_loc7_ != -1)
         {
            _loc5_ = 13;
            if(_loc1_ != 3)
            {
               _loc5_ = 12;
            }
            _loc7_ = int(_loc4_ + _loc5_);
            _loc7_ = li8(_loc7_ + 16);
            si8(_loc7_,_loc3_ - 49);
            if(_loc7_ != 255)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(1,_loc2_ + 8);
               _loc7_ = int(_loc3_ - 49);
               si32(_loc7_,_loc2_ + 4);
               si32(_loc6_,_loc2_);
               ESP = _loc2_;
               F__write();
               _loc5_ = -1;
               _loc2_ = int(_loc2_ + 16);
               _loc7_ = int(eax);
               if(_loc7_ != -1)
               {
               }
            }
            _loc5_ = 0;
         }
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
