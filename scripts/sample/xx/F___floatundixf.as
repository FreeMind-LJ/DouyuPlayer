package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.lf64;
   
   public function F___floatundixf() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:int = 0;
      var _loc5_:* = NaN;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_ + 4);
      _loc9_ = li32(_loc3_);
      _loc8_ = _loc9_ | _loc1_;
      _loc5_ = 0;
      if(_loc8_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc9_,_loc2_);
         si32(_loc1_,_loc2_ + 4);
         var _loc7_:* = _loc1_ | int(_loc1_ >>> 1);
         _loc7_ = _loc7_ | int(_loc7_ >>> 2);
         _loc8_ = _loc7_ | int(_loc7_ >>> 4);
         _loc8_ = _loc8_ | int(_loc8_ >>> 8);
         _loc8_ = _loc8_ | int(_loc8_ >>> 16);
         _loc8_ = _loc8_ ^ -1;
         _loc7_ = int(_loc8_ >>> 1);
         _loc7_ = int(_loc8_ - (_loc7_ & 1431655765));
         _loc7_ = int(_loc7_ >>> 2);
         _loc8_ = int((_loc7_ & 858993459) + (_loc7_ & 858993459));
         _loc8_ = int(_loc8_ + (int(_loc8_ >>> 4)));
         _loc8_ = _loc8_ & 252645135;
         _loc8_ = int(_loc8_ * 16843009);
         _loc6_ = _loc8_ >>> 24;
         if(_loc1_ == 0)
         {
            _loc8_ = _loc9_ | int(_loc9_ >>> 1);
            _loc8_ = _loc8_ | int(_loc8_ >>> 2);
            _loc8_ = _loc8_ | int(_loc8_ >>> 4);
            _loc8_ = _loc8_ | int(_loc8_ >>> 8);
            _loc8_ = _loc8_ | int(_loc8_ >>> 16);
            _loc8_ = _loc8_ ^ -1;
            _loc7_ = int(_loc8_ >>> 1);
            _loc7_ = int(_loc8_ - (_loc7_ & 1431655765));
            _loc7_ = int(_loc7_ >>> 2);
            _loc7_ = int((_loc7_ & 858993459) + (_loc7_ & 858993459));
            _loc8_ = int(_loc7_ + (int(_loc7_ >>> 4)));
            _loc8_ = _loc8_ & 252645135;
            _loc8_ = int(_loc8_ * 16843009);
            _loc8_ = int(_loc8_ >>> 24);
            _loc6_ = _loc8_ + 32;
         }
         si32(_loc6_,_loc2_ + 8);
         ESP = _loc2_;
         F___ashldi3();
         _loc8_ = int(_loc3_ - 8);
         var _loc4_:* = _loc8_ | 4;
         _loc2_ = int(_loc2_ + 16);
         _loc7_ = int(eax);
         _loc8_ = int(edx);
         si32(_loc8_,_loc4_);
         si32(_loc7_,_loc3_ - 8);
         _loc5_ = lf64(_loc3_ - 8);
      }
      st0 = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
