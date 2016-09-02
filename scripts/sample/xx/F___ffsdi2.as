package sample.xx
{
   import avm2.intrinsics.memory.li32;
   
   public function F___ffsdi2() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      if(_loc1_ == 0)
      {
         _loc1_ = li32(_loc3_ + 4);
         _loc6_ = 0;
         if(_loc1_ != 0)
         {
            var _loc4_:* = _loc1_ ^ -1;
            var _loc5_:* = _loc4_ & int(_loc1_ + -1);
            _loc4_ = int(_loc5_ >>> 1);
            _loc4_ = int(_loc5_ - (_loc4_ & 1431655765));
            _loc4_ = int(_loc4_ >>> 2);
            _loc4_ = int((_loc4_ & 858993459) + (_loc4_ & 858993459));
            _loc5_ = int(_loc4_ + (int(_loc4_ >>> 4)));
            _loc5_ = _loc5_ & 252645135;
            _loc5_ = int(_loc5_ * 16843009);
            _loc5_ = int(_loc5_ >>> 24);
            _loc6_ = _loc5_ + 33;
         }
      }
      else
      {
         _loc5_ = _loc1_ ^ -1;
         _loc5_ = _loc5_ & int(_loc1_ + -1);
         _loc4_ = int(_loc5_ >>> 1);
         _loc4_ = int(_loc5_ - (_loc4_ & 1431655765));
         _loc4_ = int(_loc4_ >>> 2);
         _loc5_ = int((_loc4_ & 858993459) + (_loc4_ & 858993459));
         _loc5_ = int(_loc5_ + (int(_loc5_ >>> 4)));
         _loc5_ = _loc5_ & 252645135;
         _loc5_ = int(_loc5_ * 16843009);
         _loc5_ = int(_loc5_ >>> 24);
         _loc6_ = _loc5_ + 1;
      }
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
