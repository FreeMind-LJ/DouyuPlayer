package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZSt20_Rb_tree_rotate_leftPSt18_Rb_tree_node_baseRS0_() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc6_ = li32(_loc1_ + 12);
      var _loc5_:* = li32(_loc6_ + 8);
      si32(_loc5_,_loc1_ + 12);
      _loc4_ = li32(_loc6_ + 8);
      if(_loc4_ != 0)
      {
         si32(_loc1_,_loc4_ + 4);
      }
      _loc4_ = li32(_loc3_ + 4);
      _loc5_ = li32(_loc1_ + 4);
      si32(_loc5_,_loc6_ + 4);
      _loc5_ = li32(_loc4_);
      if(_loc5_ == _loc1_)
      {
         si32(_loc6_,_loc4_);
      }
      else
      {
         _loc4_ = li32(_loc1_ + 4);
         _loc5_ = li32(_loc4_ + 8);
         if(_loc5_ == _loc1_)
         {
            si32(_loc6_,_loc4_ + 8);
         }
         else
         {
            si32(_loc6_,_loc4_ + 12);
         }
      }
      si32(_loc1_,_loc6_ + 8);
      si32(_loc6_,_loc1_ + 4);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
