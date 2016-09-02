package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__Z16ecp_WordsToBytesP10IDataCachePKj() : void
   {
      var _loc2_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:int = 0;
      var _loc3_:* = int(ESP);
      _loc2_ = _loc3_;
      _loc4_ = 0;
      _loc5_ = li32(_loc2_ + 4);
      _loc6_ = li32(_loc2_);
      do
      {
         var _loc7_:* = _loc4_ << 2;
         _loc7_ = int(_loc5_ + _loc7_);
         var _loc8_:* = li32(_loc7_);
         _loc7_ = _loc8_ & 255;
         var _loc9_:* = li32(_loc6_);
         var _loc10_:* = li32(_loc9_ + 12);
         _loc3_ = int(_loc3_ - 16);
         si32(_loc7_,_loc3_ + 4);
         si32(_loc6_,_loc3_);
         ESP = _loc3_;
         ptr2fun[_loc10_]();
         _loc7_ = int(_loc8_ >>> 8);
         _loc7_ = _loc7_ & 255;
         _loc3_ = int(_loc3_ + 16);
         _loc9_ = li32(_loc6_);
         var _loc11_:* = li32(_loc9_ + 12);
         _loc3_ = int(_loc3_ - 16);
         si32(_loc7_,_loc3_ + 4);
         si32(_loc6_,_loc3_);
         ESP = _loc3_;
         ptr2fun[_loc11_]();
         _loc7_ = int(_loc8_ >>> 16);
         _loc9_ = _loc7_ & 255;
         _loc3_ = int(_loc3_ + 16);
         _loc7_ = li32(_loc6_);
         var _loc12_:* = li32(_loc7_ + 12);
         _loc3_ = int(_loc3_ - 16);
         si32(_loc9_,_loc3_ + 4);
         si32(_loc6_,_loc3_);
         ESP = _loc3_;
         ptr2fun[_loc12_]();
         _loc7_ = int(_loc8_ >>> 24);
         _loc3_ = int(_loc3_ + 16);
         _loc9_ = li32(_loc6_);
         var _loc1_:* = li32(_loc9_ + 12);
         _loc3_ = int(_loc3_ - 16);
         si32(_loc7_,_loc3_ + 4);
         si32(_loc6_,_loc3_);
         ESP = _loc3_;
         ptr2fun[_loc1_]();
         _loc3_ = int(_loc3_ + 16);
         _loc4_ = _loc4_ + 1;
      }
      while(_loc4_ != 8);
      
      eax = _loc6_;
      _loc3_ = _loc2_;
      ESP = _loc3_;
   }
}
