package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   
   public function F_strncmp() : void
   {
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 0;
      _loc7_ = li32(_loc3_ + 8);
      _loc6_ = li32(_loc3_ + 4);
      _loc5_ = li32(_loc3_);
      if(_loc7_ != 0)
      {
         while(true)
         {
            _loc1_ = li8(_loc6_);
            _loc4_ = li8(_loc5_);
            if(_loc4_ != _loc1_)
            {
               _loc1_ = int(_loc4_ - _loc1_);
               break;
            }
            _loc1_ = 0;
            if(_loc4_ != 0)
            {
               _loc6_ = int(_loc6_ + 1);
               _loc5_ = int(_loc5_ + 1);
               _loc7_ = int(_loc7_ + -1);
               _loc1_ = 0;
               if(_loc7_ == 0)
               {
                  break;
               }
               continue;
            }
            break;
         }
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
