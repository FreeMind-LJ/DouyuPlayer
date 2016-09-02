package sample.xx
{
   import sample.xx_utchar_2E_o_3A_BB0DC20A_2D_DA96_2D_46F3_2D_B3D9_2D_9E70E67525BC.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F_putchar_unlocked() : void
   {
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(___stdoutp);
      _loc6_ = li32(_loc1_ + 8);
      _loc5_ = int(_loc6_ + -1);
      si32(_loc5_,_loc1_ + 8);
      _loc4_ = li32(_loc3_);
      if(_loc6_ >= 1)
      {
         _loc5_ = _loc4_;
         addr63:
         _loc6_ = li32(_loc1_);
         si8(_loc5_,_loc6_);
         _loc6_ = int(_loc6_ + 1);
         si32(_loc6_,_loc1_);
         _loc4_ = _loc4_ & 255;
      }
      else
      {
         if(_loc5_ >= li32(_loc1_ + 24))
         {
            _loc5_ = _loc4_;
            if((_loc4_ & 255) != 10)
            {
               §§goto(addr63);
            }
         }
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_ + 4);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         F___swbuf();
         _loc2_ = int(_loc2_ + 16);
         _loc4_ = int(eax);
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
