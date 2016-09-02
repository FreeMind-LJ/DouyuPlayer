package sample.xx
{
   import sample.xx_utchar_2E_o_3A_BB0DC20A_2D_DA96_2D_46F3_2D_B3D9_2D_9E70E67525BC.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F_putchar() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(___stdoutp);
      var _loc6_:* = li32(___isthreaded);
      if(_loc6_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F__flockfile();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc5_ = li32(_loc3_);
      _loc6_ = li32(_loc1_ + 8);
      _loc4_ = int(_loc6_ + -1);
      si32(_loc4_,_loc1_ + 8);
      if(_loc6_ >= 1)
      {
         _loc4_ = _loc5_;
         addr88:
         _loc6_ = li32(_loc1_);
         si8(_loc4_,_loc6_);
         _loc6_ = int(_loc6_ + 1);
         si32(_loc6_,_loc1_);
         _loc5_ = _loc5_ & 255;
      }
      else
      {
         if(_loc4_ >= li32(_loc1_ + 24))
         {
            _loc4_ = _loc5_;
            if((_loc5_ & 255) != 10)
            {
               §§goto(addr88);
            }
         }
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_ + 4);
         si32(_loc5_,_loc2_);
         ESP = _loc2_;
         F___swbuf();
         _loc2_ = int(_loc2_ + 16);
         _loc5_ = int(eax);
      }
      _loc6_ = li32(___isthreaded);
      if(_loc6_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F__funlockfile();
         _loc2_ = int(_loc2_ + 16);
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
