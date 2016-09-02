package sample.xx
{
   import sample.xx_b18030_2E_o_3A_899691D9_2D_34F6_2D_41FF_2D_825E_2D_1C8F82677FB1.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   
   public function F__GB18030_init() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      si32(__GB18030_mbrtowc,___mbrtowc);
      si32(__GB18030_wcrtomb,___wcrtomb);
      si32(__GB18030_mbsinit,___mbsinit);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,__CurrentRuneLocale);
      si32(4,___mb_cur_max);
      si32(128,___mb_sb_limit);
      eax = 0;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
