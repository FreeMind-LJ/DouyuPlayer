package sample.xx
{
   import sample.xx_seek_2E_o_3A_F8D70C30_2D_767E_2D_41B8_2D_95EC_2D_0374C361DFF0.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_fseeko() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc4_:int = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      ESP = _loc2_;
      F___error();
      _loc1_ = int(eax);
      _loc8_ = li32(_loc1_);
      _loc1_ = li32(___sdidinit);
      if(_loc1_ == 0)
      {
         ESP = _loc2_;
         F___sinit();
      }
      _loc7_ = li32(_loc3_);
      _loc1_ = li32(___isthreaded);
      if(_loc1_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc7_,_loc2_);
         ESP = _loc2_;
         F__flockfile();
         _loc2_ = int(_loc2_ + 16);
      }
      var _loc6_:* = li32(_loc3_ + 8);
      _loc1_ = li32(_loc3_ + 4);
      var _loc5_:* = li32(_loc3_ + 12);
      _loc2_ = int(_loc2_ - 32);
      si32(0,_loc2_ + 16);
      si32(_loc5_,_loc2_ + 12);
      si32(_loc1_,_loc2_ + 4);
      si32(_loc7_,_loc2_);
      si32(_loc6_,_loc2_ + 8);
      ESP = _loc2_;
      F__fseeko();
      _loc2_ = int(_loc2_ + 32);
      _loc4_ = eax;
      _loc1_ = li32(___isthreaded);
      if(_loc1_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc7_,_loc2_);
         ESP = _loc2_;
         F__funlockfile();
         _loc2_ = int(_loc2_ + 16);
      }
      if(_loc4_ == 0)
      {
         ESP = _loc2_;
         F___error();
         si32(_loc8_,int(eax));
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
