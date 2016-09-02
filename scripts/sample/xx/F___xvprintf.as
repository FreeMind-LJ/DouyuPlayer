package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.sxi16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si16;
   import sample.xx_printf_2E_o_3A_6EDE186A_2D_A78D_2D_4139_2D_B1C2_2D_0C5D348116BA.*;
   
   public function F___xvprintf() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:int = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 1264);
      _loc1_ = 0;
      _loc10_ = li32(_loc3_ + 8);
      _loc9_ = li32(_loc3_ + 4);
      _loc8_ = li32(_loc3_);
      _loc7_ = _loc9_;
      while(true)
      {
         _loc5_ = li8(_loc7_);
         if(_loc5_ != 37)
         {
            if(_loc5_ == 0)
            {
               break;
            }
         }
         else
         {
            _loc1_ = _loc1_ + 1;
            var _loc6_:* = li8(_loc7_ + 1);
            if(_loc6_ == 37)
            {
               _loc7_ = int(_loc7_ + 1);
            }
         }
         _loc7_ = int(_loc7_ + 1);
      }
      _loc4_ = li16(_loc8_ + 12);
      _loc6_ = _loc4_ & 26;
      if(_loc6_ == 10)
      {
         _loc7_ = si16(li16(_loc8_ + 14));
         if(_loc7_ >= 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(232,_loc2_ + 8);
            si32(0,_loc2_ + 4);
            _loc5_ = int(_loc3_ - 232);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            Fmemset();
            _loc2_ = int(_loc2_ + 16);
            _loc6_ = _loc4_ & 65533;
            si16(_loc6_,_loc3_ - 220);
            si16(_loc7_,_loc3_ - 218);
            _loc6_ = li32(_loc8_ + 28);
            si32(_loc6_,_loc3_ - 204);
            _loc6_ = li32(_loc8_ + 44);
            si32(_loc6_,_loc3_ - 188);
            _loc6_ = li32(_loc8_ + 100);
            si32(_loc6_,_loc3_ - 132);
            _loc2_ = int(_loc2_ - 16);
            si32(128,_loc2_ + 8);
            _loc6_ = int(_loc8_ + 104);
            si32(_loc6_,_loc2_ + 4);
            _loc6_ = int(_loc5_ + 104);
            si32(_loc6_,_loc2_);
            ESP = _loc2_;
            Fmemcpy();
            _loc2_ = int(_loc2_ + 16);
            _loc6_ = int(_loc3_ - 1256);
            si32(_loc6_,_loc3_ - 232);
            si32(_loc6_,_loc3_ - 216);
            si32(1024,_loc3_ - 224);
            si32(1024,_loc3_ - 212);
            si32(0,_loc3_ - 208);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc10_,_loc2_ + 12);
            si32(_loc1_,_loc2_ + 8);
            si32(_loc9_,_loc2_ + 4);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F___v2printf();
            _loc2_ = int(_loc2_ + 16);
            _loc1_ = eax;
            if(_loc1_ >= 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc5_,_loc2_);
               ESP = _loc2_;
               F___fflush();
               _loc2_ = int(_loc2_ + 16);
               _loc6_ = int(eax);
               if(_loc6_ != 0)
               {
                  _loc1_ = -1;
               }
            }
            _loc6_ = li8(_loc3_ - 220);
            _loc6_ = _loc6_ & 64;
            if(_loc6_ != 0)
            {
               _loc6_ = li16(_loc8_ + 12);
               _loc6_ = _loc6_ | 64;
               si16(_loc6_,_loc8_ + 12);
            }
         }
         addr392:
         eax = _loc1_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      _loc2_ = int(_loc2_ - 16);
      si32(_loc10_,_loc2_ + 12);
      si32(_loc1_,_loc2_ + 8);
      si32(_loc9_,_loc2_ + 4);
      si32(_loc8_,_loc2_);
      ESP = _loc2_;
      F___v2printf();
      _loc2_ = int(_loc2_ + 16);
      _loc1_ = eax;
      §§goto(addr392);
   }
}
