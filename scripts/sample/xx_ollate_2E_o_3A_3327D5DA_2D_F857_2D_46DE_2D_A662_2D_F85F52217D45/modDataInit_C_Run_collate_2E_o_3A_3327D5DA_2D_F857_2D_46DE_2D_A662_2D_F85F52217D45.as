package sample.xx_ollate_2E_o_3A_3327D5DA_2D_F857_2D_46DE_2D_A662_2D_F85F52217D45
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_collate_2E_o_3A_3327D5DA_2D_F857_2D_46DE_2D_A662_2D_F85F52217D45(param1:Object) : void
   {
      var _loc5_:int = param1[".bss"][0];
      ram.position = _loc5_;
      ram.writeBytes(new DS0());
      var _loc4_:int = param1[".data"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS1());
      var _loc3_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS2());
      var _loc2_:int = param1[".rodata.str1.16"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS3());
   }
}
