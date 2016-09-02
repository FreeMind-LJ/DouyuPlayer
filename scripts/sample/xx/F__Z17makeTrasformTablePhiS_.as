package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.li8;
   
   public function F__Z17makeTrasformTablePhiS_() : void
   {
      var _loc13_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:int = 0;
      var _loc3_:int = 0;
      var _loc10_:* = 0;
      var _loc1_:int = ESP;
      _loc13_ = _loc1_;
      _loc2_ = 256;
      _loc3_ = 0;
      _loc4_ = li32(_loc13_ + 8);
      _loc6_ = li32(_loc13_ + 4);
      _loc7_ = li32(_loc13_);
      _loc8_ = _loc3_;
      do
      {
         var _loc9_:* = int(_loc4_ - _loc2_);
         si8(_loc8_,_loc9_ + 256);
         _loc8_ = int(_loc8_ + 1);
         _loc2_ = _loc2_ + -1;
         _loc10_ = _loc3_;
      }
      while(_loc2_ != 0);
      
      do
      {
         _loc9_ = int(_loc10_ % _loc6_);
         _loc9_ = int(_loc7_ + _loc9_);
         _loc9_ = li8(_loc9_);
         var _loc11_:* = int(_loc9_ + _loc3_);
         _loc9_ = int(_loc4_ + _loc10_);
         var _loc12_:* = li8(_loc9_);
         _loc3_ = _loc11_ + _loc12_;
         _loc11_ = _loc3_ & 255;
         _loc11_ = int(_loc4_ + _loc11_);
         var _loc5_:* = li8(_loc11_);
         si8(_loc5_,_loc9_);
         si8(_loc12_,_loc11_);
         _loc10_ = int(_loc10_ + 1);
      }
      while(_loc10_ != 256);
      
      ESP = _loc13_;
   }
}
