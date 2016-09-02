package sample.xx_texit_2E_o_3A_1405349B_2D_9902_2D_46AE_2D_908F_2D_8B86E3F38604
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_atexit_2E_o_3A_1405349B_2D_9902_2D_46AE_2D_908F_2D_8B86E3F38604(param1:Object) : void
   {
      var _loc2_:int = param1[".bss"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
   }
}
