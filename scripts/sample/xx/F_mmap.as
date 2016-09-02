package sample.xx
{
   import sample.xx_map_2E_o_3A_33F2FECF_2D_D245_2D_4324_2D_B723_2D_444C367DE1F2.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_mmap() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      ESP = _loc2_;
      F___getosreldate();
      _loc1_ = li32(_loc3_ + 24);
      _loc10_ = li32(_loc3_ + 20);
      _loc9_ = li32(_loc3_ + 16);
      _loc8_ = li32(_loc3_ + 12);
      _loc7_ = li32(_loc3_ + 8);
      _loc6_ = li32(_loc3_ + 4);
      _loc5_ = li32(_loc3_);
      var _loc4_:int = eax;
      if(_loc4_ >= 700051)
      {
         _loc2_ = int(_loc2_ - 32);
         si32(_loc10_,_loc2_ + 20);
         si32(_loc9_,_loc2_ + 16);
         si32(_loc8_,_loc2_ + 12);
         si32(_loc7_,_loc2_ + 8);
         si32(_loc6_,_loc2_ + 4);
         si32(_loc5_,_loc2_);
         si32(_loc1_,_loc2_ + 24);
         ESP = _loc2_;
         F___sys_mmap();
         _loc2_ = int(_loc2_ + 32);
         _loc5_ = int(eax);
      }
      else
      {
         _loc2_ = int(_loc2_ - 32);
         si32(_loc10_,_loc2_ + 24);
         si32(0,_loc2_ + 20);
         si32(_loc9_,_loc2_ + 16);
         si32(_loc8_,_loc2_ + 12);
         si32(_loc7_,_loc2_ + 8);
         si32(_loc6_,_loc2_ + 4);
         si32(_loc5_,_loc2_);
         si32(_loc1_,_loc2_ + 28);
         ESP = _loc2_;
         F___sys_freebsd6_mmap();
         _loc2_ = int(_loc2_ + 32);
         _loc5_ = int(eax);
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
