package sample.xx_able_2E_o_3A_CAB5644C_2D_E945_2D_48C3_2D_9D5D_2D_7DBAB6A2CF7C
{
   import sample.xx.ram;
   import sample.xx.__DefaultRuneLocale;
   import avm2.intrinsics.memory.si32;
   
   function modDataInit_C_Run_table_2E_o_3A_CAB5644C_2D_E945_2D_48C3_2D_9D5D_2D_7DBAB6A2CF7C(param1:Object) : void
   {
      var _loc3_:int = param1[".data"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS0());
      var _loc2_:int = param1[".data.rel"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS1());
      si32(__DefaultRuneLocale,_loc2_ + 0);
   }
}
