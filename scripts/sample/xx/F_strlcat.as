package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx_trlcat_2E_o_3A_DC2FA01B_2D_60C6_2D_4198_2D_9E74_2D_701D429FF880.*;
   import avm2.intrinsics.memory.si8;
   
   public function F_strlcat() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:int = 0;
      var _loc7_:* = 0;
      var _loc6_:int = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 0;
      _loc10_ = li32(_loc3_ + 8);
      _loc9_ = li32(_loc3_ + 4);
      _loc8_ = li32(_loc3_);
      while(true)
      {
         _loc7_ = int(_loc10_ + _loc1_);
         if(_loc7_ != 0)
         {
            _loc6_ = _loc8_ - _loc1_;
            var _loc5_:* = li8(_loc6_);
            if(_loc5_ == 0)
            {
               _loc10_ = li8(_loc9_);
               _loc8_ = _loc9_;
               if(_loc10_ != 0)
               {
                  do
                  {
                     _loc4_ = 1;
                     if(_loc7_ != 1)
                     {
                        si8(_loc10_,_loc6_);
                        _loc4_ = _loc7_ + -1;
                        _loc6_ = _loc6_ + 1;
                     }
                     _loc5_ = int(_loc8_ + 1);
                     _loc10_ = li8(_loc8_ + 1);
                     _loc8_ = _loc5_;
                     _loc7_ = _loc4_;
                  }
                  while(_loc10_ != 0);
                  
               }
               si8(0,_loc6_);
               _loc9_ = int(_loc8_ - _loc9_);
               break;
            }
            _loc1_ = _loc1_ + -1;
            continue;
         }
         _loc2_ = int(_loc2_ - 16);
         si32(_loc9_,_loc2_);
         ESP = _loc2_;
         F_strlen();
         _loc2_ = int(_loc2_ + 16);
         _loc9_ = int(eax);
         break;
      }
      _loc5_ = int(_loc9_ - _loc1_);
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
