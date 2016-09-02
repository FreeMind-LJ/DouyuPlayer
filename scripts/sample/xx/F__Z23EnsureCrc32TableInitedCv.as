package sample.xx
{
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccvhkiYr_2E_o_3A_73f2298d_2D_6df1_2D_49e8_2D_97c0_2D_4a1e8b785be7.__ZL12kCrc32TableC;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__Z23EnsureCrc32TableInitedCv() : void
   {
      var _loc1_:* = 0;
      var _loc3_:* = 0;
      var _loc4_:int = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = li32(__ZL12kCrc32TableC + 1020);
      _loc4_ = 0;
      if(_loc3_ == 0)
      {
         do
         {
            _loc3_ = _loc4_ & 1;
            _loc5_ = int(_loc4_ >>> 1);
            if(_loc3_ != 0)
            {
               _loc5_ = _loc5_ ^ -306674912;
            }
            _loc3_ = _loc5_ & 1;
            _loc5_ = int(_loc5_ >>> 1);
            if(_loc3_ != 0)
            {
               _loc5_ = _loc5_ ^ -306674912;
            }
            _loc3_ = _loc5_ & 1;
            _loc5_ = int(_loc5_ >>> 1);
            if(_loc3_ != 0)
            {
               _loc5_ = _loc5_ ^ -306674912;
            }
            _loc3_ = _loc5_ & 1;
            _loc5_ = int(_loc5_ >>> 1);
            if(_loc3_ != 0)
            {
               _loc5_ = _loc5_ ^ -306674912;
            }
            _loc3_ = _loc5_ & 1;
            _loc5_ = int(_loc5_ >>> 1);
            if(_loc3_ != 0)
            {
               _loc5_ = _loc5_ ^ -306674912;
            }
            _loc3_ = _loc5_ & 1;
            _loc5_ = int(_loc5_ >>> 1);
            if(_loc3_ != 0)
            {
               _loc5_ = _loc5_ ^ -306674912;
            }
            _loc3_ = _loc5_ & 1;
            _loc5_ = int(_loc5_ >>> 1);
            if(_loc3_ != 0)
            {
               _loc5_ = _loc5_ ^ -306674912;
            }
            _loc3_ = _loc5_ & 1;
            _loc5_ = int(_loc5_ >>> 1);
            if(_loc3_ != 0)
            {
               _loc5_ = _loc5_ ^ -306674912;
            }
            _loc3_ = _loc4_ << 2;
            _loc3_ = int(__ZL12kCrc32TableC + _loc3_);
            si32(_loc5_,_loc3_);
            _loc4_ = _loc4_ + 1;
         }
         while(_loc4_ != 256);
         
      }
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
