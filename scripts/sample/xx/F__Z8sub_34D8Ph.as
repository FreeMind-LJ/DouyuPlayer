package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F__Z8sub_34D8Ph() : void
   {
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc3_:int = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = 0;
      _loc4_ = li32(_block_len);
      _loc5_ = li32(_loc1_);
      if(_loc4_ >= 1)
      {
         do
         {
            var _loc6_:int = _msgbox + _loc3_;
            var _loc7_:* = li8(_loc6_);
            _loc7_ = int(_loc5_ + _loc7_);
            _loc7_ = li8(_loc7_);
            si8(_loc7_,_loc6_);
            _loc3_ = _loc3_ + 1;
         }
         while(_loc3_ < _loc4_);
         
      }
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
