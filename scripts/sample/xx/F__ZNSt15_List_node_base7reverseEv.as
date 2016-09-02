package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZNSt15_List_node_base7reverseEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:int = ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc6_ = _loc1_;
      do
      {
         var _loc5_:* = li32(_loc6_);
         var _loc4_:* = li32(_loc6_ + 4);
         si32(_loc4_,_loc6_);
         si32(_loc5_,_loc6_ + 4);
         _loc6_ = _loc5_;
      }
      while(_loc5_ != _loc1_);
      
      ESP = _loc3_;
   }
}
