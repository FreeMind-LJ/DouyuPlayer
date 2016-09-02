package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZNSt15_List_node_base6unhookEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc4_ = li32(_loc1_ + 4);
      _loc1_ = li32(_loc1_);
      si32(_loc1_,_loc4_);
      si32(_loc4_,_loc1_ + 4);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
