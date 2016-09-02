package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccoWZZEr_2E_o_3A_fa4b70d4_2D_363d_2D_4eae_2D_96dc_2D_1df1d5edcc9b.*;
   
   public function F_sub_1() : void
   {
      var _loc1_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      si32(824,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      si32(_info,_loc2_);
      ESP = _loc2_;
      Fmemset();
      _loc2_ = int(_loc2_ + 16);
      _loc3_ = li32(_loc1_);
      if(_loc3_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc3_,_loc2_);
         ESP = _loc2_;
         F_strlen();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(int(eax),_loc2_ + 8);
         si32(_loc3_,_loc2_ + 4);
         si32(_info,_loc2_);
         ESP = _loc2_;
         Fmemcpy();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc3_ = li32(_loc1_ + 4);
      if(_loc3_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc3_,_loc2_);
         ESP = _loc2_;
         F_strlen();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(int(eax),_loc2_ + 8);
         si32(_loc3_,_loc2_ + 4);
         var _loc4_:* = int(_info + 100);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         Fmemcpy();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc3_ = li32(_loc1_ + 8);
      if(_loc3_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc3_,_loc2_);
         ESP = _loc2_;
         F_strlen();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(int(eax),_loc2_ + 8);
         si32(_loc3_,_loc2_ + 4);
         _loc4_ = int(_info + 200);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         Fmemcpy();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc3_ = li32(_loc1_ + 36);
      if(_loc3_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc3_,_loc2_);
         ESP = _loc2_;
         F_strlen();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(int(eax),_loc2_ + 8);
         si32(_loc3_,_loc2_ + 4);
         _loc4_ = int(_info + 300);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         Fmemcpy();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc3_ = li32(_loc1_ + 40);
      if(_loc3_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc3_,_loc2_);
         ESP = _loc2_;
         F_strlen();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(int(eax),_loc2_ + 8);
         si32(_loc3_,_loc2_ + 4);
         _loc4_ = int(_info + 700);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         Fmemcpy();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc3_ = li32(_loc1_ + 12);
      if(_loc3_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc3_,_loc2_);
         ESP = _loc2_;
         F_strlen();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(int(eax),_loc2_ + 8);
         si32(_loc3_,_loc2_ + 4);
         _loc4_ = int(_info + 400);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         Fmemcpy();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc3_ = li32(_loc1_ + 16);
      if(_loc3_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc3_,_loc2_);
         ESP = _loc2_;
         F_strlen();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(int(eax),_loc2_ + 8);
         si32(_loc3_,_loc2_ + 4);
         _loc4_ = int(_info + 500);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         Fmemcpy();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc3_ = li32(_loc1_ + 20);
      if(_loc3_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc3_,_loc2_);
         ESP = _loc2_;
         F_strlen();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(int(eax),_loc2_ + 8);
         si32(_loc3_,_loc2_ + 4);
         _loc4_ = int(_info + 600);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         Fmemcpy();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc4_ = li32(_loc1_ + 32);
      var _loc5_:* = li32(_loc1_ + 28);
      var _loc6_:* = li32(_loc1_ + 24);
      si32(_loc6_,_info + 800);
      si32(_loc4_,_info + 808);
      si32(_loc5_,_info + 804);
      eax = 0;
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
