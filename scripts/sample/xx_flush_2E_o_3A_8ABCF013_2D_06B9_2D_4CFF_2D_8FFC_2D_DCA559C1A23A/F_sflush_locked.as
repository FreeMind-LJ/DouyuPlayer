package sample.xx_flush_2E_o_3A_8ABCF013_2D_06B9_2D_4CFF_2D_8FFC_2D_DCA559C1A23A
{
   import avm2.intrinsics.memory.li32;
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.sxi16;
   import avm2.intrinsics.memory.si16;
   
   public function F_sflush_locked() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc8_:* = li32(___isthreaded);
      if(_loc8_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F__flockfile();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc7_ = si16(li16(_loc1_ + 12));
      _loc8_ = _loc7_ & 8;
      _loc6_ = 0;
      if(_loc8_ != 0)
      {
         _loc5_ = li32(_loc1_ + 16);
         _loc6_ = 0;
         if(_loc5_ != 0)
         {
            _loc4_ = li32(_loc1_);
            si32(_loc5_,_loc1_);
            _loc7_ = 0;
            if((_loc7_ & 3) == 0)
            {
               _loc7_ = li32(_loc1_ + 20);
            }
            _loc4_ = int(_loc4_ - _loc5_);
            si32(_loc7_,_loc1_ + 8);
            while(true)
            {
               _loc6_ = 0;
               if(_loc4_ > 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc4_,_loc2_ + 8);
                  si32(_loc5_,_loc2_ + 4);
                  si32(_loc1_,_loc2_);
                  ESP = _loc2_;
                  F__swrite();
                  _loc2_ = int(_loc2_ + 16);
                  _loc7_ = int(eax);
                  if(_loc7_ <= 0)
                  {
                     _loc8_ = li16(_loc1_ + 12);
                     _loc8_ = _loc8_ | 64;
                     si16(_loc8_,_loc1_ + 12);
                     _loc6_ = -1;
                     break;
                  }
                  _loc5_ = int(_loc5_ + _loc7_);
                  _loc4_ = int(_loc4_ - _loc7_);
                  continue;
               }
               break;
            }
         }
      }
      _loc8_ = li32(___isthreaded);
      if(_loc8_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F__funlockfile();
         _loc2_ = int(_loc2_ + 16);
      }
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
