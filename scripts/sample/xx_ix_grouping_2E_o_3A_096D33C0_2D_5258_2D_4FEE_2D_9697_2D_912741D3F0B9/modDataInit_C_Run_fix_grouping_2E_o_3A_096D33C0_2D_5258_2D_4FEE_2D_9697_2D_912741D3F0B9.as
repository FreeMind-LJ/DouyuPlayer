package sample.xx_ix_grouping_2E_o_3A_096D33C0_2D_5258_2D_4FEE_2D_9697_2D_912741D3F0B9
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_fix_grouping_2E_o_3A_096D33C0_2D_5258_2D_4FEE_2D_9697_2D_912741D3F0B9(param1:Object) : void
   {
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
   }
}
