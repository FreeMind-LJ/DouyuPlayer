package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   import sample.xx_ix_grouping_2E_o_3A_096D33C0_2D_5258_2D_4FEE_2D_9697_2D_912741D3F0B9.*;
   import avm2.intrinsics.memory.sxi8;
   
   public function F___fix_locale_grouping_str() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = int(_nogrouping);
      _loc9_ = li32(_loc3_);
      if(_loc9_ != 0)
      {
         _loc8_ = li8(_loc9_);
         _loc1_ = int(_nogrouping);
         _loc7_ = _loc9_;
         _loc6_ = _loc9_;
         if(_loc8_ != 0)
         {
            while(true)
            {
               _loc4_ = _loc8_ & 255;
               if(_loc4_ != 59)
               {
                  if(_loc4_ != 45)
                  {
                     if(_loc4_ == 0)
                     {
                        si8(0,_loc6_);
                        _loc1_ = _loc9_;
                        break;
                     }
                     var _loc5_:* = _loc8_ << 24;
                     _loc1_ = int(_nogrouping);
                     if(_loc5_ >> 24 >= 0)
                     {
                     }
                     break;
                  }
                  _loc5_ = li8(_loc7_ + 1);
                  if(_loc5_ == 49)
                  {
                     _loc7_ = int(_loc7_ + 1);
                     si8(127,_loc6_);
                     _loc6_ = int(_loc6_ + 1);
                     continue;
                  }
                  _loc5_ = _loc4_ << 2;
                  _loc5_ = int(__DefaultRuneLocale + _loc5_);
                  _loc5_ = li8(_loc5_ + 53);
                  _loc5_ = _loc5_ & 4;
                  _loc1_ = int(_nogrouping);
                  if(_loc5_ != 0)
                  {
                     _loc1_ = int(_loc8_ + -48);
                     _loc8_ = si8(li8(_loc7_ + 1));
                     if(_loc8_ >= 0)
                     {
                        _loc5_ = _loc8_ & 255;
                        _loc5_ = int(__DefaultRuneLocale + (_loc5_ << 2));
                        _loc5_ = li8(_loc5_ + 53);
                        _loc5_ = _loc5_ & 4;
                        if(_loc5_ != 0)
                        {
                           _loc7_ = int(_loc7_ + 1);
                           _loc5_ = int(_loc1_ * 10);
                           _loc5_ = int(_loc5_ + _loc8_);
                           _loc1_ = int(_loc5_ + -48);
                        }
                     }
                     si8(_loc1_,_loc6_);
                     _loc5_ = _loc1_ & 255;
                     if(_loc5_ == 0)
                     {
                        _loc1_ = int(_nogrouping);
                        if(_loc6_ != _loc9_)
                        {
                           _loc1_ = _loc9_;
                        }
                        break;
                     }
                     _loc6_ = int(_loc6_ + 1);
                     continue;
                  }
                  break;
               }
            }
         }
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
