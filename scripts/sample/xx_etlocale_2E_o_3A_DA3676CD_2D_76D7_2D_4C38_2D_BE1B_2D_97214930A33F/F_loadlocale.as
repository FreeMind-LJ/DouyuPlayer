package sample.xx_etlocale_2E_o_3A_DA3676CD_2D_76D7_2D_4C38_2D_BE1B_2D_97214930A33F
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   
   public function F_loadlocale() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:int = 0;
      var _loc9_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc9_ = _loc1_ << 5;
      _loc8_ = _new_categories + _loc9_;
      var _loc7_:* = li8(_loc8_);
      if(_loc7_ == 46)
      {
         _loc6_ = li8(_loc8_ + 1);
         if(_loc6_ != 0)
         {
            if(_loc6_ == 46)
            {
               _loc7_ = li8(_loc8_ + 2);
               if(_loc7_ != 0)
               {
               }
            }
         }
         addr92:
         ESP = _loc2_;
         F___error();
         _loc7_ = int(eax);
         si32(22,_loc7_);
         addr339:
         _loc6_ = 0;
         eax = _loc6_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      _loc2_ = int(_loc2_ - 16);
      si32(47,_loc2_ + 4);
      si32(_loc8_,_loc2_);
      ESP = _loc2_;
      F_strchr();
      _loc2_ = int(_loc2_ + 16);
      _loc7_ = int(eax);
      if(_loc7_ != 0)
      {
         §§goto(addr92);
      }
      else
      {
         ESP = _loc2_;
         F___error();
         _loc7_ = int(eax);
         _loc5_ = li32(_loc7_);
         ESP = _loc2_;
         F___error();
         ESP = _loc2_;
         F___detect_path_locale();
         var _loc4_:int = eax;
         si32(_loc4_,int(eax));
         ESP = _loc2_;
         F___error();
         _loc7_ = int(eax);
         _loc6_ = 0;
         if(li32(_loc7_) == 0)
         {
            _loc9_ = int(_current_categories + _loc9_);
            ESP = _loc2_;
            F___error();
            si32(_loc5_,int(eax));
            if(_loc1_ <= 3)
            {
               if(_loc1_ != 1)
               {
                  _loc5_ = int(___wrap_setrunelocale);
                  if(_loc1_ != 2)
                  {
                     if(_loc1_ != 3)
                     {
                        addr230:
                        ESP = _loc2_;
                        F___error();
                        _loc7_ = int(eax);
                        si32(22,_loc7_);
                        _loc6_ = 0;
                     }
                     else
                     {
                        _loc5_ = int(___monetary_load_locale);
                     }
                  }
               }
               else
               {
                  _loc5_ = int(___collate_load_tables);
               }
            }
            else if(_loc1_ != 4)
            {
               if(_loc1_ != 5)
               {
                  if(_loc1_ != 6)
                  {
                     §§goto(addr230);
                  }
                  else
                  {
                     _loc5_ = int(___messages_load_locale);
                  }
               }
               else
               {
                  _loc5_ = int(___time_load_locale);
               }
            }
            else
            {
               _loc5_ = int(___numeric_load_locale);
            }
            _loc2_ = int(_loc2_ - 16);
            si32(_loc9_,_loc2_ + 4);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F_strcmp();
            _loc2_ = int(_loc2_ + 16);
            _loc7_ = int(eax);
            _loc6_ = _loc9_;
            if(_loc7_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc8_,_loc2_);
               ESP = _loc2_;
               ptr2fun[_loc5_]();
               _loc6_ = 0;
               _loc2_ = int(_loc2_ + 16);
               _loc7_ = int(eax);
               if(_loc7_ != -1)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc8_,_loc2_ + 4);
                  si32(_loc9_,_loc2_);
                  ESP = _loc2_;
                  F_strcpy();
                  _loc2_ = int(_loc2_ + 16);
                  _loc6_ = _loc9_;
               }
            }
         }
      }
      §§goto(addr339);
   }
}
