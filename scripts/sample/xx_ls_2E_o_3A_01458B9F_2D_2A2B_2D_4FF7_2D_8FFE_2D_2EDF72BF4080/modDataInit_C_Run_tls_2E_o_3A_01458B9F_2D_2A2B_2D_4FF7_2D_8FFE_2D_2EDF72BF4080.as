package sample.xx_ls_2E_o_3A_01458B9F_2D_2A2B_2D_4FF7_2D_8FFE_2D_2EDF72BF4080
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_tls_2E_o_3A_01458B9F_2D_2A2B_2D_4FF7_2D_8FFE_2D_2EDF72BF4080(param1:Object) : void
   {
      var _loc2_:int = param1[".bss"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
   }
}
