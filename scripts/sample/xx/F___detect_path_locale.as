package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_etlocale_2E_o_3A_DA3676CD_2D_76D7_2D_4C38_2D_BE1B_2D_97214930A33F.*;
   
   public function F___detect_path_locale() : void
   {
      var _loc3_:* = 0;
      var _loc4_:int = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 0;
      var _loc5_:* = li32(__PathLocale);
      if(_loc5_ == 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(L__2E_str9,_loc2_);
         ESP = _loc2_;
         F_getenv();
         _loc2_ = int(_loc2_ + 16);
         _loc4_ = eax;
         if(_loc4_ != 0)
         {
            ESP = _loc2_;
            F_issetugid();
            _loc5_ = int(eax);
            if(_loc5_ == 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc4_,_loc2_);
               ESP = _loc2_;
               F_strlen();
               _loc2_ = int(_loc2_ + 16);
               _loc5_ = int(eax);
               _loc1_ = 63;
               if(uint(int(_loc5_ + 44)) <= 1023)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc4_,_loc2_);
                  ESP = _loc2_;
                  F_strdup();
                  _loc2_ = int(_loc2_ + 16);
                  _loc5_ = int(eax);
                  si32(_loc5_,__PathLocale);
                  _loc1_ = 0;
                  if(_loc5_ == 0)
                  {
                     ESP = _loc2_;
                     F___error();
                     _loc5_ = int(eax);
                     _loc1_ = 12;
                     if(li32(_loc5_) != 0)
                     {
                        ESP = _loc2_;
                        F___error();
                        _loc5_ = int(eax);
                        _loc1_ = li32(_loc5_);
                     }
                  }
               }
            }
         }
         si32(L__2E_str10,__PathLocale);
         _loc1_ = 0;
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
