package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   
   public function F__ZNKSs16find_last_not_ofEcj() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:int = 0;
      var _loc4_:* = 0;
      var _loc8_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc11_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__ZNKSs4sizeEv();
      _loc11_ = -1;
      _loc2_ = int(_loc2_ + 16);
      _loc10_ = eax;
      if(_loc10_ != 0)
      {
         var _loc9_:* = li32(_loc3_ + 8);
         _loc8_ = _loc9_ ^ -1;
         _loc7_ = int(0 - _loc10_);
         if(uint(_loc7_) <= uint(_loc8_))
         {
            _loc7_ = _loc8_;
         }
         _loc9_ = li32(_loc3_ + 4);
         _loc6_ = _loc7_ ^ -1;
         _loc5_ = _loc9_ & 255;
         while(true)
         {
            _loc4_ = _loc6_;
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F__ZNKSs7_M_dataEv();
            _loc2_ = int(_loc2_ + 16);
            _loc9_ = int(eax);
            _loc9_ = int(_loc9_ + _loc4_);
            _loc9_ = li8(_loc9_);
            _loc11_ = _loc4_;
            if(_loc9_ == _loc5_)
            {
               _loc6_ = int(_loc4_ + -1);
               _loc11_ = -1;
               if(_loc4_ == 0)
               {
                  break;
               }
               continue;
            }
            break;
         }
      }
      eax = _loc11_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
