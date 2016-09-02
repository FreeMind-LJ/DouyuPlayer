package sample.xx_lue_2E_o_3A_FE96C52C_2D_E0BE_2D_4A10_2D_A763_2D_AA9FF3AD7C04
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_glue_2E_o_3A_FE96C52C_2D_E0BE_2D_4A10_2D_A763_2D_AA9FF3AD7C04(param1:Object) : void
   {
      var _loc2_:int = param1[".bss"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
   }
}
