package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.sxi16;
   import sample.xx_akebuf_2E_o_3A_3F5DD4D4_2D_C0C5_2D_49B3_2D_9EA6_2D_6A6BB9DB4F1A.*;
   import avm2.intrinsics.memory.si16;
   
   public function F___smakebuf() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:int = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 96);
      _loc1_ = li32(_loc3_);
      var _loc9_:* = li8(_loc1_ + 12);
      _loc9_ = _loc9_ & 2;
      if(_loc9_ != 0)
      {
         _loc9_ = int(_loc1_ + 67);
         si32(_loc9_,_loc1_);
         si32(_loc9_,_loc1_ + 16);
         si32(1,_loc1_ + 20);
      }
      else
      {
         _loc8_ = si16(li16(_loc1_ + 14));
         _loc7_ = 2048;
         _loc6_ = 1024;
         _loc5_ = 0;
         if(_loc8_ >= 0)
         {
            _loc2_ = int(_loc2_ - 16);
            _loc9_ = int(_loc3_ - 96);
            si32(_loc9_,_loc2_ + 4);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F__fstat();
            _loc7_ = 2048;
            _loc6_ = 1024;
            _loc5_ = 0;
            _loc2_ = int(_loc2_ + 16);
            _loc9_ = int(eax);
            if(_loc9_ >= 0)
            {
               _loc9_ = li16(_loc3_ - 88);
               _loc8_ = _loc9_ & 61440;
               _loc7_ = 1;
               if(_loc8_ != 8192)
               {
                  _loc7_ = 0;
               }
               _loc5_ = _loc7_ & 1;
               _loc7_ = 2048;
               _loc6_ = 1024;
               _loc4_ = li32(_loc3_ - 32);
               if(_loc4_ != 0)
               {
                  si32(_loc4_,_loc1_ + 76);
                  if(_loc8_ == 32768)
                  {
                     _loc7_ = 1024;
                     _loc6_ = _loc4_;
                     if(li32(_loc1_ + 40) != ___sseek)
                     {
                     }
                  }
                  _loc7_ = 2048;
                  _loc6_ = _loc4_;
               }
            }
         }
         _loc2_ = int(_loc2_ - 16);
         si32(_loc6_,_loc2_);
         ESP = _loc2_;
         F_malloc();
         _loc2_ = int(_loc2_ + 16);
         _loc8_ = int(eax);
         if(_loc8_ == 0)
         {
            _loc9_ = li16(_loc1_ + 12);
            _loc9_ = _loc9_ | 2;
            si16(_loc9_,_loc1_ + 12);
            _loc9_ = int(_loc1_ + 67);
            si32(_loc9_,_loc1_);
            si32(_loc9_,_loc1_ + 16);
            si32(1,_loc1_ + 20);
         }
         else
         {
            si32(__cleanup,___cleanup);
            si32(_loc8_,_loc1_);
            si32(_loc8_,_loc1_ + 16);
            si32(_loc6_,_loc1_ + 20);
            _loc6_ = _loc7_ | 128;
            if(_loc5_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(si16(li16(_loc1_ + 14)),_loc2_);
               ESP = _loc2_;
               F_isatty();
               _loc2_ = int(_loc2_ + 16);
               _loc9_ = int(eax);
               if(_loc9_ != 0)
               {
                  _loc6_ = _loc7_ | 129;
               }
            }
            _loc9_ = li16(_loc1_ + 12);
            _loc9_ = _loc9_ | _loc6_;
            si16(_loc9_,_loc1_ + 12);
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
