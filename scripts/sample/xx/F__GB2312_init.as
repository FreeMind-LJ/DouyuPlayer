package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_b2312_2E_o_3A_566CC0B1_2D_A528_2D_447F_2D_8BAE_2D_34D9565525E2.*;
   import avm2.intrinsics.memory.si32;
   
   public function F__GB2312_init() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      si32(_loc1_,__CurrentRuneLocale);
      si32(__GB2312_mbrtowc,___mbrtowc);
      si32(__GB2312_wcrtomb,___wcrtomb);
      si32(__GB2312_mbsinit,___mbsinit);
      si32(2,___mb_cur_max);
      si32(128,___mb_sb_limit);
      eax = 0;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
