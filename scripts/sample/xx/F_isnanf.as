package sample.xx
{
   import avm2.intrinsics.memory.li32;
   
   public function F_isnanf() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc6_ = int(_loc1_ >>> 23);
      _loc6_ = _loc6_ & 255;
      _loc5_ = 1;
      _loc4_ = _loc5_;
      if(_loc6_ == 255)
      {
         _loc4_ = 0;
      }
      _loc6_ = _loc1_ & 8388607;
      if(_loc6_ != 0)
      {
         _loc5_ = 0;
      }
      _loc6_ = _loc4_ | _loc5_;
      _loc6_ = _loc6_ & 1;
      _loc6_ = _loc6_ ^ 1;
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
