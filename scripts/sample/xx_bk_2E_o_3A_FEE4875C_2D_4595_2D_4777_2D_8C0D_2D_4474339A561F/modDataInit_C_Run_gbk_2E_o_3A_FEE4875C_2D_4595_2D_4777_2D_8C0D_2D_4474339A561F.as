package sample.xx_bk_2E_o_3A_FEE4875C_2D_4595_2D_4777_2D_8C0D_2D_4474339A561F
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_gbk_2E_o_3A_FEE4875C_2D_4595_2D_4777_2D_8C0D_2D_4474339A561F(param1:Object) : void
   {
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
   }
}
