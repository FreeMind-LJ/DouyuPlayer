package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN5C4KeyD2Ev() : void
   {
      var _loc16_:* = 0;
      var _loc2_:* = 0;
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc11_:* = 0;
      var _loc13_:* = 0;
      var _loc15_:* = 0;
      var _loc4_:* = 0;
      var _loc1_:* = int(ESP);
      _loc16_ = _loc1_;
      _loc2_ = li32(_loc16_);
      _loc3_ = li32(_loc2_);
      if(_loc3_ != 0)
      {
         var _loc5_:* = li32(_loc3_);
         var _loc7_:* = li32(_loc5_ + 4);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc3_,_loc1_);
         ESP = _loc1_;
         ptr2fun[_loc7_]();
         _loc1_ = int(_loc1_ + 16);
         si32(0,_loc2_);
      }
      _loc9_ = li32(_loc2_ + 4);
      if(_loc9_ != 0)
      {
         _loc5_ = li32(_loc9_);
         var _loc12_:* = li32(_loc5_ + 4);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc9_,_loc1_);
         ESP = _loc1_;
         ptr2fun[_loc12_]();
         _loc1_ = int(_loc1_ + 16);
         si32(0,_loc2_ + 4);
      }
      _loc11_ = li32(_loc2_ + 8);
      if(_loc11_ != 0)
      {
         _loc5_ = li32(_loc11_);
         var _loc14_:* = li32(_loc5_ + 4);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc11_,_loc1_);
         ESP = _loc1_;
         ptr2fun[_loc14_]();
         _loc1_ = int(_loc1_ + 16);
         si32(0,_loc2_ + 8);
      }
      _loc13_ = li32(_loc2_ + 12);
      if(_loc13_ != 0)
      {
         _loc5_ = li32(_loc13_);
         var _loc6_:* = li32(_loc5_ + 4);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc13_,_loc1_);
         ESP = _loc1_;
         ptr2fun[_loc6_]();
         _loc1_ = int(_loc1_ + 16);
         si32(0,_loc2_ + 12);
      }
      _loc15_ = li32(_loc2_ + 16);
      if(_loc15_ != 0)
      {
         _loc5_ = li32(_loc15_);
         var _loc10_:* = li32(_loc5_ + 4);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc15_,_loc1_);
         ESP = _loc1_;
         ptr2fun[_loc10_]();
         _loc1_ = int(_loc1_ + 16);
         si32(0,_loc2_ + 16);
      }
      _loc4_ = li32(_loc2_ + 20);
      if(_loc4_ != 0)
      {
         _loc5_ = li32(_loc4_);
         var _loc8_:* = li32(_loc5_ + 4);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc4_,_loc1_);
         ESP = _loc1_;
         ptr2fun[_loc8_]();
         _loc1_ = int(_loc1_ + 16);
         si32(0,_loc2_ + 20);
      }
      _loc1_ = _loc16_;
      ESP = _loc1_;
   }
}
