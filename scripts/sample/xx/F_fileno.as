package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_ileno_2E_o_3A_AA3FB2F9_2D_23EF_2D_43BC_2D_A0E3_2D_8F8806F13B02.*;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.sxi16;
   import avm2.intrinsics.memory.si32;
   
   public function F_fileno() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc5_:* = li32(___isthreaded);
      if(_loc5_ == 0)
      {
         _loc4_ = si16(li16(_loc1_ + 14));
      }
      else
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F__flockfile();
         _loc2_ = int(_loc2_ + 16);
         _loc4_ = si16(li16(_loc1_ + 14));
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
