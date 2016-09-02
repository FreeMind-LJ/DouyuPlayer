package sample.xx_uts_2E_o_3A_C87CDCD5_2D_62F8_2D_4A92_2D_94CB_2D_A8AFF7F176FA
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_puts_2E_o_3A_C87CDCD5_2D_62F8_2D_4A92_2D_94CB_2D_A8AFF7F176FA(param1:Object) : void
   {
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
   }
}
