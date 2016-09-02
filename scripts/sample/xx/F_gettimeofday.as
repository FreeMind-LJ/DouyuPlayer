package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_gettimeofday() : void
   {
      var _loc4_:* = 0;
      var _loc1_:int = 0;
      var _loc6_:int = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      var _loc3_:* = new Date();
      _loc1_ = _loc3_.time / 1000;
      _loc6_ = _loc3_.getMilliseconds() * 1000;
      _loc5_ = li32(_loc4_);
      si32(_loc1_,_loc5_);
      si32(_loc6_,_loc5_ + 4);
      eax = 0;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
