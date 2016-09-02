package sample.xx_gl_2E_o_3A_0E02E7F6_2D_96BC_2D_4BCB_2D_8473_2D_E51F396EDDBD
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_vgl_2E_o_3A_0E02E7F6_2D_96BC_2D_4BCB_2D_8473_2D_E51F396EDDBD(param1:Object) : void
   {
      var _loc4_:int = param1[".bss"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS0());
      var _loc3_:int = param1[".data"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS1());
      var _loc2_:int = param1[".rodata.str1.16"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS2());
   }
}
