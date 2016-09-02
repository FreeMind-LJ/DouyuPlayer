package sample.xx
{
   import avm2.intrinsics.memory.li32;
   
   public function F___muldi3() : void
   {
      var _loc3_:* = 0;
      var _loc8_:int = 0;
      var _loc5_:int = 0;
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc8_ = _loc1_ >>> 16;
      _loc7_ = li32(_loc3_ + 8);
      _loc6_ = int(_loc7_ >>> 16);
      _loc5_ = _loc6_ * _loc8_;
      _loc4_ = _loc3_;
      _loc4_ = _loc4_ | 4;
      _loc4_ = li32(_loc4_);
      _loc4_ = int(_loc4_ * _loc7_);
      _loc5_ = _loc5_ + _loc4_;
      _loc4_ = int(_loc3_ + 8);
      _loc4_ = _loc4_ | 4;
      _loc4_ = li32(_loc4_);
      _loc4_ = int(_loc4_ * _loc1_);
      _loc5_ = _loc5_ + _loc4_;
      _loc4_ = _loc7_ & 65535;
      _loc8_ = _loc4_ * _loc8_;
      _loc7_ = _loc1_ & 65535;
      _loc1_ = int(_loc4_ * _loc7_);
      _loc4_ = int(_loc1_ >>> 16);
      _loc8_ = _loc4_ + _loc8_;
      _loc4_ = int(_loc8_ >>> 16);
      _loc5_ = _loc5_ + _loc4_;
      _loc4_ = _loc8_ & 65535;
      _loc6_ = int(_loc6_ * _loc7_);
      _loc7_ = int(_loc4_ + _loc6_);
      _loc7_ = int(_loc7_ >>> 16);
      _loc7_ = int(_loc5_ + _loc7_);
      _loc6_ = int(_loc8_ + _loc6_);
      _loc6_ = _loc6_ << 16;
      _loc1_ = _loc1_ & 65535;
      _loc6_ = _loc6_ | _loc1_;
      eax = _loc6_;
      edx = _loc7_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
