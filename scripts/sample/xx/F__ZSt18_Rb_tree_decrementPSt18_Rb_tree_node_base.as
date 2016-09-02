package sample.xx
{
   import avm2.intrinsics.memory.li32;
   
   public function F__ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc6_:* = li32(_loc1_);
      if(_loc6_ == 0)
      {
         _loc6_ = li32(_loc1_ + 4);
         _loc6_ = li32(_loc6_ + 4);
         if(_loc6_ == _loc1_)
         {
            _loc1_ = li32(_loc1_ + 12);
         }
         addr82:
         eax = _loc1_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      _loc5_ = li32(_loc1_ + 8);
      if(_loc5_ != 0)
      {
         while(true)
         {
            _loc1_ = _loc5_;
            _loc5_ = li32(_loc1_ + 12);
            if(_loc5_ != 0)
            {
               continue;
            }
         }
      }
      else
      {
         do
         {
            var _loc4_:* = _loc1_;
            _loc1_ = li32(_loc4_ + 4);
            _loc6_ = li32(_loc1_ + 8);
         }
         while(_loc6_ == _loc4_);
         
      }
      §§goto(addr82);
   }
}
