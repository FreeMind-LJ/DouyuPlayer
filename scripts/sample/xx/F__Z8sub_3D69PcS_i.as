package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F__Z8sub_3D69PcS_i() : void
   {
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc3_:int = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = 32;
      _loc4_ = li32(_loc1_ + 8);
      _loc5_ = li32(_loc1_ + 4);
      _loc6_ = li32(_loc1_);
      do
      {
         var _loc7_:* = int(_loc6_ - _loc3_);
         var _loc8_:* = li8(_loc7_ + 32);
         _loc8_ = _loc8_ ^ 32;
         si8(_loc8_,_loc7_ + 32);
         _loc3_ = _loc3_ + -1;
      }
      while(_loc3_ != 0);
      
      if(_loc4_ >= 1)
      {
         do
         {
            _loc7_ = li8(_loc5_);
            _loc7_ = _loc7_ ^ 32;
            si8(_loc7_,_loc5_);
            _loc5_ = int(_loc5_ + 1);
            _loc4_ = int(_loc4_ + -1);
         }
         while(_loc4_ != 0);
         
      }
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
