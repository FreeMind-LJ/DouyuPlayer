package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZNSt15_List_node_base4swapERS_S0_() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc8_ = li32(_loc1_);
      _loc7_ = li32(_loc3_);
      _loc6_ = li32(_loc7_);
      if(_loc6_ != _loc7_)
      {
         if(_loc8_ != _loc1_)
         {
            si32(_loc8_,_loc7_);
            si32(_loc6_,_loc1_);
            var _loc4_:* = li32(_loc1_ + 4);
            si32(_loc4_,_loc7_ + 4);
            si32(li32(_loc7_ + 4),_loc1_ + 4);
            si32(_loc7_,li32(_loc7_ + 4));
            si32(_loc7_,li32(_loc7_) + 4);
            si32(_loc1_,li32(_loc1_ + 4));
            si32(_loc1_,li32(_loc1_) + 4);
         }
         else
         {
            si32(_loc6_,_loc1_);
            var _loc5_:* = li32(_loc7_ + 4);
            si32(_loc5_,_loc1_ + 4);
            si32(_loc1_,_loc5_);
            si32(_loc1_,_loc6_ + 4);
            si32(_loc7_,_loc7_ + 4);
            si32(_loc7_,_loc7_);
         }
      }
      else if(_loc8_ != _loc1_)
      {
         si32(_loc8_,_loc7_);
         _loc5_ = li32(_loc1_ + 4);
         si32(_loc5_,_loc7_ + 4);
         si32(_loc7_,_loc5_);
         si32(_loc7_,_loc8_ + 4);
         si32(_loc1_,_loc1_ + 4);
         si32(_loc1_,_loc1_);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
