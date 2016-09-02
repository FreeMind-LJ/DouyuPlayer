package sample.xx
{
   import avm2.intrinsics.memory.li32;
   
   public function F__ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc6_ = li32(_loc1_ + 12);
      if(_loc6_ != 0)
      {
         while(true)
         {
            _loc5_ = _loc6_;
            _loc6_ = li32(_loc5_ + 8);
            if(_loc6_ != 0)
            {
               continue;
            }
            break;
         }
      }
      else
      {
         do
         {
            _loc5_ = _loc1_;
            _loc1_ = li32(_loc5_ + 4);
            var _loc4_:* = li32(_loc1_ + 12);
         }
         while(_loc4_ == _loc5_);
         
         _loc4_ = li32(_loc5_ + 12);
         if(_loc4_ != _loc1_)
         {
            _loc5_ = _loc1_;
         }
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
