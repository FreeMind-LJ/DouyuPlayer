package sample.xx_uc_2E_o_3A_9BEB9C05_2D_DB15_2D_40C0_2D_ABEB_2D_0D0E9808D49E
{
   import avm2.intrinsics.memory.li32;
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__EUC_wcrtomb() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 8);
      _loc1_ = li32(_loc1_ + 8);
      if(_loc1_ != 0)
      {
         ESP = _loc2_;
         F___error();
         si32(22,int(eax));
         _loc9_ = -1;
      }
      else
      {
         _loc8_ = li32(_loc3_);
         _loc9_ = 1;
         if(_loc8_ != 0)
         {
            _loc1_ = li32(_loc3_ + 4);
            var _loc7_:* = li32(__CurrentRuneLocale);
            _loc6_ = li32(_loc7_ + 3148);
            _loc7_ = li32(_loc6_ + 32);
            _loc9_ = _loc7_ & _loc1_;
            _loc5_ = _loc9_ ^ _loc1_;
            if(li32(_loc6_ + 20) != _loc9_)
            {
               if(li32(_loc6_ + 16) == _loc9_)
               {
                  _loc4_ = li32(_loc6_);
                  _loc9_ = _loc4_;
                  addr223:
                  if(_loc4_ >= 1)
                  {
                     _loc6_ = int((_loc4_ << 3) + -8);
                     do
                     {
                        _loc1_ = _loc5_ >> _loc6_;
                        si8(_loc1_,_loc8_);
                        _loc6_ = int(_loc6_ + -8);
                        _loc8_ = int(_loc8_ + 1);
                        _loc4_ = int(_loc4_ + -1);
                     }
                     while(_loc4_ != 0);
                     
                  }
               }
               else if(li32(_loc6_ + 24) == _loc9_)
               {
                  _loc9_ = li32(_loc6_ + 8);
                  si8(-114,_loc8_);
                  _loc5_ = _loc5_ | -2139062144;
                  _loc8_ = int(_loc8_ + 1);
                  _loc4_ = int(_loc9_ + -1);
                  §§goto(addr223);
               }
               else if(li32(_loc6_ + 28) == _loc9_)
               {
                  _loc9_ = li32(_loc6_ + 12);
                  si8(-113,_loc8_);
                  _loc5_ = _loc5_ | -2139062144;
                  _loc8_ = int(_loc8_ + 1);
                  _loc4_ = int(_loc9_ + -1);
                  §§goto(addr223);
               }
            }
            _loc9_ = li32(_loc6_ + 4);
            if(_loc9_ >= 1)
            {
               _loc4_ = int((_loc9_ << 3) + -8);
               _loc6_ = 0;
               while(true)
               {
                  _loc1_ = int(_loc8_ - _loc6_);
                  _loc7_ = _loc5_ >> _loc4_;
                  _loc7_ = _loc7_ | 128;
                  si8(_loc7_,_loc1_);
                  _loc6_ = int(_loc6_ + -1);
                  _loc1_ = int(_loc9_ + _loc6_);
                  _loc4_ = int(_loc4_ + -8);
                  if(_loc1_ != 0)
                  {
                     continue;
                  }
               }
            }
         }
      }
      eax = _loc9_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
