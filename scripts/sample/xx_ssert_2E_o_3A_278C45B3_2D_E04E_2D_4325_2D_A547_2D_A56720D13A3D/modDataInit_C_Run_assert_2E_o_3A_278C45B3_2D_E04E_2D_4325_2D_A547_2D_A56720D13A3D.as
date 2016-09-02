package sample.xx_ssert_2E_o_3A_278C45B3_2D_E04E_2D_4325_2D_A547_2D_A56720D13A3D
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_assert_2E_o_3A_278C45B3_2D_E04E_2D_4325_2D_A547_2D_A56720D13A3D(param1:Object) : void
   {
      var _loc2_:int = param1[".rodata.str1.16"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
   }
}
