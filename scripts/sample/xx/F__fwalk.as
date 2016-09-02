package sample.xx
{
   import sample.xx_walk_2E_o_3A_9AD777F4_2D_9E2C_2D_41E7_2D_A1FD_2D_907C5E0406B5.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.sxi16;
   import avm2.intrinsics.memory.si32;
   
   public function F__fwalk() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 0;
      _loc8_ = int(___sglue);
      _loc7_ = li32(_loc3_);
      do
      {
         _loc6_ = li32(_loc8_ + 4);
         if(_loc6_ >= 1)
         {
            _loc5_ = li32(_loc8_ + 8);
            do
            {
               var _loc4_:* = si16(li16(_loc5_ + 12));
               if(_loc4_ >= 1)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc5_,_loc2_);
                  ESP = _loc2_;
                  ptr2fun[_loc7_]();
                  _loc2_ = int(_loc2_ + 16);
                  _loc4_ = int(eax);
                  _loc1_ = _loc4_ | _loc1_;
               }
               _loc5_ = int(_loc5_ + 232);
               _loc6_ = int(_loc6_ + -1);
            }
            while(_loc6_ != 0);
            
         }
         _loc8_ = li32(_loc8_);
      }
      while(_loc8_ != 0);
      
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
