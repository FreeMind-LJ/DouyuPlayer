package sample.xx_ig5_2E_o_3A_C5321009_2D_5A46_2D_4DFC_2D_8180_2D_6D517E9FA7D3
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_big5_2E_o_3A_C5321009_2D_5A46_2D_4DFC_2D_8180_2D_6D517E9FA7D3(param1:Object) : void
   {
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
   }
}
