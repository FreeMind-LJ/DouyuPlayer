package sample.xx_efill_2E_o_3A_356DC6BA_2D_6F46_2D_4358_2D_BDF9_2D_E4599AF05218
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li16;
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_lflush() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc5_ = li16(_loc1_ + 12);
      _loc5_ = _loc5_ & 9;
      _loc4_ = 0;
      if(_loc5_ == 9)
      {
         _loc5_ = li32(___isthreaded);
         if(_loc5_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F__flockfile();
            _loc2_ = int(_loc2_ + 16);
         }
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F___sflush();
         _loc2_ = int(_loc2_ + 16);
         _loc4_ = eax;
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
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
