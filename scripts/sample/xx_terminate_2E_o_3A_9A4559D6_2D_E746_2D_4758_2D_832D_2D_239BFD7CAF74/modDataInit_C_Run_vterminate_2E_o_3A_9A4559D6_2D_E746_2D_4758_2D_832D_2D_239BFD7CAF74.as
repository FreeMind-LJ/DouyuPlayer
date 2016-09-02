package sample.xx_terminate_2E_o_3A_9A4559D6_2D_E746_2D_4758_2D_832D_2D_239BFD7CAF74
{
   import sample.xx.ram;
   import sample.xx.__ZTISt9exception;
   import avm2.intrinsics.memory.si32;
   
   function modDataInit_C_Run_vterminate_2E_o_3A_9A4559D6_2D_E746_2D_4758_2D_832D_2D_239BFD7CAF74(param1:Object) : void
   {
      var _loc5_:int = param1[".bss"][0];
      ram.position = _loc5_;
      ram.writeBytes(new DS0());
      var _loc4_:int = param1[".gcc_except_table"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS1());
      var _loc3_:int = param1[".rodata.str1.16"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS2());
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS3());
      si32(__ZTISt9exception,_loc4_ + 20);
   }
}
