package sample.xx_etrunelocale_2E_o_3A_3E514901_2D_6299_2D_4420_2D_A649_2D_C576F01E9942
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_setrunelocale_2E_o_3A_3E514901_2D_6299_2D_4420_2D_A649_2D_C576F01E9942(param1:Object) : void
   {
      var _loc3_:int = param1[".bss"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS0());
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS1());
   }
}
