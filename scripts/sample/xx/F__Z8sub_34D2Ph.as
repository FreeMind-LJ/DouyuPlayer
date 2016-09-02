package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F__Z8sub_34D2Ph() : void
   {
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc6_:int = 0;
      var _loc3_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = li32(_block_len);
      _loc4_ = _loc3_ >> 1;
      if(_loc4_ >= 1)
      {
         _loc5_ = li32(_loc1_);
         _loc6_ = _loc4_ + -1;
         _loc4_ = _loc5_;
         while(true)
         {
            var _loc7_:* = li8(_loc4_);
            var _loc8_:* = int(_loc7_ % _loc3_);
            _loc8_ = int(_loc5_ + _loc8_);
            _loc8_ = li8(_loc8_);
            si8(_loc8_,_loc4_);
            var _loc9_:* = li32(_block_len);
            _loc8_ = int(_loc8_ % _loc9_);
            _loc8_ = int(_loc5_ + _loc8_);
            si8(_loc7_,_loc8_);
            if(_loc6_ != 0)
            {
               _loc4_ = int(_loc4_ + 1);
               _loc6_ = _loc6_ + -1;
               _loc3_ = li32(_block_len);
               continue;
            }
            break;
         }
      }
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
