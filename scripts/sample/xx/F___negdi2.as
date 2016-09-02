package sample.xx
{
   import avm2.intrinsics.memory.li32;
   
   public function F___negdi2() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 1;
      _loc6_ = li32(_loc3_);
      if(_loc6_ == 0)
      {
         _loc1_ = 0;
      }
      var _loc5_:* = _loc3_;
      _loc5_ = _loc5_ | 4;
      _loc5_ = li32(_loc5_);
      _loc5_ = int(0 - _loc5_);
      var _loc4_:int = _loc5_ - _loc1_;
      _loc5_ = int(0 - _loc6_);
      eax = _loc5_;
      edx = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
