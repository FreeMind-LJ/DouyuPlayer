package sample.xx_ysctl_2E_o_3A_30608893_2D_C683_2D_407A_2D_A12E_2D_2BE474AFB519
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_sysctl_2E_o_3A_30608893_2D_C683_2D_407A_2D_A12E_2D_2BE474AFB519(param1:Object) : void
   {
      var _loc2_:int = param1[".rodata.str1.16"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
   }
}
