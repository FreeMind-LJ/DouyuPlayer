package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_and_2E_o_3A_CFA8DB8D_2D_A811_2D_4846_2D_8FF9_2D_9ED717802C2E._next;
   import avm2.intrinsics.memory.si32;
   
   public function F_srand() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_next);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
