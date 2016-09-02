package sample.xx
{
   import sample.xx_monetary_2E_o_3A_55CDA4EF_2D_114E_2D_4B0C_2D_BDAE_2D_88C716C45799.__C_monetary_locale;
   import sample.xx_monetary_2E_o_3A_55CDA4EF_2D_114E_2D_4B0C_2D_BDAE_2D_88C716C45799.__monetary_using_locale;
   import avm2.intrinsics.memory.li32;
   import sample.xx_monetary_2E_o_3A_55CDA4EF_2D_114E_2D_4B0C_2D_BDAE_2D_88C716C45799.__monetary_locale;
   
   public function F___get_current_monetary_locale() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = __C_monetary_locale;
      var _loc4_:* = li32(__monetary_using_locale);
      if(_loc4_ != 0)
      {
         _loc1_ = __monetary_locale;
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
