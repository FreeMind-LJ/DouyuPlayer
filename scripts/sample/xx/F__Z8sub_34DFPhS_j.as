package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F__Z8sub_34DFPhS_j() : void
   {
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = li32(_loc1_ + 8);
      _loc4_ = li32(_loc1_ + 4);
      _loc5_ = li32(_loc1_);
      if(_loc3_ != 0)
      {
         do
         {
            var _loc6_:* = li8(_loc4_);
            si8(_loc6_,_loc5_);
            _loc4_ = int(_loc4_ + 1);
            _loc5_ = int(_loc5_ + 1);
            _loc3_ = int(_loc3_ + -1);
         }
         while(_loc3_ != 0);
         
      }
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
