package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F__Z8sub_33D8Ph() : void
   {
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc3_:int = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = 0;
      si32(_loc3_,_keybox + 28);
      si32(_loc3_,_keybox + 24);
      si32(_loc3_,_keybox + 20);
      si32(_loc3_,_keybox + 16);
      si32(_loc3_,_keybox + 12);
      si32(_loc3_,_keybox + 8);
      si32(_loc3_,_keybox + 4);
      si32(_loc3_,_keybox);
      _loc4_ = li32(_loc1_);
      do
      {
         var _loc5_:int = _keybox - _loc3_;
         var _loc6_:* = int(_loc4_ - _loc3_);
         _loc6_ = li8(_loc6_);
         si8(_loc6_,_loc5_);
         _loc3_ = _loc3_ + -1;
      }
      while(_loc3_ != -32);
      
      _loc2_ = int(_loc2_ - 16);
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      F__Z8sub_33D2Ph();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
