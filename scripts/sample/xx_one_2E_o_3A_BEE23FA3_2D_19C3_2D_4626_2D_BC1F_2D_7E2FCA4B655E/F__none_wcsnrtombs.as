package sample.xx_one_2E_o_3A_BEE23FA3_2D_19C3_2D_4626_2D_BC1F_2D_7E2FCA4B655E
{
   import avm2.intrinsics.memory.li32;
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__none_wcsnrtombs() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:int = 0;
      var _loc9_:int = 0;
      var _loc4_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc10_ = li32(_loc1_);
      _loc9_ = 0;
      _loc8_ = li32(_loc3_ + 8);
      _loc7_ = li32(_loc3_);
      if(_loc7_ != 0)
      {
         _loc9_ = 0 - li32(_loc3_ + 12);
         _loc5_ = 0 - _loc8_;
         _loc8_ = 0;
         while(_loc9_ != _loc8_)
         {
            if(_loc5_ == _loc8_)
            {
               break;
            }
            _loc4_ = li32(_loc10_);
            if(uint(_loc4_) >= 256)
            {
               ESP = _loc2_;
               F___error();
               si32(86,int(eax));
               _loc10_ = -1;
            }
            else
            {
               si8(_loc4_,int(_loc7_ - _loc8_));
               var _loc6_:* = _loc4_ & 255;
               if(_loc6_ == 0)
               {
                  si32(0,_loc1_);
                  _loc10_ = int(0 - _loc8_);
               }
               else
               {
                  _loc10_ = int(_loc10_ + 4);
                  _loc8_ = int(_loc8_ + -1);
                  continue;
               }
            }
         }
         si32(_loc10_,_loc1_);
         _loc10_ = int(0 - _loc8_);
      }
      else
      {
         while(_loc8_ != 0)
         {
            _loc6_ = int(_loc10_ - _loc9_);
            _loc7_ = li32(_loc6_);
            if(_loc7_ == 0)
            {
               break;
            }
            if(uint(_loc7_) >= 256)
            {
               ESP = _loc2_;
               F___error();
               si32(86,int(eax));
               _loc10_ = -1;
            }
            else
            {
               _loc8_ = int(_loc8_ + -1);
               _loc9_ = _loc9_ + -4;
               continue;
            }
         }
         _loc6_ = int(0 - _loc9_);
         _loc10_ = _loc6_ >> 2;
      }
      eax = _loc10_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
