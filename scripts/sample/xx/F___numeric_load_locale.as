package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_numeric_2E_o_3A_6B0C532C_2D_B865_2D_4A8A_2D_99FB_2D_699445DDD08F.*;
   import avm2.intrinsics.memory.li8;
   
   public function F___numeric_load_locale() : void
   {
      var _loc3_:* = 0;
      var _loc4_:int = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 32);
      si32(__numeric_locale,_loc2_ + 24);
      si32(3,_loc2_ + 20);
      si32(3,_loc2_ + 16);
      si32(L__2E_str2,_loc2_ + 12);
      si32(__numeric_locale_buf,_loc2_ + 8);
      si32(__numeric_using_locale,_loc2_ + 4);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F___part_load_locale();
      _loc2_ = int(_loc2_ + 32);
      _loc4_ = eax;
      if(_loc4_ != -1)
      {
         si32(1,___nlocale_changed);
         if(_loc4_ == 0)
         {
            if(li8(li32(__numeric_locale)) == 0)
            {
               si32(L__2E_str,__numeric_locale);
            }
            _loc1_ = li32(__numeric_locale + 8);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F___fix_locale_grouping_str();
            _loc2_ = int(_loc2_ + 16);
            _loc1_ = int(eax);
            si32(_loc1_,__numeric_locale + 8);
         }
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
