package sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_string_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1(param1:Object) : void
   {
      var _loc7_:int = param1[".bss"][0];
      ram.position = _loc7_;
      ram.writeBytes(new DS0());
      var _loc6_:int = param1[".gcc_except_table"][0];
      ram.position = _loc6_;
      ram.writeBytes(new DS1());
      var _loc5_:int = param1[".rodata.__ZNSs4nposE"][0];
      ram.position = _loc5_;
      ram.writeBytes(new DS2());
      var _loc2_:int = param1[".rodata.__ZNSs4_Rep11_S_max_sizeE"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS3());
      var _loc3_:int = param1[".rodata.__ZNSs4_Rep11_S_terminalE"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS4());
      var _loc4_:int = param1[".rodata.str1.16"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS5());
   }
}
