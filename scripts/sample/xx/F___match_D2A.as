package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sxi8;
   import avm2.intrinsics.memory.si32;
   
   public function F___match_D2A() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:int = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc9_:* = li32(_loc1_);
      _loc8_ = _loc9_ + 1;
      _loc7_ = li32(_loc3_ + 4);
      while(true)
      {
         _loc4_ = li8(_loc7_);
         if(_loc4_ == 0)
         {
            si32(_loc8_,_loc1_);
            _loc4_ = 1;
            break;
         }
         _loc6_ = si8(li8(_loc8_));
         _loc5_ = int(_loc6_ + 32);
         _loc9_ = int(_loc6_ + -65);
         _loc9_ = _loc9_ & 255;
         if(uint(_loc9_) >= 26)
         {
            _loc5_ = _loc6_;
         }
         _loc9_ = _loc4_ << 24;
         _loc9_ = _loc9_ >> 24;
         _loc7_ = int(_loc7_ + 1);
         _loc8_ = _loc8_ + 1;
         _loc4_ = 0;
         if(_loc5_ == _loc9_)
         {
            continue;
         }
         break;
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
