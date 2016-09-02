package sample.xx
{
   import avm2.intrinsics.memory.li32;
   
   public function F___isinf() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = _loc3_;
      _loc1_ = _loc1_ | 4;
      _loc4_ = li32(_loc1_);
      _loc1_ = int(_loc4_ >>> 20);
      _loc1_ = _loc1_ & 2047;
      if(_loc1_ == 2047)
      {
         if(li32(_loc3_) == 0)
         {
            _loc4_ = 1;
            if((_loc4_ & 1048575) != 0)
            {
            }
            addr52:
            eax = _loc4_;
            _loc2_ = _loc3_;
            ESP = _loc2_;
            return;
         }
      }
      _loc4_ = 0;
      §§goto(addr52);
   }
}
