package sample.xx
{
   import sample.xx_messages_2E_o_3A_F492CD4D_2D_D224_2D_4FEA_2D_986C_2D_4ED7987E3A70.__C_messages_locale;
   import sample.xx_messages_2E_o_3A_F492CD4D_2D_D224_2D_4FEA_2D_986C_2D_4ED7987E3A70.__messages_using_locale;
   import avm2.intrinsics.memory.li32;
   import sample.xx_messages_2E_o_3A_F492CD4D_2D_D224_2D_4FEA_2D_986C_2D_4ED7987E3A70.__messages_locale;
   
   public function F___get_current_messages_locale() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = __C_messages_locale;
      var _loc4_:* = li32(__messages_using_locale);
      if(_loc4_ != 0)
      {
         _loc1_ = __messages_locale;
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
