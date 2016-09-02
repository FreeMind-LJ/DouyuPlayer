package sample.xx_skanji_2E_o_3A_3601F93B_2D_5B5A_2D_4D89_2D_B452_2D_CF531CF3B516
{
   import avm2.intrinsics.memory.li32;
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   
   public function F__MSKanji_mbrtowc() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc4_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 12);
      _loc10_ = li32(_loc1_);
      if(uint(_loc10_) >= 256)
      {
         ESP = _loc2_;
         F___error();
         si32(22,int(eax));
         _loc8_ = -1;
      }
      else
      {
         _loc7_ = li32(_loc3_ + 4);
         _loc6_ = 1;
         if(_loc7_ != 0)
         {
            _loc6_ = li32(_loc3_ + 8);
         }
         _loc5_ = 0;
         if(_loc7_ != 0)
         {
            _loc5_ = li32(_loc3_);
         }
         _loc4_ = int(L__2E_str);
         if(_loc7_ != 0)
         {
            _loc4_ = _loc7_;
         }
         _loc8_ = -2;
         if(_loc6_ != 0)
         {
            _loc7_ = li8(_loc4_);
            if(_loc10_ != 0)
            {
               if(_loc7_ == 0)
               {
                  ESP = _loc2_;
                  F___error();
                  si32(86,int(eax));
                  _loc8_ = -1;
               }
               else
               {
                  if(_loc5_ != 0)
                  {
                     var _loc9_:* = _loc7_ | _loc10_ << 8;
                     si32(_loc9_,_loc5_);
                  }
                  si32(0,_loc1_);
                  _loc8_ = 1;
               }
            }
            else
            {
               _loc9_ = int(_loc7_ + -129);
               if(uint(_loc9_) >= 31)
               {
                  _loc9_ = int(_loc7_ + -224);
                  if(uint(_loc9_) > 28)
                  {
                     if(_loc5_ != 0)
                     {
                        si32(_loc7_,_loc5_);
                     }
                     _loc5_ = 1;
                     if(_loc7_ == 0)
                     {
                        _loc5_ = 0;
                     }
                     _loc8_ = _loc5_ & 1;
                  }
               }
               if(uint(_loc6_) <= 1)
               {
                  si32(_loc7_,_loc1_);
                  _loc8_ = -2;
               }
               else
               {
                  _loc6_ = li8(_loc4_ + 1);
                  if(_loc6_ == 0)
                  {
                     ESP = _loc2_;
                     F___error();
                     si32(86,int(eax));
                     _loc8_ = -1;
                  }
                  else
                  {
                     _loc8_ = 2;
                     if(_loc5_ != 0)
                     {
                        _loc9_ = _loc6_ | _loc7_ << 8;
                        si32(_loc9_,_loc5_);
                        _loc8_ = 2;
                     }
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
