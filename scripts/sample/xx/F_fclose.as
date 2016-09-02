package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li16;
   import sample.xx_close_2E_o_3A_578D0ED5_2D_B9F2_2D_4E2D_2D_8AE8_2D_D464736673B5.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   
   public function F_fclose() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc6_ = li16(_loc1_ + 12);
      if(_loc6_ == 0)
      {
         ESP = _loc2_;
         F___error();
         si32(9,int(eax));
         _loc6_ = -1;
      }
      else
      {
         var _loc5_:* = li32(___isthreaded);
         if(_loc5_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F__flockfile();
            _loc2_ = int(_loc2_ + 16);
            _loc6_ = li16(_loc1_ + 12);
         }
         _loc5_ = _loc6_ & 8;
         _loc6_ = 0;
         if(_loc5_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F___sflush();
            _loc2_ = int(_loc2_ + 16);
            _loc6_ = int(eax);
         }
         _loc4_ = li32(_loc1_ + 32);
         if(_loc4_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(li32(_loc1_ + 28),_loc2_);
            ESP = _loc2_;
            ptr2fun[_loc4_]();
            _loc2_ = int(_loc2_ + 16);
            _loc5_ = int(eax);
            if(_loc5_ <= -1)
            {
               _loc6_ = -1;
            }
         }
         _loc5_ = li8(_loc1_ + 12);
         _loc5_ = _loc5_ & 128;
         if(_loc5_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(li32(_loc1_ + 16),_loc2_);
            ESP = _loc2_;
            F_free();
            _loc2_ = int(_loc2_ + 16);
         }
         _loc4_ = li32(_loc1_ + 48);
         if(_loc4_ != 0)
         {
            if(_loc4_ != int(_loc1_ + 64))
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc4_,_loc2_);
               ESP = _loc2_;
               F_free();
               _loc2_ = int(_loc2_ + 16);
            }
            si32(0,_loc1_ + 48);
         }
         _loc4_ = li32(_loc1_ + 68);
         if(_loc4_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc4_,_loc2_);
            ESP = _loc2_;
            F_free();
            _loc2_ = int(_loc2_ + 16);
            si32(0,_loc1_ + 68);
         }
         si16(-1,_loc1_ + 14);
         si32(0,_loc1_ + 8);
         si32(0,_loc1_ + 4);
         si16(0,_loc1_ + 12);
         _loc5_ = li32(___isthreaded);
         if(_loc5_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F__funlockfile();
            _loc2_ = int(_loc2_ + 16);
         }
      }
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
