package sample.xx
{
   import sample.xx_ig5_2E_o_3A_C5321009_2D_5A46_2D_4DFC_2D_8180_2D_6D517E9FA7D3.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   
   public function F__BIG5_init() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      si32(__BIG5_mbrtowc,___mbrtowc);
      si32(__BIG5_wcrtomb,___wcrtomb);
      si32(__BIG5_mbsinit,___mbsinit);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,__CurrentRuneLocale);
      si32(2,___mb_cur_max);
      si32(128,___mb_sb_limit);
      eax = 0;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
