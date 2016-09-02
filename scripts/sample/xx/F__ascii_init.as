package sample.xx
{
   import sample.xx_scii_2E_o_3A_6BE96A82_2D_6716_2D_46E9_2D_B835_2D_B5FC386B3A7E.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   
   public function F__ascii_init() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      si32(__ascii_mbrtowc,___mbrtowc);
      si32(__ascii_mbsinit,___mbsinit);
      si32(__ascii_mbsnrtowcs,___mbsnrtowcs);
      si32(__ascii_wcrtomb,___wcrtomb);
      si32(__ascii_wcsnrtombs,___wcsnrtombs);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,__CurrentRuneLocale);
      si32(1,___mb_cur_max);
      si32(128,___mb_sb_limit);
      eax = 0;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
