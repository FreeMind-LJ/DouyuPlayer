package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_rand_r() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc7_ = li32(_loc1_);
      _loc6_ = 123459876;
      if(_loc7_ != 0)
      {
         _loc6_ = _loc7_;
      }
      var _loc5_:* = int(uint(_loc6_) / 127773);
      _loc5_ = int(_loc5_ * -2836);
      var _loc4_:int = uint(_loc6_) % 127773;
      _loc4_ = _loc4_ * 16807;
      _loc7_ = int(_loc4_ + _loc5_);
      _loc6_ = int(_loc7_ + 2147483647);
      if(_loc7_ >= 0)
      {
         _loc6_ = _loc7_;
      }
      si32(_loc6_,_loc1_);
      _loc5_ = _loc6_ & 2147483647;
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
