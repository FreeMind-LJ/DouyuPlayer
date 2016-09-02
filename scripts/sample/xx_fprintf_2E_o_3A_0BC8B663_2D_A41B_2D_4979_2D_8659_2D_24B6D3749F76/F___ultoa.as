package sample.xx_fprintf_2E_o_3A_0BC8B663_2D_A41B_2D_4979_2D_8659_2D_24B6D3749F76
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.li8;
   import sample.xx.*;
   
   public function F___ultoa() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 12);
      _loc8_ = li32(_loc3_ + 8);
      _loc7_ = li32(_loc3_ + 4);
      _loc6_ = li32(_loc3_);
      if(_loc8_ != 8)
      {
         _loc1_ = li32(_loc3_ + 16);
         if(_loc8_ != 16)
         {
            if(_loc8_ == 10)
            {
               if(uint(_loc6_) <= 9)
               {
                  var _loc5_:* = int(_loc6_ + 48);
                  si8(_loc5_,_loc7_ - 1);
                  _loc7_ = int(_loc7_ + -1);
               }
               else
               {
                  if(_loc6_ <= -1)
                  {
                     _loc5_ = int(uint(_loc6_) % 10);
                     _loc5_ = _loc5_ | 48;
                     si8(_loc5_,_loc7_ - 1);
                     _loc6_ = int(uint(_loc6_) / 10);
                     _loc7_ = int(_loc7_ + -1);
                  }
                  do
                  {
                     _loc5_ = int(_loc6_ % 10);
                     _loc5_ = int(_loc5_ + 48);
                     si8(_loc5_,_loc7_ - 1);
                     _loc7_ = int(_loc7_ + -1);
                     var _loc4_:int = _loc6_ / 10;
                     _loc5_ = int(_loc6_ + 9);
                     _loc6_ = _loc4_;
                  }
                  while(uint(_loc5_) > 18);
                  
               }
            }
            else
            {
               ESP = _loc2_;
               F_abort();
            }
         }
         else
         {
            while(true)
            {
               _loc5_ = _loc6_ & 15;
               _loc5_ = int(_loc1_ + _loc5_);
               _loc5_ = li8(_loc5_);
               si8(_loc5_,_loc7_ - 1);
               _loc7_ = int(_loc7_ + -1);
               _loc6_ = int(_loc6_ >>> 4);
               if(_loc6_ != 0)
               {
                  continue;
               }
               break;
            }
         }
      }
      else
      {
         do
         {
            _loc5_ = _loc6_ & 7;
            _loc8_ = _loc5_ | 48;
            si8(_loc8_,_loc7_ - 1);
            _loc7_ = int(_loc7_ + -1);
            _loc6_ = int(_loc6_ >>> 3);
         }
         while(_loc6_ != 0);
         
         if(_loc1_ != 0)
         {
            _loc5_ = _loc8_ & 255;
            if(_loc5_ != 48)
            {
               si8(48,_loc7_ - 1);
               _loc7_ = int(_loc7_ + -1);
            }
         }
      }
      eax = _loc7_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
