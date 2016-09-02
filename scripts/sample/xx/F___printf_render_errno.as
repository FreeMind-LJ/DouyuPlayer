package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_printf_errno_2E_o_3A_8ED5664B_2D_4B8E_2D_4F70_2D_ACFD_2D_37EBC9310175.*;
   import avm2.intrinsics.memory.si32;
   
   public function F___printf_render_errno() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 64);
      _loc1_ = li32(_loc3_ + 8);
      _loc1_ = li32(_loc1_);
      _loc7_ = li32(_loc1_);
      _loc6_ = li32(_loc3_ + 4);
      _loc5_ = li32(_loc3_);
      if(_loc7_ >= 0)
      {
         if(_loc7_ < li32(_sys_nerr))
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc7_,_loc2_);
            ESP = _loc2_;
            F_strerror();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(int(eax),_loc2_);
            ESP = _loc2_;
            F_strlen();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(int(eax),_loc2_ + 12);
            si32(int(eax),_loc2_ + 8);
            si32(_loc6_,_loc2_ + 4);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F___printf_out();
            _loc2_ = int(_loc2_ + 16);
            _loc6_ = int(eax);
         }
         addr249:
         eax = _loc6_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      _loc2_ = int(_loc2_ - 16);
      si32(_loc7_,_loc2_ + 12);
      si32(_loc7_,_loc2_ + 8);
      si32(L__2E_str,_loc2_ + 4);
      _loc1_ = int(_loc3_ - 64);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_sprintf();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_strlen();
      _loc2_ = int(_loc2_ + 16);
      var _loc4_:int = eax;
      _loc2_ = int(_loc2_ - 16);
      si32(_loc4_,_loc2_ + 12);
      si32(_loc1_,_loc2_ + 8);
      si32(_loc6_,_loc2_ + 4);
      si32(_loc5_,_loc2_);
      ESP = _loc2_;
      F___printf_out();
      _loc2_ = int(_loc2_ + 16);
      _loc6_ = int(eax);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc5_,_loc2_);
      ESP = _loc2_;
      F___printf_flush();
      _loc2_ = int(_loc2_ + 16);
      §§goto(addr249);
   }
}
