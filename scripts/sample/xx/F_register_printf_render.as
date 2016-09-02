package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_printf_2E_o_3A_6EDE186A_2D_A78D_2D_4139_2D_B1C2_2D_0C5D348116BA._printf_tbl;
   import avm2.intrinsics.memory.si32;
   
   public function F_register_printf_render() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = -1;
      _loc7_ = li32(_loc3_);
      if(uint(_loc7_) <= 255)
      {
         var _loc4_:int = _printf_tbl + int(_loc7_ * 12);
         si32(li32(_loc3_ + 4),_loc4_ + 8);
         si32(li32(_loc3_ + 8),_loc4_);
         si32(1,___use_xprintf);
         _loc1_ = 0;
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
