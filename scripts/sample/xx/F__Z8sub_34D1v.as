package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   
   public function F__Z8sub_34D1v() : void
   {
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = 0;
      _loc4_ = li32(_block_len);
      _loc5_ = 1;
      _loc6_ = _loc3_;
      if(_loc4_ >= 1)
      {
         do
         {
            var _loc7_:* = 1 << _loc3_;
            var _loc8_:* = int(_keybox + _loc3_);
            _loc8_ = li8(_loc8_);
            _loc7_ = _loc8_ & _loc7_;
            _loc7_ = int(_loc7_ >>> _loc3_);
            _loc6_ = int(_loc7_ + _loc6_);
            _loc7_ = int(_loc5_ + 1);
            _loc3_ = _loc5_ & 255;
            _loc5_ = _loc7_;
         }
         while(_loc3_ < _loc4_);
         
      }
      eax = _loc6_;
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
