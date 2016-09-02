package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__Z16ecp_BytesToWordsPjPK10IDataCache() : void
   {
      var _loc15_:* = 0;
      var _loc5_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:int = 0;
      var _loc1_:* = int(ESP);
      _loc15_ = _loc1_;
      _loc2_ = 0;
      _loc3_ = li32(_loc15_ + 4);
      _loc5_ = li32(_loc15_);
      do
      {
         var _loc7_:* = li32(_loc3_);
         var _loc8_:* = li32(_loc7_ + 20);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc3_,_loc1_);
         si32(_loc2_,_loc1_ + 4);
         ESP = _loc1_;
         ptr2fun[_loc8_]();
         _loc1_ = int(_loc1_ + 16);
         var _loc10_:int = eax;
         _loc7_ = li32(_loc3_);
         var _loc11_:* = li32(_loc7_ + 20);
         _loc1_ = int(_loc1_ - 16);
         _loc7_ = int(_loc2_ + 1);
         si32(_loc7_,_loc1_ + 4);
         si32(_loc3_,_loc1_);
         ESP = _loc1_;
         ptr2fun[_loc11_]();
         _loc1_ = int(_loc1_ + 16);
         var _loc12_:int = eax;
         _loc7_ = li32(_loc3_);
         var _loc13_:* = li32(_loc7_ + 20);
         _loc1_ = int(_loc1_ - 16);
         _loc7_ = int(_loc2_ + 2);
         si32(_loc7_,_loc1_ + 4);
         si32(_loc3_,_loc1_);
         ESP = _loc1_;
         ptr2fun[_loc13_]();
         _loc1_ = int(_loc1_ + 16);
         var _loc14_:int = eax;
         _loc7_ = li32(_loc3_);
         var _loc6_:* = li32(_loc7_ + 20);
         _loc1_ = int(_loc1_ - 16);
         _loc7_ = int(_loc2_ + 3);
         si32(_loc7_,_loc1_ + 4);
         si32(_loc3_,_loc1_);
         ESP = _loc1_;
         ptr2fun[_loc6_]();
         _loc7_ = int(_loc5_ + _loc2_);
         var _loc4_:* = _loc12_ << 8;
         _loc4_ = _loc4_ | _loc10_;
         var _loc9_:* = _loc14_ << 16;
         _loc4_ = _loc4_ | _loc9_;
         _loc1_ = int(_loc1_ + 16);
         _loc9_ = int(eax);
         _loc9_ = _loc9_ << 24;
         _loc4_ = _loc4_ | _loc9_;
         si32(_loc4_,_loc7_);
         _loc2_ = _loc2_ + 4;
      }
      while(_loc2_ != 32);
      
      eax = _loc5_;
      _loc1_ = _loc15_;
      ESP = _loc1_;
   }
}
