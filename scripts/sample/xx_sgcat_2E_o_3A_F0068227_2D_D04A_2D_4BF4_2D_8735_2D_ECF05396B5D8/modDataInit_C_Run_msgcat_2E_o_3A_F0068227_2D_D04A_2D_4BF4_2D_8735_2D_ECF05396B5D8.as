package sample.xx_sgcat_2E_o_3A_F0068227_2D_D04A_2D_4BF4_2D_8735_2D_ECF05396B5D8
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_msgcat_2E_o_3A_F0068227_2D_D04A_2D_4BF4_2D_8735_2D_ECF05396B5D8(param1:Object) : void
   {
      var _loc3_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS0());
      var _loc2_:int = param1[".rodata.str1.16"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS1());
   }
}
