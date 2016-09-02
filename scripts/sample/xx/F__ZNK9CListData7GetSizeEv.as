package sample.xx
{
   import avm2.intrinsics.memory.li32;
   
   public function F__ZNK9CListData7GetSizeEv() : void
   {
      var _loc1_:* = 0;
      var _loc4_:int = 0;
      var _loc3_:* = 0;
      var _loc6_:int = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = li32(_loc1_);
      _loc4_ = _loc3_ + 4;
      _loc5_ = li32(_loc3_ + 4);
      _loc6_ = 0;
      if(_loc5_ != _loc4_)
      {
         do
         {
            _loc6_ = _loc6_ + 1;
            _loc5_ = li32(_loc5_);
         }
         while(_loc5_ != _loc4_);
         
      }
      eax = _loc6_;
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
