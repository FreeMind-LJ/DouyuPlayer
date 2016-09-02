package sample.xx
{
   import sample.xx_numeric_2E_o_3A_6B0C532C_2D_B865_2D_4A8A_2D_99FB_2D_699445DDD08F.__C_numeric_locale;
   import sample.xx_numeric_2E_o_3A_6B0C532C_2D_B865_2D_4A8A_2D_99FB_2D_699445DDD08F.__numeric_using_locale;
   import avm2.intrinsics.memory.li32;
   import sample.xx_numeric_2E_o_3A_6B0C532C_2D_B865_2D_4A8A_2D_99FB_2D_699445DDD08F.__numeric_locale;
   
   public function F___get_current_numeric_locale() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = __C_numeric_locale;
      var _loc4_:* = li32(__numeric_using_locale);
      if(_loc4_ != 0)
      {
         _loc1_ = __numeric_locale;
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
