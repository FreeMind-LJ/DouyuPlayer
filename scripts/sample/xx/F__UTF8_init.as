package sample.xx
{
   import sample.xx_tf8_2E_o_3A_71874781_2D_5724_2D_4B16_2D_9C7F_2D_C30AC3EB270F.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   
   public function F__UTF8_init() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      si32(__UTF8_mbrtowc,___mbrtowc);
      si32(__UTF8_wcrtomb,___wcrtomb);
      si32(__UTF8_mbsinit,___mbsinit);
      si32(__UTF8_mbsnrtowcs,___mbsnrtowcs);
      si32(__UTF8_wcsnrtombs,___wcsnrtombs);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,__CurrentRuneLocale);
      si32(6,___mb_cur_max);
      si32(128,___mb_sb_limit);
      eax = 0;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
