package sample.xx
{
   import avm2.intrinsics.memory.li32;
   
   public function F_ilogbl() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = _loc3_;
      _loc1_ = _loc1_ | 4;
      _loc7_ = li32(_loc1_);
      _loc1_ = int(_loc7_ >>> 20);
      _loc6_ = _loc1_ & 2047;
      if(_loc6_ == 0)
      {
         _loc6_ = li32(_loc3_);
         _loc5_ = _loc7_ & 1048575;
         _loc4_ = -2147483647;
         if((_loc5_ | _loc6_) != 0)
         {
            _loc7_ = -2147483648;
            _loc4_ = 0;
            if((_loc7_ & 1048575) == 0)
            {
               _loc5_ = -2147483648;
               _loc4_ = 32;
               if(_loc6_ >= 0)
               {
                  do
                  {
                     _loc5_ = int(_loc5_ >>> 1);
                     _loc1_ = _loc5_ & _loc6_;
                     _loc4_ = _loc4_ + 1;
                  }
                  while(_loc1_ == 0);
                  
               }
            }
            else
            {
               do
               {
                  _loc7_ = int(_loc7_ >>> 1);
                  _loc1_ = _loc7_ & _loc5_;
                  _loc4_ = _loc4_ + 1;
               }
               while(_loc1_ == 0);
               
            }
            _loc4_ = -1023 - _loc4_;
         }
      }
      else
      {
         _loc4_ = 2147483647;
         if((_loc7_ & 2146435072) != 2146435072)
         {
            _loc4_ = _loc6_ + -1023;
         }
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
