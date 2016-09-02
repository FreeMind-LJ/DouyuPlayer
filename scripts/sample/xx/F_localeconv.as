package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_ocaleconv_2E_o_3A_6494FC27_2D_4F02_2D_483A_2D_8E6D_2D_0B3E6E3780B0.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F_localeconv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(___mlocale_changed);
      if(_loc1_ != 0)
      {
         ESP = _loc2_;
         F___get_current_monetary_locale();
         var _loc4_:* = li32(int(eax));
         si32(_loc4_,_ret_2E_1158 + 12);
         _loc4_ = li32(int(eax) + 4);
         si32(_loc4_,_ret_2E_1158 + 16);
         _loc4_ = li32(int(eax) + 8);
         si32(_loc4_,_ret_2E_1158 + 20);
         _loc4_ = li32(int(eax) + 12);
         si32(_loc4_,_ret_2E_1158 + 24);
         _loc4_ = li32(int(eax) + 16);
         si32(_loc4_,_ret_2E_1158 + 28);
         _loc4_ = li32(int(eax) + 20);
         si32(_loc4_,_ret_2E_1158 + 32);
         _loc4_ = li32(int(eax) + 24);
         si32(_loc4_,_ret_2E_1158 + 36);
         _loc4_ = li32(int(eax) + 28);
         _loc4_ = li8(_loc4_);
         si8(_loc4_,_ret_2E_1158 + 40);
         _loc4_ = li32(int(eax) + 32);
         _loc4_ = li8(_loc4_);
         si8(_loc4_,_ret_2E_1158 + 41);
         _loc4_ = li32(int(eax) + 36);
         _loc4_ = li8(_loc4_);
         si8(_loc4_,_ret_2E_1158 + 42);
         _loc4_ = li32(int(eax) + 40);
         _loc4_ = li8(_loc4_);
         si8(_loc4_,_ret_2E_1158 + 43);
         _loc4_ = li32(int(eax) + 44);
         _loc4_ = li8(_loc4_);
         si8(_loc4_,_ret_2E_1158 + 44);
         _loc4_ = li32(int(eax) + 48);
         _loc4_ = li8(_loc4_);
         si8(_loc4_,_ret_2E_1158 + 45);
         _loc4_ = li32(int(eax) + 52);
         _loc4_ = li8(_loc4_);
         si8(_loc4_,_ret_2E_1158 + 46);
         _loc4_ = li32(int(eax) + 56);
         _loc4_ = li8(_loc4_);
         si8(_loc4_,_ret_2E_1158 + 47);
         _loc4_ = li32(int(eax) + 60);
         _loc4_ = li8(_loc4_);
         si8(_loc4_,_ret_2E_1158 + 48);
         _loc4_ = li32(int(eax) + 64);
         _loc4_ = li8(_loc4_);
         si8(_loc4_,_ret_2E_1158 + 49);
         _loc4_ = li32(int(eax) + 68);
         _loc4_ = li8(_loc4_);
         si8(_loc4_,_ret_2E_1158 + 50);
         _loc4_ = li32(int(eax) + 72);
         _loc4_ = li8(_loc4_);
         si8(_loc4_,_ret_2E_1158 + 51);
         _loc4_ = li32(int(eax) + 76);
         _loc4_ = li8(_loc4_);
         si8(_loc4_,_ret_2E_1158 + 52);
         si8(li8(li32(int(eax) + 80)),_ret_2E_1158 + 53);
         si32(0,___mlocale_changed);
      }
      _loc1_ = li32(___nlocale_changed);
      if(_loc1_ != 0)
      {
         ESP = _loc2_;
         F___get_current_numeric_locale();
         _loc4_ = li32(int(eax));
         si32(_loc4_,_ret_2E_1158);
         _loc4_ = li32(int(eax) + 4);
         si32(_loc4_,_ret_2E_1158 + 4);
         si32(li32(int(eax) + 8),_ret_2E_1158 + 8);
         si32(0,___nlocale_changed);
      }
      eax = _ret_2E_1158;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
