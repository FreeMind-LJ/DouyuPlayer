package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   
   public function F__ZNKSs5rfindEcj() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:int = 0;
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:int = 0;
      var _loc10_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__ZNKSs4sizeEv();
      _loc10_ = -1;
      _loc2_ = int(_loc2_ + 16);
      _loc9_ = eax;
      if(_loc9_ != 0)
      {
         var _loc8_:* = li32(_loc3_ + 8);
         _loc7_ = _loc8_ ^ -1;
         _loc6_ = int(0 - _loc9_);
         if(uint(_loc6_) <= uint(_loc7_))
         {
            _loc6_ = _loc7_;
         }
         _loc8_ = li32(_loc3_ + 4);
         _loc5_ = 0 - _loc6_;
         _loc4_ = _loc8_ & 255;
         while(true)
         {
            _loc10_ = -1;
            if(_loc5_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F__ZNKSs7_M_dataEv();
               _loc2_ = int(_loc2_ + 16);
               _loc8_ = int(eax);
               _loc8_ = int(_loc8_ + _loc5_);
               _loc5_ = _loc5_ + -1;
               _loc10_ = _loc5_;
               if(li8(_loc8_ - 1) != _loc4_)
               {
                  continue;
               }
               break;
            }
            break;
         }
      }
      eax = _loc10_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
