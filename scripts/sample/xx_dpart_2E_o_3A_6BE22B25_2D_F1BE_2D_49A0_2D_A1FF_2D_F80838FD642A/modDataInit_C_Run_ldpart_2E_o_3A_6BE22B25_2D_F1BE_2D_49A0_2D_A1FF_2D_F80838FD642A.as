package sample.xx_dpart_2E_o_3A_6BE22B25_2D_F1BE_2D_49A0_2D_A1FF_2D_F80838FD642A
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_ldpart_2E_o_3A_6BE22B25_2D_F1BE_2D_49A0_2D_A1FF_2D_F80838FD642A(param1:Object) : void
   {
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
   }
}
