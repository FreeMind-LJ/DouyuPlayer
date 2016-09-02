package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccJ9Dgwu_2E_o_3A_c5d379ab_2D_8109_2D_4bc8_2D_aa7c_2D_892d83bcba3b.*;
   
   public function F_Decoder() : void
   {
      var _loc1_:* = 0;
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc6_:int = 0;
      var _loc7_:int = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = li32(_loc1_);
      _loc4_ = li8(_loc3_);
      _loc5_ = 0;
      if(_loc4_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc3_,_loc2_);
         ESP = _loc2_;
         F_strlen();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         _loc4_ = int(int(eax) + 1);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         F_malloc();
         _loc5_ = 0;
         _loc2_ = int(_loc2_ + 16);
         _loc6_ = eax;
         if(_loc6_ != 0)
         {
            _loc5_ = _loc6_;
            _loc2_ = int(_loc2_ - 16);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F_strlen();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            _loc4_ = int(int(eax) + 1);
            si32(_loc4_,_loc2_ + 8);
            si32(_loc3_,_loc2_ + 4);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            Fmemcpy();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(L__2E_str1,_loc2_ + 8);
            si32(L__2E_str,_loc2_ + 4);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F_ReplaceAll();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(L__2E_str3,_loc2_ + 8);
            si32(L__2E_str2,_loc2_ + 4);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F_ReplaceAll();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(L__2E_str1,_loc2_ + 8);
            si32(L__2E_str,_loc2_ + 4);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F_ReplaceAll();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(L__2E_str4,_loc2_ + 4);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F_strstr();
            _loc2_ = int(_loc2_ + 16);
            _loc7_ = eax;
            if(_loc7_ != 0)
            {
               _loc3_ = li32(_loc1_ + 4);
               _loc4_ = li32(_loc3_);
               _loc6_ = _loc4_ + 1;
               do
               {
                  si32(_loc6_,_loc3_);
                  _loc2_ = int(_loc2_ - 16);
                  si32(L__2E_str4,_loc2_ + 4);
                  _loc4_ = int(_loc7_ + 4);
                  si32(_loc4_,_loc2_);
                  ESP = _loc2_;
                  F_strstr();
                  _loc6_ = _loc6_ + 1;
                  _loc2_ = int(_loc2_ + 16);
                  _loc7_ = eax;
               }
               while(_loc7_ != 0);
               
            }
         }
      }
      eax = _loc5_;
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
