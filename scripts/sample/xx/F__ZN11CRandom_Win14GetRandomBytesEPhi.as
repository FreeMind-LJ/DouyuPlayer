package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cc8bZeE0_2E_o_3A_ff719754_2D_2d2e_2D_4314_2D_8f7c_2D_2ec21aeca79c.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN11CRandom_Win14GetRandomBytesEPhi() : void
   {
      var _loc1_:* = 0;
      var _loc3_:int = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      si32(0,_loc2_);
      ESP = _loc2_;
      F_time();
      _loc2_ = int(_loc2_ + 16);
      _loc3_ = eax;
      _loc2_ = int(_loc2_ - 16);
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      F_srand();
      _loc2_ = int(_loc2_ + 16);
      _loc4_ = li32(_loc1_ + 8);
      _loc5_ = li32(_loc1_ + 4);
      if(_loc4_ >= 1)
      {
         do
         {
            ESP = _loc2_;
            F_rand();
            _loc3_ = eax;
            _loc3_ = _loc3_ % 255;
            si8(_loc3_,_loc5_);
            _loc5_ = int(_loc5_ + 1);
            _loc4_ = int(_loc4_ + -1);
         }
         while(_loc4_ != 0);
         
      }
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
