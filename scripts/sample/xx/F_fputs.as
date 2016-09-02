package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_puts_2E_o_3A_FBA8C3FD_2D_51BA_2D_4262_2D_B0D3_2D_11D5A9803FD1.*;
   
   public function F_fputs() : void
   {
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:int = 0;
      var _loc7_:int = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 32);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc3_ - 24);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_strlen();
      _loc2_ = int(_loc2_ + 16);
      _loc1_ = int(eax);
      si32(_loc1_,_loc3_ - 8);
      _loc7_ = _loc3_ - 24;
      _loc6_ = _loc7_ | 4;
      si32(_loc1_,_loc6_);
      si32(_loc7_,_loc3_ - 16);
      _loc5_ = _loc3_ - 16;
      _loc1_ = _loc5_ | 4;
      si32(1,_loc1_);
      _loc4_ = li32(_loc3_ + 4);
      _loc1_ = li32(___isthreaded);
      if(_loc1_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         F__flockfile();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc1_ = li32(_loc4_ + 100);
      if(_loc1_ == 0)
      {
         si32(-1,_loc4_ + 100);
      }
      _loc2_ = int(_loc2_ - 16);
      si32(_loc5_,_loc2_ + 4);
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      F___sfvwrite();
      _loc2_ = int(_loc2_ + 16);
      _loc5_ = eax;
      _loc1_ = li32(___isthreaded);
      if(_loc1_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         F__funlockfile();
         _loc2_ = int(_loc2_ + 16);
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
