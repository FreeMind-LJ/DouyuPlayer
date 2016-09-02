package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_flush_2E_o_3A_8ABCF013_2D_06B9_2D_4CFF_2D_8FFC_2D_DCA559C1A23A.*;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.sxi16;
   import avm2.intrinsics.memory.si16;
   
   public function F___fflush() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      if(_loc1_ == 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_sflush_locked,_loc2_);
         ESP = _loc2_;
         F__fwalk();
         _loc2_ = int(_loc2_ + 16);
         _loc8_ = eax;
      }
      else
      {
         _loc7_ = si16(li16(_loc1_ + 12));
         var _loc6_:* = _loc7_ & 24;
         if(_loc6_ == 0)
         {
            ESP = _loc2_;
            F___error();
            si32(9,int(eax));
            _loc8_ = -1;
         }
         else
         {
            _loc8_ = 0;
            if((_loc7_ & 8) != 0)
            {
               _loc5_ = li32(_loc1_ + 16);
               _loc8_ = 0;
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
                     _loc8_ = 0;
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
                           _loc6_ = li16(_loc1_ + 12);
                           _loc6_ = _loc6_ | 64;
                           si16(_loc6_,_loc1_ + 12);
                           _loc8_ = -1;
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
         }
      }
      eax = _loc8_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
