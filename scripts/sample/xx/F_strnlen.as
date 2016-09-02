package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   
   public function F_strnlen() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 0;
      _loc6_ = li32(_loc3_ + 4);
      _loc5_ = li32(_loc3_);
      while(uint(_loc1_) < uint(_loc6_))
      {
         var _loc4_:* = int(_loc5_ + _loc1_);
         _loc4_ = li8(_loc4_);
         if(_loc4_ != 0)
         {
            _loc1_ = _loc1_ + 1;
            continue;
         }
         break;
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
