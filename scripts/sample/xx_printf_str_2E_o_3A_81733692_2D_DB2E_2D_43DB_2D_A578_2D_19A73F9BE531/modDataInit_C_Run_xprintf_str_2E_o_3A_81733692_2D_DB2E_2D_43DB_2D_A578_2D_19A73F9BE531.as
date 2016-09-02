package sample.xx_printf_str_2E_o_3A_81733692_2D_DB2E_2D_43DB_2D_A578_2D_19A73F9BE531
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_xprintf_str_2E_o_3A_81733692_2D_DB2E_2D_43DB_2D_A578_2D_19A73F9BE531(param1:Object) : void
   {
      var _loc3_:int = param1[".rodata.str1.16"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS0());
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS1());
   }
}
