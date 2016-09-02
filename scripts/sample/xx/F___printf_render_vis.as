package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_printf_vis_2E_o_3A_A9926426_2D_67E4_2D_4B3E_2D_96A9_2D_2DD2FA10A150.*;
   
   public function F___printf_render_vis() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:int = 0;
      var _loc1_:* = 0;
      var _loc6_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 8);
      _loc1_ = li32(_loc1_);
      _loc9_ = li32(_loc1_);
      _loc8_ = li32(_loc3_ + 4);
      _loc7_ = li32(_loc3_);
      if(_loc9_ == 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(6,_loc2_ + 12);
         si32(L__2E_str,_loc2_ + 8);
         si32(_loc8_,_loc2_ + 4);
         si32(_loc7_,_loc2_);
         ESP = _loc2_;
         F___printf_out();
         _loc2_ = int(_loc2_ + 16);
         _loc6_ = eax;
      }
      else
      {
         _loc5_ = li32(_loc8_);
         if(_loc5_ <= -1)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F_strlen();
            _loc2_ = int(_loc2_ + 16);
            _loc5_ = int(eax);
         }
         _loc2_ = int(_loc2_ - 16);
         _loc1_ = _loc5_ << 2;
         _loc1_ = _loc1_ | 1;
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F_malloc();
         _loc6_ = -1;
         _loc2_ = int(_loc2_ + 16);
         _loc4_ = eax;
         if(_loc4_ != 0)
         {
            if(li32(_loc8_ + 40) != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(156,_loc2_ + 12);
               si32(_loc5_,_loc2_ + 8);
               si32(_loc9_,_loc2_ + 4);
               si32(_loc4_,_loc2_);
               ESP = _loc2_;
               F_strvisx();
               _loc2_ = int(_loc2_ + 16);
               _loc9_ = int(eax);
            }
            else if(li32(_loc8_ + 56) == 48)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(29,_loc2_ + 12);
               si32(_loc5_,_loc2_ + 8);
               si32(_loc9_,_loc2_ + 4);
               si32(_loc4_,_loc2_);
               ESP = _loc2_;
               F_strvisx();
               _loc2_ = int(_loc2_ + 16);
               _loc9_ = int(eax);
            }
            else if(li32(_loc8_ + 28) != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(28,_loc2_ + 12);
               si32(_loc5_,_loc2_ + 8);
               si32(_loc9_,_loc2_ + 4);
               si32(_loc4_,_loc2_);
               ESP = _loc2_;
               F_strvisx();
               _loc2_ = int(_loc2_ + 16);
               _loc9_ = int(eax);
            }
            else
            {
               _loc2_ = int(_loc2_ - 16);
               si32(31,_loc2_ + 12);
               si32(_loc5_,_loc2_ + 8);
               si32(_loc9_,_loc2_ + 4);
               si32(_loc4_,_loc2_);
               ESP = _loc2_;
               F_strvisx();
               _loc2_ = int(_loc2_ + 16);
               _loc9_ = int(eax);
            }
            _loc2_ = int(_loc2_ - 16);
            si32(_loc4_,_loc2_ + 8);
            si32(_loc8_,_loc2_ + 4);
            si32(_loc7_,_loc2_);
            si32(_loc9_,_loc2_ + 12);
            ESP = _loc2_;
            F___printf_out();
            _loc2_ = int(_loc2_ + 16);
            _loc1_ = int(eax);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc7_,_loc2_);
            ESP = _loc2_;
            F___printf_flush();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc4_,_loc2_);
            _loc6_ = _loc1_ + _loc9_;
            ESP = _loc2_;
            F_free();
            _loc2_ = int(_loc2_ + 16);
         }
      }
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
