package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN5C4Key13SetVerifyDataEPKh() : void
   {
      var _loc1_:* = 0;
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = li32(_loc1_);
      _loc3_ = li32(_loc3_ + 20);
      var _loc4_:* = li32(_loc3_);
      _loc5_ = li32(_loc4_ + 8);
      _loc2_ = int(_loc2_ - 16);
      si32(36,_loc2_ + 8);
      _loc4_ = li32(_loc1_ + 4);
      si32(_loc4_,_loc2_ + 4);
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc5_]();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
