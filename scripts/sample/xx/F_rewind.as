package sample.xx
{
   import sample.xx_ewind_2E_o_3A_1511706A_2D_F406_2D_4323_2D_AB15_2D_55677FE82BC4.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.si16;
   
   public function F_rewind() : void
   {
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      ESP = _loc2_;
      F___error();
      _loc1_ = int(eax);
      _loc5_ = li32(_loc1_);
      _loc1_ = li32(___sdidinit);
      if(_loc1_ == 0)
      {
         ESP = _loc2_;
         F___sinit();
      }
      _loc4_ = li32(_loc3_);
      _loc1_ = li32(___isthreaded);
      if(_loc1_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         F__flockfile();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc2_ = int(_loc2_ - 32);
      si32(1,_loc2_ + 16);
      si32(0,_loc2_ + 12);
      si32(0,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      F__fseeko();
      _loc2_ = int(_loc2_ + 32);
      _loc1_ = int(eax);
      if(_loc1_ == 0)
      {
         si16(li16(_loc4_ + 12) & 65439,_loc4_ + 12);
         ESP = _loc2_;
         F___error();
         si32(_loc5_,int(eax));
      }
      _loc1_ = li32(___isthreaded);
      if(_loc1_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         F__funlockfile();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
