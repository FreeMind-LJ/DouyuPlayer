package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccWOpgXM_2E_o_3A_e07a7c20_2D_50a5_2D_4908_2D_bae4_2D_6489778f0fee.*;
   import avm2.intrinsics.memory.li32;
   
   public function F__ZN5C4Key6LogKeyENS_9eKeyIndexE() : void
   {
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc6_:int = 0;
      var _loc9_:int = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      si32(10,_loc2_);
      ESP = _loc2_;
      F_putchar();
      _loc2_ = int(_loc2_ + 16);
      _loc3_ = li32(_loc1_ + 4);
      _loc4_ = li32(_loc1_);
      if(_loc3_ <= 2)
      {
         if(_loc3_ != 1)
         {
            if(_loc3_ == 2)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(L__2E_str1,_loc2_);
               ESP = _loc2_;
               F_printf();
               _loc2_ = int(_loc2_ + 16);
            }
         }
         else
         {
            _loc2_ = int(_loc2_ - 16);
            si32(L__2E_str,_loc2_);
            ESP = _loc2_;
            F_printf();
            _loc2_ = int(_loc2_ + 16);
         }
      }
      else if(_loc3_ != 3)
      {
         if(_loc3_ != 4)
         {
            if(_loc3_ == 5)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(L__2E_str4,_loc2_);
               ESP = _loc2_;
               F_printf();
               _loc2_ = int(_loc2_ + 16);
            }
         }
         else
         {
            _loc2_ = int(_loc2_ - 16);
            si32(L__2E_str3,_loc2_);
            ESP = _loc2_;
            F_printf();
            _loc2_ = int(_loc2_ + 16);
         }
      }
      else
      {
         _loc2_ = int(_loc2_ - 16);
         si32(L__2E_str2,_loc2_);
         ESP = _loc2_;
         F_printf();
         _loc2_ = int(_loc2_ + 16);
      }
      var _loc5_:* = _loc3_ << 2;
      _loc6_ = _loc4_ + _loc5_;
      var _loc7_:* = li32(_loc6_);
      _loc5_ = li32(_loc7_);
      var _loc8_:* = li32(_loc5_ + 32);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc7_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc8_]();
      _loc9_ = 0;
      _loc2_ = int(_loc2_ + 16);
      _loc5_ = int(eax);
      if(_loc5_ != 1)
      {
         do
         {
            _loc5_ = li32(_loc6_);
            _loc7_ = li32(_loc5_);
            var _loc10_:* = li32(_loc7_ + 20);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc5_,_loc2_);
            si32(_loc9_,_loc2_ + 4);
            ESP = _loc2_;
            ptr2fun[_loc10_]();
            _loc2_ = int(_loc2_ + 16);
            _loc5_ = int(eax);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc5_,_loc2_ + 4);
            si32(L__2E_str5,_loc2_);
            ESP = _loc2_;
            F_printf();
            _loc2_ = int(_loc2_ + 16);
            _loc5_ = li32(_loc6_);
            _loc7_ = li32(_loc5_);
            var _loc11_:* = li32(_loc7_ + 32);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            ptr2fun[_loc11_]();
            _loc9_ = _loc9_ + 1;
            _loc2_ = int(_loc2_ + 16);
            _loc5_ = int(eax);
            _loc5_ = int(_loc5_ + -1);
         }
         while(uint(_loc9_) < uint(_loc5_));
         
      }
      _loc2_ = int(_loc2_ - 16);
      si32(10,_loc2_);
      ESP = _loc2_;
      F_putchar();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
