package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   
   public function F_strlen() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc6_:int = 0;
      var _loc4_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc9_ = _loc1_ & -4;
      _loc8_ = li32(_loc9_);
      _loc7_ = int(_loc8_ + -16843009);
      _loc8_ = _loc8_ & -2139062144;
      _loc8_ = _loc8_ ^ -2139062144;
      _loc7_ = _loc8_ & _loc7_;
      if(_loc7_ != 0)
      {
         _loc6_ = _loc9_ + 4;
         _loc5_ = 0;
         while(true)
         {
            _loc4_ = int(_loc1_ + _loc5_);
            if(uint(_loc4_) < uint(_loc6_))
            {
               _loc7_ = li8(_loc4_);
               if(_loc7_ != 0)
               {
                  _loc5_ = _loc5_ + 1;
                  continue;
               }
               break;
            }
         }
         eax = _loc5_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      _loc5_ = _loc9_ + 4;
      while(true)
      {
         _loc4_ = li32(_loc5_);
         _loc7_ = int(_loc4_ + -16843009);
         _loc8_ = _loc4_ & -2139062144;
         _loc8_ = _loc8_ ^ -2139062144;
         _loc7_ = _loc8_ & _loc7_;
         if(_loc7_ != 0)
         {
            _loc7_ = _loc4_ & 255;
            if(_loc7_ == 0)
            {
               _loc5_ = _loc5_ - _loc1_;
            }
            else
            {
               _loc7_ = li8(_loc5_ + 1);
               if(_loc7_ == 0)
               {
                  _loc7_ = int(1 - _loc1_);
                  _loc5_ = _loc7_ + _loc5_;
               }
               else
               {
                  _loc7_ = li8(_loc5_ + 2);
                  if(_loc7_ == 0)
                  {
                     _loc7_ = int(2 - _loc1_);
                     _loc5_ = _loc7_ + _loc5_;
                  }
                  else
                  {
                     _loc7_ = li8(_loc5_ + 3);
                     if(_loc7_ == 0)
                     {
                        _loc7_ = int(3 - _loc1_);
                        _loc5_ = _loc7_ + _loc5_;
                     }
                     else
                     {
                        continue;
                     }
                  }
               }
            }
            §§goto(addr203);
         }
      }
   }
}
