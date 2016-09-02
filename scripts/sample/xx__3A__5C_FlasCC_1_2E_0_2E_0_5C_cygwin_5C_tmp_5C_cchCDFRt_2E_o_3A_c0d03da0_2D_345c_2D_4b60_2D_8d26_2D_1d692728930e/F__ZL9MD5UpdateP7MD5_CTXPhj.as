package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cchCDFRt_2E_o_3A_c0d03da0_2D_345c_2D_4b60_2D_8d26_2D_1d692728930e
{
   import sample.xx.ESP;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.Fmemcpy;
   
   public function F__ZL9MD5UpdateP7MD5_CTXPhj() : void
   {
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc3_:* = 0;
      var _loc10_:int = 0;
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:int = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = li32(_loc1_ + 8);
      _loc4_ = _loc3_ << 3;
      _loc5_ = li32(_loc1_);
      _loc6_ = li32(_loc5_ + 16);
      _loc4_ = int(_loc6_ + _loc4_);
      si32(_loc4_,_loc5_ + 16);
      _loc7_ = 1;
      if(uint(_loc4_) >= uint(_loc6_))
      {
         _loc7_ = 0;
      }
      _loc4_ = _loc7_ & 1;
      _loc8_ = li32(_loc5_ + 20);
      if(_loc4_ != 0)
      {
         _loc8_ = int(_loc8_ + 1);
         si32(_loc8_,_loc5_ + 20);
      }
      _loc9_ = _loc6_ >>> 3;
      _loc7_ = _loc9_ & 63;
      _loc6_ = li32(_loc1_ + 4);
      _loc4_ = int(_loc3_ >>> 29);
      _loc4_ = int(_loc8_ + _loc4_);
      si32(_loc4_,_loc5_ + 20);
      _loc10_ = 64 - _loc7_;
      _loc8_ = 0;
      if(uint(_loc10_) <= uint(_loc3_))
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc6_,_loc2_ + 4);
         var _loc11_:int = _loc5_ + 24;
         _loc4_ = int(_loc11_ + _loc7_);
         si32(_loc4_,_loc2_);
         si32(_loc10_,_loc2_ + 8);
         ESP = _loc2_;
         Fmemcpy();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc11_,_loc2_ + 4);
         si32(_loc5_,_loc2_);
         ESP = _loc2_;
         F__ZL8sub_C0B1PjPh();
         _loc2_ = int(_loc2_ + 16);
         _loc7_ = 0;
         _loc8_ = _loc10_;
         if(uint(int(_loc10_ + 63)) < uint(_loc3_))
         {
            _loc4_ = _loc9_ & 63;
            _loc9_ = 127 - _loc4_;
            _loc8_ = int(64 - _loc4_);
            do
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc5_,_loc2_);
               _loc4_ = int(_loc6_ + _loc8_);
               si32(_loc4_,_loc2_ + 4);
               ESP = _loc2_;
               F__ZL8sub_C0B1PjPh();
               _loc2_ = int(_loc2_ + 16);
               _loc9_ = _loc9_ + 64;
               _loc8_ = int(_loc8_ + 64);
               _loc7_ = 0;
            }
            while(uint(_loc9_) < uint(_loc3_));
            
         }
      }
      _loc4_ = int(_loc3_ - _loc8_);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc4_,_loc2_ + 8);
      _loc4_ = int(_loc6_ + _loc8_);
      si32(_loc4_,_loc2_ + 4);
      _loc4_ = int(_loc5_ + _loc7_);
      _loc4_ = int(_loc4_ + 24);
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      Fmemcpy();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
