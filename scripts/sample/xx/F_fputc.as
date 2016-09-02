package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_putc_2E_o_3A_2A435BF3_2D_667B_2D_40F3_2D_A9D0_2D_63C0E9F67A3B.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F_fputc() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
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
         addr90:
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
               §§goto(addr90);
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
