package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_open_2E_o_3A_F7E9C81F_2D_8CD0_2D_4410_2D_9C09_2D_DD48ECDDD06A.*;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.li8;
   
   public function F_fopen() : void
   {
      var _loc3_:* = 0;
      var _loc6_:int = 0;
      var _loc4_:int = 0;
      var _loc7_:int = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = int(_loc3_ - 4);
      si32(_loc1_,_loc2_ + 4);
      _loc1_ = li32(_loc3_ + 4);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F___sflags();
      _loc8_ = 0;
      _loc2_ = int(_loc2_ + 16);
      _loc7_ = eax;
      if(_loc7_ != 0)
      {
         ESP = _loc2_;
         F___sfp();
         _loc8_ = 0;
         _loc6_ = eax;
         if(_loc6_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(438,_loc2_ + 8);
            si32(li32(_loc3_ - 4),_loc2_ + 4);
            si32(li32(_loc3_),_loc2_);
            ESP = _loc2_;
            F__open();
            _loc2_ = int(_loc2_ + 16);
            _loc4_ = eax;
            if(_loc4_ <= -1)
            {
               _loc8_ = 0;
               si16(_loc8_,_loc6_ + 12);
            }
            else if(_loc4_ >= 32768)
            {
               _loc8_ = 0;
               si16(_loc8_,_loc6_ + 12);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc4_,_loc2_);
               ESP = _loc2_;
               F__close();
               _loc2_ = int(_loc2_ + 16);
               ESP = _loc2_;
               F___error();
               si32(24,int(eax));
            }
            else
            {
               si16(_loc4_,_loc6_ + 14);
               si16(_loc7_,_loc6_ + 12);
               si32(_loc6_,_loc6_ + 28);
               si32(___sread,_loc6_ + 36);
               si32(___swrite,_loc6_ + 44);
               si32(___sseek,_loc6_ + 40);
               si32(___sclose,_loc6_ + 32);
               _loc8_ = _loc6_;
               if((li8(_loc3_ - 4) & 8) != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(2,_loc2_ + 12);
                  si32(0,_loc2_ + 8);
                  si32(0,_loc2_ + 4);
                  si32(_loc6_,_loc2_);
                  ESP = _loc2_;
                  F__sseek();
                  _loc2_ = int(_loc2_ + 16);
                  _loc8_ = _loc6_;
               }
            }
         }
      }
      eax = _loc8_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
