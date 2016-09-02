package sample.xx_uc_2E_o_3A_9BEB9C05_2D_DB15_2D_40C0_2D_ABEB_2D_0D0E9808D49E
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_euc_2E_o_3A_9BEB9C05_2D_DB15_2D_40C0_2D_ABEB_2D_0D0E9808D49E(param1:Object) : void
   {
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
   }
}
