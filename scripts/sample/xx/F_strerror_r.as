package sample.xx
{
   import sample.xx_trerror_2E_o_3A_DADED045_2D_D9F4_2D_4B6F_2D_9B3D_2D_DDECF6594CF1.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.li8;
   
   public function F_strerror_r() : void
   {
      var _loc4_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc13_:* = 0;
      var _loc9_:int = 0;
      var _loc8_:int = 0;
      var _loc3_:* = 0;
      var _loc5_:int = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 48);
      ESP = _loc2_;
      F___error();
      _loc3_ = int(eax);
      _loc13_ = li32(_loc3_);
      _loc2_ = int(_loc2_ - 16);
      si32(1,_loc2_ + 4);
      si32(L__2E_str1,_loc2_);
      ESP = _loc2_;
      F_catopen();
      _loc12_ = li32(_loc4_ + 8);
      _loc11_ = li32(_loc4_ + 4);
      _loc10_ = li32(_loc4_);
      _loc2_ = int(_loc2_ + 16);
      _loc9_ = eax;
      if(_loc10_ >= 1)
      {
         if(li32(_sys_nerr) > _loc10_)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(1,_loc2_ + 4);
            si32(_loc9_,_loc2_);
            si32(_loc10_,_loc2_ + 8);
            si32(li32(int(_sys_errlist + (_loc10_ << 2))),_loc2_ + 12);
            ESP = _loc2_;
            F_catgets();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc12_,_loc2_ + 8);
            si32(int(eax),_loc2_ + 4);
            si32(_loc11_,_loc2_);
            ESP = _loc2_;
            F_strlcpy();
            _loc1_ = 0;
            _loc2_ = int(_loc2_ + 16);
            if(uint(int(eax)) >= uint(_loc12_))
            {
               _loc1_ = 34;
            }
         }
         addr375:
         _loc2_ = int(_loc2_ - 16);
         si32(_loc9_,_loc2_);
         ESP = _loc2_;
         F_catclose();
         _loc2_ = int(_loc2_ + 16);
         ESP = _loc2_;
         F___error();
         _loc3_ = int(eax);
         si32(_loc13_,_loc3_);
         eax = _loc1_;
         _loc2_ = _loc4_;
         ESP = _loc2_;
         return;
      }
      _loc2_ = int(_loc2_ - 16);
      si32(L__2E_str2,_loc2_ + 12);
      si32(65535,_loc2_ + 8);
      si32(1,_loc2_ + 4);
      si32(_loc9_,_loc2_);
      ESP = _loc2_;
      F_catgets();
      _loc2_ = int(_loc2_ + 16);
      _loc8_ = eax;
      si8(0,_loc4_ - 1);
      var _loc7_:* = _loc10_ >> 31;
      _loc3_ = int(_loc10_ + _loc7_);
      _loc6_ = _loc3_ ^ _loc7_;
      _loc3_ = int(_loc4_ - 36);
      _loc1_ = int(_loc3_ + 35);
      _loc5_ = _loc3_ + 34;
      do
      {
         _loc3_ = _loc6_;
         _loc7_ = int(uint(_loc3_) % 10);
         _loc7_ = int(L__2E_str + _loc7_);
         _loc7_ = li8(_loc7_);
         si8(_loc7_,_loc5_);
         _loc1_ = int(_loc1_ + -1);
         _loc5_ = _loc5_ + -1;
         _loc6_ = int(uint(_loc3_) / 10);
      }
      while(uint(_loc3_) > 9);
      
      if(_loc10_ <= -1)
      {
         si8(45,_loc5_);
         _loc1_ = _loc5_;
      }
      si8(32,_loc1_ - 1);
      si8(58,_loc1_ - 2);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc12_,_loc2_ + 8);
      si32(_loc8_,_loc2_ + 4);
      si32(_loc11_,_loc2_);
      ESP = _loc2_;
      F_strlcpy();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc12_,_loc2_ + 8);
      _loc3_ = int(_loc1_ + -2);
      si32(_loc3_,_loc2_ + 4);
      si32(_loc11_,_loc2_);
      ESP = _loc2_;
      F_strlcat();
      _loc2_ = int(_loc2_ + 16);
      _loc1_ = 22;
      §§goto(addr375);
   }
}
