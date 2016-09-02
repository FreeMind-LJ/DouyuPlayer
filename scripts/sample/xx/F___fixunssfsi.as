package sample.xx
{
   import avm2.intrinsics.memory.li32;
   
   public function F___fixunssfsi() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:int = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc7_:* = int(_loc1_ >>> 23);
      _loc6_ = _loc7_ & 255;
      _loc5_ = _loc6_ + -127;
      _loc4_ = 0;
      if(_loc5_ >= 0)
      {
         if(_loc1_ >= 0)
         {
            _loc7_ = _loc1_ & 8388607;
            _loc1_ = _loc7_ | 8388608;
            if(_loc5_ >= 24)
            {
               _loc4_ = _loc1_ << int(_loc6_ + -150);
            }
            else
            {
               _loc4_ = int(_loc1_ >>> int(150 - _loc6_));
            }
         }
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
