package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__Z9BKDRHashCP10IDataCacheii() : void
   {
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc7_:int = 0;
      var _loc3_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = 0;
      _loc4_ = li32(_loc1_ + 8);
      if(_loc4_ >= 1)
      {
         _loc5_ = li32(_loc1_ + 4);
         _loc6_ = li32(_loc1_);
         _loc7_ = 0;
         do
         {
            var _loc8_:* = li32(_loc6_);
            var _loc9_:* = li32(_loc8_ + 20);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc6_,_loc2_);
            si32(_loc5_,_loc2_ + 4);
            ESP = _loc2_;
            ptr2fun[_loc9_]();
            _loc8_ = int(_loc7_ * 131);
            _loc2_ = int(_loc2_ + 16);
            var _loc10_:int = eax;
            _loc7_ = _loc10_ + _loc8_;
            _loc4_ = int(_loc4_ + -1);
            _loc5_ = int(_loc5_ + 1);
         }
         while(_loc4_ != 0);
         
         _loc3_ = _loc7_ & 2147483647;
      }
      eax = _loc3_;
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
