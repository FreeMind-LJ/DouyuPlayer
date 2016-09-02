package sample.xx
{
   import avm2.intrinsics.memory.li32;
   
   public function F___fpclassifyd() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = _loc3_;
      _loc1_ = _loc1_ | 4;
      _loc7_ = li32(_loc1_);
      _loc1_ = int(_loc7_ >>> 20);
      _loc6_ = _loc1_ & 2047;
      _loc5_ = li32(_loc3_);
      if(_loc6_ != 2047)
      {
         _loc4_ = 4;
         if(_loc6_ == 0)
         {
            _loc4_ = 16;
            if((_loc7_ & 1048575 | _loc5_) != 0)
            {
               _loc4_ = 8;
            }
         }
      }
      else
      {
         _loc4_ = 1;
         if((_loc7_ & 1048575 | _loc5_) != 0)
         {
            _loc4_ = 2;
         }
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
