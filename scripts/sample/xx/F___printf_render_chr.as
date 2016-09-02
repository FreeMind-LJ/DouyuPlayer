package sample.xx
{
   import sample.xx_printf_str_2E_o_3A_81733692_2D_DB2E_2D_43DB_2D_A578_2D_19A73F9BE531.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F___printf_render_chr() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 144);
      _loc1_ = li32(___mb_cur_max);
      _loc1_ = int(_loc1_ + 15);
      _loc1_ = _loc1_ & -16;
      var _loc9_:* = _loc2_;
      _loc1_ = int(_loc9_ - _loc1_);
      _loc8_ = _loc1_ & -16;
      _loc2_ = _loc8_;
      _loc7_ = li32(_loc3_ + 4);
      _loc1_ = li32(_loc7_ + 24);
      _loc6_ = li32(_loc3_ + 8);
      _loc5_ = li32(_loc3_);
      if(_loc1_ == 0)
      {
         if(li32(_loc7_ + 8) != 67)
         {
            si8(li32(li32(_loc6_)),_loc3_ - 1);
            _loc2_ = int(_loc2_ - 16);
            si32(1,_loc2_ + 12);
            si32(int(_loc3_ - 1),_loc2_ + 8);
            si32(_loc7_,_loc2_ + 4);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F___printf_out();
            _loc2_ = int(_loc2_ + 16);
            _loc4_ = eax;
            _loc2_ = int(_loc2_ - 16);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F___printf_flush();
            _loc2_ = int(_loc2_ + 16);
         }
         addr263:
         eax = _loc4_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      _loc1_ = li32(_loc6_);
      _loc1_ = li32(_loc1_);
      _loc2_ = int(_loc2_ - 16);
      si32(128,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      _loc9_ = int(_loc3_ - 136);
      si32(_loc9_,_loc2_);
      ESP = _loc2_;
      Fmemset();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc9_,_loc2_ + 8);
      si32(_loc1_,_loc2_ + 4);
      si32(_loc8_,_loc2_);
      ESP = _loc2_;
      F_wcrtomb();
      _loc4_ = -1;
      _loc2_ = int(_loc2_ + 16);
      _loc6_ = int(eax);
      if(_loc6_ != -1)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc6_,_loc2_ + 12);
         si32(_loc8_,_loc2_ + 8);
         si32(_loc7_,_loc2_ + 4);
         si32(_loc5_,_loc2_);
         ESP = _loc2_;
         F___printf_out();
         _loc2_ = int(_loc2_ + 16);
         _loc4_ = eax;
      }
      §§goto(addr263);
   }
}
