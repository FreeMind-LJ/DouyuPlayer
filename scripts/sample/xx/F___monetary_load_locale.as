package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_monetary_2E_o_3A_55CDA4EF_2D_114E_2D_4B0C_2D_BDAE_2D_88C716C45799.*;
   import avm2.intrinsics.memory.si8;
   
   public function F___monetary_load_locale() : void
   {
      var _loc3_:* = 0;
      var _loc8_:int = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 32);
      si32(__monetary_locale,_loc2_ + 24);
      si32(15,_loc2_ + 20);
      si32(21,_loc2_ + 16);
      si32(L__2E_str,_loc2_ + 12);
      si32(__monetary_locale_buf,_loc2_ + 8);
      si32(__monetary_using_locale,_loc2_ + 4);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F___part_load_locale();
      _loc2_ = int(_loc2_ + 32);
      _loc8_ = eax;
      if(_loc8_ != -1)
      {
         si32(1,___mlocale_changed);
         if(_loc8_ == 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(li32(__monetary_locale + 16),_loc2_);
            ESP = _loc2_;
            F___fix_locale_grouping_str();
            _loc2_ = int(_loc2_ + 16);
            si32(int(eax),__monetary_locale + 16);
            _loc7_ = li32(__monetary_locale + 28);
            _loc2_ = int(_loc2_ - 16);
            si32(10,_loc2_ + 8);
            si32(0,_loc2_ + 4);
            si32(_loc7_,_loc2_);
            ESP = _loc2_;
            F_strtol();
            _loc6_ = 127;
            _loc2_ = int(_loc2_ + 16);
            _loc5_ = int(eax);
            _loc4_ = _loc6_;
            if(_loc5_ != -1)
            {
               _loc4_ = _loc5_;
            }
            si8(_loc4_,_loc7_);
            _loc5_ = li32(__monetary_locale + 32);
            _loc2_ = int(_loc2_ - 16);
            si32(10,_loc2_ + 8);
            si32(0,_loc2_ + 4);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F_strtol();
            _loc2_ = int(_loc2_ + 16);
            _loc4_ = int(eax);
            _loc7_ = _loc6_;
            if(_loc4_ != -1)
            {
               _loc7_ = _loc4_;
            }
            si8(_loc7_,_loc5_);
            _loc5_ = li32(__monetary_locale + 36);
            _loc2_ = int(_loc2_ - 16);
            si32(10,_loc2_ + 8);
            si32(0,_loc2_ + 4);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F_strtol();
            _loc2_ = int(_loc2_ + 16);
            _loc4_ = int(eax);
            _loc7_ = _loc6_;
            if(_loc4_ != -1)
            {
               _loc7_ = _loc4_;
            }
            si8(_loc7_,_loc5_);
            _loc5_ = li32(__monetary_locale + 40);
            _loc2_ = int(_loc2_ - 16);
            si32(10,_loc2_ + 8);
            si32(0,_loc2_ + 4);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F_strtol();
            _loc2_ = int(_loc2_ + 16);
            _loc4_ = int(eax);
            _loc7_ = _loc6_;
            if(_loc4_ != -1)
            {
               _loc7_ = _loc4_;
            }
            si8(_loc7_,_loc5_);
            _loc5_ = li32(__monetary_locale + 44);
            _loc2_ = int(_loc2_ - 16);
            si32(10,_loc2_ + 8);
            si32(0,_loc2_ + 4);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F_strtol();
            _loc2_ = int(_loc2_ + 16);
            _loc4_ = int(eax);
            _loc7_ = _loc6_;
            if(_loc4_ != -1)
            {
               _loc7_ = _loc4_;
            }
            si8(_loc7_,_loc5_);
            _loc5_ = li32(__monetary_locale + 48);
            _loc2_ = int(_loc2_ - 16);
            si32(10,_loc2_ + 8);
            si32(0,_loc2_ + 4);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F_strtol();
            _loc2_ = int(_loc2_ + 16);
            _loc4_ = int(eax);
            _loc7_ = _loc6_;
            if(_loc4_ != -1)
            {
               _loc7_ = _loc4_;
            }
            si8(_loc7_,_loc5_);
            _loc5_ = li32(__monetary_locale + 52);
            _loc2_ = int(_loc2_ - 16);
            si32(10,_loc2_ + 8);
            si32(0,_loc2_ + 4);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F_strtol();
            _loc2_ = int(_loc2_ + 16);
            _loc4_ = int(eax);
            _loc7_ = _loc6_;
            if(_loc4_ != -1)
            {
               _loc7_ = _loc4_;
            }
            si8(_loc7_,_loc5_);
            _loc7_ = li32(__monetary_locale + 56);
            _loc2_ = int(_loc2_ - 16);
            si32(10,_loc2_ + 8);
            si32(0,_loc2_ + 4);
            si32(_loc7_,_loc2_);
            ESP = _loc2_;
            F_strtol();
            _loc2_ = int(_loc2_ + 16);
            _loc5_ = int(eax);
            if(_loc5_ != -1)
            {
               _loc6_ = _loc5_;
            }
            si8(_loc6_,_loc7_);
            _loc5_ = li32(__monetary_locale + 60);
            if(_loc5_ == 0)
            {
               si32(li32(__monetary_locale + 36),__monetary_locale + 60);
            }
            else
            {
               _loc2_ = int(_loc2_ - 16);
               si32(10,_loc2_ + 8);
               si32(0,_loc2_ + 4);
               si32(_loc5_,_loc2_);
               ESP = _loc2_;
               F_strtol();
               _loc7_ = 127;
               _loc2_ = int(_loc2_ + 16);
               _loc6_ = int(eax);
               if(_loc6_ != -1)
               {
                  _loc7_ = _loc6_;
               }
               si8(_loc7_,_loc5_);
            }
            _loc7_ = li32(__monetary_locale + 64);
            if(_loc7_ == 0)
            {
               si32(li32(__monetary_locale + 44),__monetary_locale + 64);
            }
            else
            {
               _loc2_ = int(_loc2_ - 16);
               si32(10,_loc2_ + 8);
               si32(0,_loc2_ + 4);
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F_strtol();
               _loc5_ = 127;
               _loc2_ = int(_loc2_ + 16);
               _loc6_ = int(eax);
               if(_loc6_ != -1)
               {
                  _loc5_ = _loc6_;
               }
               si8(_loc5_,_loc7_);
            }
            _loc7_ = li32(__monetary_locale + 68);
            if(_loc7_ == 0)
            {
               si32(li32(__monetary_locale + 40),__monetary_locale + 68);
            }
            else
            {
               _loc2_ = int(_loc2_ - 16);
               si32(10,_loc2_ + 8);
               si32(0,_loc2_ + 4);
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F_strtol();
               _loc5_ = 127;
               _loc2_ = int(_loc2_ + 16);
               _loc6_ = int(eax);
               if(_loc6_ != -1)
               {
                  _loc5_ = _loc6_;
               }
               si8(_loc5_,_loc7_);
            }
            _loc7_ = li32(__monetary_locale + 72);
            if(_loc7_ == 0)
            {
               si32(li32(__monetary_locale + 48),__monetary_locale + 72);
            }
            else
            {
               _loc2_ = int(_loc2_ - 16);
               si32(10,_loc2_ + 8);
               si32(0,_loc2_ + 4);
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F_strtol();
               _loc5_ = 127;
               _loc2_ = int(_loc2_ + 16);
               _loc6_ = int(eax);
               if(_loc6_ != -1)
               {
                  _loc5_ = _loc6_;
               }
               si8(_loc5_,_loc7_);
            }
            _loc7_ = li32(__monetary_locale + 76);
            if(_loc7_ == 0)
            {
               si32(li32(__monetary_locale + 52),__monetary_locale + 76);
            }
            else
            {
               _loc2_ = int(_loc2_ - 16);
               si32(10,_loc2_ + 8);
               si32(0,_loc2_ + 4);
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F_strtol();
               _loc5_ = 127;
               _loc2_ = int(_loc2_ + 16);
               _loc6_ = int(eax);
               if(_loc6_ != -1)
               {
                  _loc5_ = _loc6_;
               }
               si8(_loc5_,_loc7_);
            }
            _loc7_ = li32(__monetary_locale + 80);
            if(_loc7_ == 0)
            {
               si32(li32(__monetary_locale + 56),__monetary_locale + 80);
            }
            else
            {
               _loc2_ = int(_loc2_ - 16);
               si32(10,_loc2_ + 8);
               si32(0,_loc2_ + 4);
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F_strtol();
               _loc5_ = 127;
               _loc2_ = int(_loc2_ + 16);
               _loc6_ = int(eax);
               if(_loc6_ != -1)
               {
                  _loc5_ = _loc6_;
               }
               si8(_loc5_,_loc7_);
            }
         }
      }
      eax = _loc8_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
