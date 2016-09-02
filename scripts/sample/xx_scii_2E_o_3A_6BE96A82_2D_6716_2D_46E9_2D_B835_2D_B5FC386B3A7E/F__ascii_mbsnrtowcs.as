package sample.xx_scii_2E_o_3A_6BE96A82_2D_6716_2D_46E9_2D_B835_2D_B5FC386B3A7E
{
   import avm2.intrinsics.memory.li32;
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sxi8;
   
   public function F__ascii_mbsnrtowcs() : void
   {
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc7_:int = 0;
      var _loc8_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc12_ = li32(_loc1_);
      _loc11_ = li32(_loc3_ + 8);
      _loc10_ = li32(_loc3_);
      if(_loc10_ == 0)
      {
         _loc10_ = int(0 - _loc11_);
         _loc1_ = 0;
         while(_loc10_ != _loc1_)
         {
            var _loc9_:* = int(_loc12_ - _loc1_);
            _loc8_ = li8(_loc9_);
            if(_loc8_ != 0)
            {
               _loc9_ = _loc8_ << 24;
               _loc9_ = _loc9_ >> 24;
               if(_loc9_ <= -1)
               {
                  ESP = _loc2_;
                  F___error();
                  si32(86,int(eax));
                  _loc11_ = -1;
               }
               else
               {
                  _loc1_ = int(_loc1_ + -1);
                  continue;
               }
            }
            else
            {
               break;
            }
         }
         _loc11_ = int(0 - _loc1_);
      }
      else
      {
         _loc8_ = int(0 - li32(_loc3_ + 12));
         _loc7_ = 0 - _loc11_;
         _loc6_ = 0;
         while(_loc8_ != _loc6_)
         {
            if(_loc7_ == _loc6_)
            {
               break;
            }
            _loc9_ = int(_loc12_ - _loc6_);
            _loc5_ = si8(li8(_loc9_));
            if(_loc5_ <= -1)
            {
               ESP = _loc2_;
               F___error();
               si32(86,int(eax));
               _loc11_ = -1;
            }
            else
            {
               _loc11_ = int(0 - _loc6_);
               var _loc4_:int = _loc10_ + (_loc11_ << 2);
               si32(_loc5_ & 255,_loc4_);
               if((_loc5_ & 255) == 0)
               {
                  si32(0,_loc1_);
               }
               else
               {
                  _loc6_ = _loc6_ + -1;
                  continue;
               }
            }
         }
         _loc9_ = int(_loc12_ - _loc6_);
         si32(_loc9_,_loc1_);
         _loc11_ = int(0 - _loc6_);
      }
      eax = _loc11_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
