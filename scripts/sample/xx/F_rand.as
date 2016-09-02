package sample.xx
{
   import sample.xx_and_2E_o_3A_CFA8DB8D_2D_A811_2D_4846_2D_8FF9_2D_9ED717802C2E._next;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_rand() : void
   {
      var _loc3_:* = 0;
      var _loc4_:int = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_next);
      if(_loc1_ == 0)
      {
         _loc1_ = 123459876;
         si32(_loc1_,_next);
      }
      var _loc6_:* = int(uint(_loc1_) / 127773);
      _loc6_ = int(_loc6_ * -2836);
      var _loc5_:int = uint(_loc1_) % 127773;
      _loc5_ = _loc5_ * 16807;
      _loc4_ = _loc5_ + _loc6_;
      _loc1_ = int(_loc4_ + 2147483647);
      if(_loc4_ >= 0)
      {
         _loc1_ = _loc4_;
      }
      si32(_loc1_,_next);
      _loc6_ = _loc1_ & 2147483647;
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
