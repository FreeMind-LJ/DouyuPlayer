package sample.xx_b18030_2E_o_3A_899691D9_2D_34F6_2D_41FF_2D_825E_2D_1C8F82677FB1
{
   import avm2.intrinsics.memory.li32;
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__GB18030_wcrtomb() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 8);
      _loc1_ = li32(_loc1_);
      if(_loc1_ != 0)
      {
         ESP = _loc2_;
         F___error();
         si32(22,int(eax));
         _loc6_ = -1;
      }
      else
      {
         _loc5_ = li32(_loc3_);
         _loc6_ = 1;
         if(_loc5_ != 0)
         {
            _loc6_ = li32(_loc3_ + 4);
            if(_loc6_ >= 0)
            {
               if((_loc6_ & 2130706432) != 0)
               {
                  _loc4_ = int(_loc6_ >>> 24) | 128;
                  if(uint(int(_loc4_ + -129)) <= 125)
                  {
                     si8(_loc4_,_loc5_);
                     _loc4_ = int(_loc6_ >>> 16);
                     if(uint(int((_loc4_ & 255) + -48)) <= 9)
                     {
                        si8(_loc4_,_loc5_ + 1);
                        _loc4_ = int(_loc6_ >>> 8);
                        if(uint(int((_loc4_ & 255) + -129)) <= 125)
                        {
                           si8(_loc4_,_loc5_ + 2);
                           if(uint(int((_loc6_ & 255) + -48)) <= 9)
                           {
                              si8(_loc6_,_loc5_ + 3);
                              _loc6_ = 4;
                           }
                        }
                     }
                  }
               }
               else if((_loc6_ & 16711680) == 0)
               {
                  if((_loc6_ & 65280) != 0)
                  {
                     _loc4_ = int(_loc6_ >>> 8);
                     if(uint(int((_loc4_ & 255) + -129)) <= 125)
                     {
                        si8(_loc4_,_loc5_);
                        _loc4_ = _loc6_ & 255;
                        if(uint(_loc4_) >= 64)
                        {
                           if((_loc4_ | 128) != 255)
                           {
                              si8(_loc6_,_loc5_ + 1);
                              _loc6_ = 2;
                           }
                        }
                     }
                  }
                  else if(_loc6_ <= 127)
                  {
                     si8(_loc6_,_loc5_);
                     _loc6_ = 1;
                  }
               }
            }
            ESP = _loc2_;
            F___error();
            _loc1_ = int(eax);
            si32(86,_loc1_);
            _loc6_ = -1;
         }
      }
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
