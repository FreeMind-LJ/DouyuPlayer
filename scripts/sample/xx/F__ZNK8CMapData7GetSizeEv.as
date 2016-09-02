package sample.xx
{
   import avm2.intrinsics.memory.li32;
   
   public function F__ZNK8CMapData7GetSizeEv() : void
   {
      var _loc1_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = li32(_loc1_);
      _loc3_ = li32(_loc3_ + 24);
      eax = _loc3_;
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
