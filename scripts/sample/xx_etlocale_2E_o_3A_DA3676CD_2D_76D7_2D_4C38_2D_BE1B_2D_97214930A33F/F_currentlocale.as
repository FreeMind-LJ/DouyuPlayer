package sample.xx_etlocale_2E_o_3A_DA3676CD_2D_76D7_2D_4C38_2D_BE1B_2D_97214930A33F
{
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   import avm2.intrinsics.memory.si16;
   
   public function F_currentlocale() : void
   {
      var _loc3_:* = 0;
      var _loc6_:int = 0;
      var _loc5_:int = 0;
      var _loc1_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      si32(_current_locale_string,_loc2_);
      _loc1_ = _current_categories + 32;
      si32(_loc1_,_loc2_ + 4);
      ESP = _loc2_;
      F_strcpy();
      _loc2_ = int(_loc2_ + 16);
      _loc6_ = _current_categories + 64;
      _loc5_ = 2;
      while(_loc5_ < 7)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc6_,_loc2_ + 4);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F_strcmp();
         _loc2_ = int(_loc2_ + 16);
         var _loc4_:int = eax;
         if(_loc4_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_current_locale_string,_loc2_);
            ESP = _loc2_;
            F_strlen();
            _loc2_ = int(_loc2_ + 16);
            si16(47,int(_current_locale_string + int(eax)));
            _loc2_ = int(_loc2_ - 16);
            _loc4_ = _current_categories + 64;
            si32(_loc4_,_loc2_ + 4);
            si32(_current_locale_string,_loc2_);
            ESP = _loc2_;
            F_strcat();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_current_locale_string,_loc2_);
            ESP = _loc2_;
            F_strlen();
            _loc2_ = int(_loc2_ + 16);
            si16(47,int(_current_locale_string + int(eax)));
            _loc2_ = int(_loc2_ - 16);
            _loc4_ = _current_categories + 96;
            si32(_loc4_,_loc2_ + 4);
            si32(_current_locale_string,_loc2_);
            ESP = _loc2_;
            F_strcat();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_current_locale_string,_loc2_);
            ESP = _loc2_;
            F_strlen();
            _loc2_ = int(_loc2_ + 16);
            si16(47,int(_current_locale_string + int(eax)));
            _loc2_ = int(_loc2_ - 16);
            _loc4_ = _current_categories + 128;
            si32(_loc4_,_loc2_ + 4);
            si32(_current_locale_string,_loc2_);
            ESP = _loc2_;
            F_strcat();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_current_locale_string,_loc2_);
            ESP = _loc2_;
            F_strlen();
            _loc2_ = int(_loc2_ + 16);
            si16(47,int(_current_locale_string + int(eax)));
            _loc2_ = int(_loc2_ - 16);
            _loc4_ = _current_categories + 160;
            si32(_loc4_,_loc2_ + 4);
            si32(_current_locale_string,_loc2_);
            ESP = _loc2_;
            F_strcat();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_current_locale_string,_loc2_);
            ESP = _loc2_;
            F_strlen();
            _loc2_ = int(_loc2_ + 16);
            si16(47,int(_current_locale_string + int(eax)));
            _loc2_ = int(_loc2_ - 16);
            _loc4_ = _current_categories + 192;
            si32(_loc4_,_loc2_ + 4);
            si32(_current_locale_string,_loc2_);
            ESP = _loc2_;
            F_strcat();
            _loc2_ = int(_loc2_ + 16);
            break;
         }
         _loc6_ = _loc6_ + 32;
         _loc5_ = _loc5_ + 1;
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
