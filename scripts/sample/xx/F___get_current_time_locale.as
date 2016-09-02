package sample.xx
{
   import sample.xx_imelocal_2E_o_3A_1189CA6B_2D_97BC_2D_4F3F_2D_A7B0_2D_47918D7C7177.__C_time_locale;
   import sample.xx_imelocal_2E_o_3A_1189CA6B_2D_97BC_2D_4F3F_2D_A7B0_2D_47918D7C7177.__time_using_locale;
   import avm2.intrinsics.memory.li32;
   import sample.xx_imelocal_2E_o_3A_1189CA6B_2D_97BC_2D_4F3F_2D_A7B0_2D_47918D7C7177.__time_locale;
   
   public function F___get_current_time_locale() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = __C_time_locale;
      var _loc4_:* = li32(__time_using_locale);
      if(_loc4_ != 0)
      {
         _loc1_ = __time_locale;
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
