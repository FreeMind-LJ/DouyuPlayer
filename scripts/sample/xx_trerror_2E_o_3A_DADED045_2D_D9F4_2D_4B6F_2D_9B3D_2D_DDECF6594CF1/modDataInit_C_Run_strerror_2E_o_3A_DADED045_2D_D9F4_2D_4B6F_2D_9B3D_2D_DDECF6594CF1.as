package sample.xx_trerror_2E_o_3A_DADED045_2D_D9F4_2D_4B6F_2D_9B3D_2D_DDECF6594CF1
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_strerror_2E_o_3A_DADED045_2D_D9F4_2D_4B6F_2D_9B3D_2D_DDECF6594CF1(param1:Object) : void
   {
      var _loc3_:int = param1[".bss"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS0());
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS1());
   }
}
