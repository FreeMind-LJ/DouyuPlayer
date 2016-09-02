package sample.xx_b18030_2E_o_3A_899691D9_2D_34F6_2D_41FF_2D_825E_2D_1C8F82677FB1
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_gb18030_2E_o_3A_899691D9_2D_34F6_2D_41FF_2D_825E_2D_1C8F82677FB1(param1:Object) : void
   {
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
   }
}
