package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   
   public function F__ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv() : void
   {
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc8_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = 0;
      si32(_loc1_,_loc3_ - 16);
      _loc9_ = int(_loc3_ - 16);
      _loc8_ = _loc9_ | 4;
      si32(_loc1_,_loc8_);
      si32(16,_loc3_ - 8);
      si32(_loc1_,_loc3_ - 4);
      _loc7_ = li32(_loc3_);
      _loc6_ = li32(_loc7_);
      _loc5_ = li32(_loc6_ + 24);
      _loc4_ = li32(_loc3_ + 8);
      _loc6_ = li32(_loc4_);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc9_,_loc2_ + 12);
      si32(_loc6_,_loc2_ + 8);
      _loc9_ = li32(_loc3_ + 4);
      si32(_loc9_,_loc2_ + 4);
      si32(_loc7_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc5_]();
      _loc2_ = int(_loc2_ + 16);
      _loc7_ = li32(_loc8_);
      _loc7_ = _loc7_ & 6;
      if(_loc7_ == 6)
      {
         _loc7_ = li32(_loc3_ - 16);
         si32(_loc7_,_loc4_);
         _loc1_ = 1;
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
