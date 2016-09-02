package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sxi8;
   import avm2.intrinsics.memory.si8;
   
   public function F__Z10hex_to_binPcPKci() : void
   {
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc9_:* = 0;
      var _loc3_:int = 0;
      var _loc6_:* = 0;
      var _loc10_:* = 0;
      var _loc7_:int = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = 0;
      _loc4_ = li32(_loc1_ + 8);
      _loc5_ = li32(_loc1_ + 4);
      _loc6_ = li32(_loc1_);
      if(_loc4_ >= 1)
      {
         do
         {
            _loc7_ = _loc5_ + _loc3_;
            var _loc8_:* = si8(li8(_loc7_));
            _loc9_ = _loc8_ << 4;
            _loc10_ = int(_loc9_ + -112);
            if(_loc8_ <= 96)
            {
               _loc10_ = _loc9_;
            }
            _loc9_ = si8(li8(_loc7_ + 1));
            _loc7_ = -87;
            if(_loc9_ <= 96)
            {
               _loc7_ = -48;
            }
            _loc8_ = int(_loc7_ + _loc9_);
            _loc8_ = _loc8_ | _loc10_;
            si8(_loc8_,_loc6_);
            _loc3_ = _loc3_ + 2;
            _loc6_ = int(_loc6_ + 1);
         }
         while(_loc3_ < _loc4_);
         
      }
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
