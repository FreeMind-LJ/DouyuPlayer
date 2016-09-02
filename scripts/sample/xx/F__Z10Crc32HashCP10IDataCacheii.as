package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccvhkiYr_2E_o_3A_73f2298d_2D_6df1_2D_49e8_2D_97c0_2D_4a1e8b785be7.__ZL12kCrc32TableC;
   
   public function F__Z10Crc32HashCP10IDataCacheii() : void
   {
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      ESP = _loc2_;
      F__Z23EnsureCrc32TableInitedCv();
      _loc3_ = 0;
      _loc4_ = li32(_loc1_ + 8);
      if(_loc4_ != 0)
      {
         _loc5_ = li32(_loc1_ + 4);
         _loc6_ = li32(_loc1_);
         _loc7_ = -1;
         do
         {
            var _loc8_:* = li32(_loc6_);
            var _loc9_:* = li32(_loc8_ + 20);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc6_,_loc2_);
            si32(_loc5_,_loc2_ + 4);
            ESP = _loc2_;
            ptr2fun[_loc9_]();
            _loc2_ = int(_loc2_ + 16);
            _loc8_ = int(eax);
            _loc8_ = _loc8_ ^ _loc7_;
            _loc8_ = _loc8_ & 255;
            _loc8_ = _loc8_ << 2;
            _loc8_ = int(__ZL12kCrc32TableC + _loc8_);
            _loc8_ = li32(_loc8_);
            var _loc10_:int = _loc7_ >>> 8;
            _loc7_ = _loc8_ ^ _loc10_;
            _loc4_ = int(_loc4_ + -1);
            _loc5_ = int(_loc5_ + 1);
         }
         while(_loc4_ != 0);
         
         _loc3_ = _loc7_ ^ -1;
      }
      eax = _loc3_;
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
