package sample.xx_pmalloc_2E_o_3A_7B38AAF0_2D_F8D0_2D_4EBF_2D_BC26_2D_806D96EC8230
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_kpmalloc_2E_o_3A_7B38AAF0_2D_F8D0_2D_4EBF_2D_BC26_2D_806D96EC8230(param1:Object) : void
   {
      var _loc2_:int = param1[".bss"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
   }
}
