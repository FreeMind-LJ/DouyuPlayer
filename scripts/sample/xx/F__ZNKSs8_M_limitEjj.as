package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZNKSs8_M_limitEjj() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:int = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__ZNKSs4sizeEv();
      _loc6_ = li32(_loc3_ + 4);
      _loc2_ = int(_loc2_ + 16);
      _loc5_ = eax;
      _loc5_ = _loc5_ - _loc6_;
      _loc4_ = li32(_loc3_ + 8);
      if(uint(_loc5_) <= uint(_loc4_))
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F__ZNKSs4sizeEv();
         _loc2_ = int(_loc2_ + 16);
         _loc5_ = eax;
         _loc4_ = int(_loc5_ - _loc6_);
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
