package sample.xx_b2312_2E_o_3A_566CC0B1_2D_A528_2D_447F_2D_8BAE_2D_34D9565525E2
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_gb2312_2E_o_3A_566CC0B1_2D_A528_2D_447F_2D_8BAE_2D_34D9565525E2(param1:Object) : void
   {
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
   }
}
