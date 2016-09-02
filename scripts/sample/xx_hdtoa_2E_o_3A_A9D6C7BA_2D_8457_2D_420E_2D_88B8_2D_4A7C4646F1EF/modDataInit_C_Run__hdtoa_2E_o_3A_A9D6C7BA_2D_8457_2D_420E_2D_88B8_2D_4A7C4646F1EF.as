package sample.xx_hdtoa_2E_o_3A_A9D6C7BA_2D_8457_2D_420E_2D_88B8_2D_4A7C4646F1EF
{
   import sample.xx.ram;
   
   function modDataInit_C_Run__hdtoa_2E_o_3A_A9D6C7BA_2D_8457_2D_420E_2D_88B8_2D_4A7C4646F1EF(param1:Object) : void
   {
      var _loc3_:int = param1[".rodata.cst8"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS0());
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS1());
   }
}
