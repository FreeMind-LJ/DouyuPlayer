package sample.xx_nwind_2D_sjlj_2E_o_3A_AB7D2B82_2D_CFCA_2D_47B6_2D_8B3C_2D_7E9171E8B0E4
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   
   public function F__Unwind_RaiseException_Phase2() : void
   {
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc4_:int = 0;
      var _loc12_:* = 0;
      var _loc5_:* = 0;
      var _loc10_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc12_ = li32(_loc1_);
      _loc11_ = li32(_loc3_);
      while(true)
      {
         _loc10_ = 2;
         if(_loc12_ != 0)
         {
            _loc9_ = li32(_loc11_ + 16);
            _loc8_ = li32(_loc12_ + 24);
            if(_loc8_ != 0)
            {
               _loc2_ = int(_loc2_ - 32);
               si32(_loc1_,_loc2_ + 20);
               si32(_loc11_,_loc2_ + 16);
               si32(li32(_loc11_ + 4),_loc2_ + 12);
               si32(li32(_loc11_),_loc2_ + 8);
               _loc10_ = 2;
               _loc5_ = 6;
               if(_loc12_ != _loc9_)
               {
                  _loc5_ = _loc10_;
               }
               si32(_loc5_,_loc2_ + 4);
               si32(1,_loc2_);
               ESP = _loc2_;
               ptr2fun[_loc8_]();
               _loc2_ = int(_loc2_ + 32);
               _loc4_ = eax;
               if(_loc4_ != 7)
               {
                  if(_loc4_ != 8)
                  {
                     break;
                  }
               }
               else
               {
                  _loc10_ = 7;
                  break;
               }
            }
            if(_loc12_ == _loc9_)
            {
               ESP = _loc2_;
               F_abort();
            }
            var _loc7_:* = li32(_loc1_);
            _loc12_ = li32(_loc7_);
            si32(_loc12_,_loc1_);
            continue;
         }
         break;
      }
      eax = _loc10_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
