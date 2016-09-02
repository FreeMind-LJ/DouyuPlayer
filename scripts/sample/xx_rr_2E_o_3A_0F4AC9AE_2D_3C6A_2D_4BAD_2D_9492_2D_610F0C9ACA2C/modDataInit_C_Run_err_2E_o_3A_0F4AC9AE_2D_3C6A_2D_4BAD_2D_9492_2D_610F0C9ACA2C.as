package sample.xx_rr_2E_o_3A_0F4AC9AE_2D_3C6A_2D_4BAD_2D_9492_2D_610F0C9ACA2C
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_err_2E_o_3A_0F4AC9AE_2D_3C6A_2D_4BAD_2D_9492_2D_610F0C9ACA2C(param1:Object) : void
   {
      var _loc3_:int = param1[".bss"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS0());
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS1());
   }
}
