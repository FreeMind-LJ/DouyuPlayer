package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_one_2E_o_3A_BEE23FA3_2D_19C3_2D_4626_2D_BC1F_2D_7E2FCA4B655E.*;
   
   public function F__none_init() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      si32(__none_mbrtowc,___mbrtowc);
      si32(__none_mbsinit,___mbsinit);
      si32(__none_mbsnrtowcs,___mbsnrtowcs);
      si32(__none_wcrtomb,___wcrtomb);
      si32(__none_wcsnrtombs,___wcsnrtombs);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,__CurrentRuneLocale);
      si32(1,___mb_cur_max);
      si32(256,___mb_sb_limit);
      eax = 0;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
