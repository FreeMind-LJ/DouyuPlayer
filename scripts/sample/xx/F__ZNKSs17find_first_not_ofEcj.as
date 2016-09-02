package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   
   public function F__ZNKSs17find_first_not_ofEcj() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 8);
      _loc7_ = li32(_loc3_ + 4);
      _loc6_ = li32(_loc3_);
      _loc5_ = _loc7_ & 255;
      while(true)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc6_,_loc2_);
         ESP = _loc2_;
         F__ZNKSs4sizeEv();
         _loc4_ = -1;
         _loc2_ = int(_loc2_ + 16);
         _loc7_ = int(eax);
         if(uint(_loc7_) > uint(_loc1_))
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc6_,_loc2_);
            ESP = _loc2_;
            F__ZNKSs7_M_dataEv();
            _loc2_ = int(_loc2_ + 16);
            _loc7_ = int(eax);
            _loc7_ = int(_loc7_ + _loc1_);
            _loc4_ = _loc1_;
            if(li8(_loc7_) == _loc5_)
            {
               _loc1_ = int(_loc1_ + 1);
               continue;
            }
            break;
         }
         break;
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
