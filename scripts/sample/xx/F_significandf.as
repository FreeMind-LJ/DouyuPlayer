package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   
   public function F_significandf() : void
   {
      var _loc5_:* = 0;
      var _loc2_:* = NaN;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:int = 0;
      var _loc3_:* = int(ESP);
      _loc5_ = _loc3_;
      _loc3_ = int(_loc3_ - 16);
      _loc2_ = lf32(_loc5_);
      sf32(_loc2_,_loc5_ - 4);
      _loc1_ = li32(_loc5_ - 4);
      _loc8_ = _loc1_ & 2147483647;
      if(uint(_loc8_) <= 8388607)
      {
         _loc7_ = -2147483647;
         if(_loc8_ != 0)
         {
            _loc1_ = _loc1_ << 8;
            _loc7_ = -126;
            if(_loc1_ >= 1)
            {
               do
               {
                  _loc7_ = _loc7_ + -1;
                  _loc1_ = _loc1_ << 1;
               }
               while(_loc1_ > 0);
               
            }
         }
      }
      else
      {
         _loc7_ = 2147483647;
         if(uint(_loc8_) <= 2139095039)
         {
            var _loc6_:int = _loc8_ >>> 23;
            _loc7_ = _loc6_ + -127;
         }
      }
      _loc3_ = int(_loc3_ - 16);
      sf32(_loc2_,_loc3_);
      _loc6_ = 0 - _loc7_;
      var _loc4_:Number = _loc6_;
      sf32(_loc4_,_loc3_ + 4);
      ESP = _loc3_;
      F_scalbf();
      _loc3_ = int(_loc3_ + 16);
      _loc4_ = st0;
      st0 = _loc4_;
      _loc3_ = _loc5_;
      ESP = _loc3_;
   }
}
