package sample.xx_etpagesizes_2E_o_3A_94557115_2D_6028_2D_4C7A_2D_A482_2D_8F0E37EB546E
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_getpagesizes_2E_o_3A_94557115_2D_6028_2D_4C7A_2D_A482_2D_8F0E37EB546E(param1:Object) : void
   {
      var _loc3_:int = param1[".bss"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS0());
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS1());
   }
}
