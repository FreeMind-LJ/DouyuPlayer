package sample.xx_h_catch_2E_o_3A_10AD40DF_2D_77B4_2D_4E8F_2D_8C4E_2D_E570C00524BE
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_eh_catch_2E_o_3A_10AD40DF_2D_77B4_2D_4E8F_2D_8C4E_2D_E570C00524BE(param1:Object) : void
   {
      var _loc2_:int = param1[".gcc_except_table"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
   }
}
