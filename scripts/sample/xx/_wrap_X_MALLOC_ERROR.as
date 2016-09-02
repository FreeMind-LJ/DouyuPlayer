package sample.xx
{
   public function _wrap_X_MALLOC_ERROR() : int
   {
      var _loc4_:* = undefined;
      var _loc1_:* = 0;
      var _loc3_:int = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = 3;
      _loc4_ = _loc3_;
      _loc2_ = _loc1_;
      ESP = _loc2_;
      return _loc4_;
   }
}
