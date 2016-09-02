package sample.xx_skanji_2E_o_3A_3601F93B_2D_5B5A_2D_4D89_2D_B452_2D_CF531CF3B516
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_mskanji_2E_o_3A_3601F93B_2D_5B5A_2D_4D89_2D_B452_2D_CF531CF3B516(param1:Object) : void
   {
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
   }
}
