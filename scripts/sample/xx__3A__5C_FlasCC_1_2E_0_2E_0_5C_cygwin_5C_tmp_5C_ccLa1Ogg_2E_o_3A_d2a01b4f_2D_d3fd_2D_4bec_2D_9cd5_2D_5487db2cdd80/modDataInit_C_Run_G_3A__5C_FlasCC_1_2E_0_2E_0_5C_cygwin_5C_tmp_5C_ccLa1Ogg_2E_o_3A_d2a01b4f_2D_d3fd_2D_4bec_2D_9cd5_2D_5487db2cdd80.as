package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccLa1Ogg_2E_o_3A_d2a01b4f_2D_d3fd_2D_4bec_2D_9cd5_2D_5487db2cdd80
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_G_3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccLa1Ogg_2E_o_3A_d2a01b4f_2D_d3fd_2D_4bec_2D_9cd5_2D_5487db2cdd80(param1:Object) : void
   {
      var _loc2_:int = param1[".data"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
      var _loc3_:int = param1[".rodata"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS1());
   }
}
