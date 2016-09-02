package sample.xx
{
   import avm2.intrinsics.memory.li32;
   
   public function F__ZSt20_Rb_tree_black_countPKSt18_Rb_tree_node_baseS1_() : void
   {
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:int = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 0;
      _loc7_ = li32(_loc3_);
      if(_loc7_ != 0)
      {
         _loc5_ = 1;
         if(li32(_loc7_) != _loc5_)
         {
            _loc5_ = 0;
         }
         _loc4_ = li32(_loc3_ + 4);
         _loc1_ = _loc5_ & 1;
         if(_loc7_ != _loc4_)
         {
            do
            {
               _loc7_ = li32(_loc7_ + 4);
               var _loc6_:* = li32(_loc7_);
               _loc5_ = 1;
               if(_loc6_ != _loc5_)
               {
                  _loc5_ = 0;
               }
               _loc6_ = _loc5_ & 1;
               _loc1_ = int(_loc6_ + _loc1_);
            }
            while(_loc7_ != _loc4_);
            
         }
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
