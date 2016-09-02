package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.lf64;
   
   public function F___floatunsidf() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = NaN;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc4_ = 0;
      _loc1_ = li32(_loc3_);
      if(_loc1_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(0,_loc2_ + 4);
         si32(_loc1_,_loc2_);
         var _loc6_:* = _loc1_ | int(_loc1_ >>> 1);
         _loc6_ = _loc6_ | int(_loc6_ >>> 2);
         var _loc7_:* = _loc6_ | int(_loc6_ >>> 4);
         _loc7_ = _loc7_ | int(_loc7_ >>> 8);
         _loc7_ = _loc7_ | int(_loc7_ >>> 16);
         _loc7_ = _loc7_ ^ -1;
         _loc6_ = int(_loc7_ >>> 1);
         _loc6_ = int(_loc7_ - (_loc6_ & 1431655765));
         _loc6_ = int(_loc6_ >>> 2);
         _loc7_ = int((_loc6_ & 858993459) + (_loc6_ & 858993459));
         _loc7_ = int(_loc7_ + (int(_loc7_ >>> 4)));
         _loc7_ = _loc7_ & 252645135;
         _loc7_ = int(_loc7_ * 16843009);
         _loc7_ = int(_loc7_ >>> 24);
         _loc6_ = int(52 - (int(31 - _loc7_)));
         si32(_loc6_,_loc2_ + 8);
         _loc7_ = int(1054 - _loc7_);
         ESP = _loc2_;
         F___ashldi3();
         _loc2_ = int(_loc2_ + 16);
         var _loc5_:int = edx;
         si32(int(eax),_loc3_ - 8);
         _loc6_ = _loc5_ ^ 1048576;
         _loc6_ = int(_loc3_ - 8);
         si32(int(_loc6_ + (_loc7_ << 20)),_loc6_ | 4);
         _loc4_ = lf64(_loc3_ - 8);
      }
      st0 = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
