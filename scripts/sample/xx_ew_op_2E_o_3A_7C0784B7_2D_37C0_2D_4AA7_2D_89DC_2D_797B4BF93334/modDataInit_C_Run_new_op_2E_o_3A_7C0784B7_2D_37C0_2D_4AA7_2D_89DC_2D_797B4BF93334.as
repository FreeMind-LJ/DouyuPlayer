package sample.xx_ew_op_2E_o_3A_7C0784B7_2D_37C0_2D_4AA7_2D_89DC_2D_797B4BF93334
{
   import sample.xx.ram;
   import sample.xx.__ZTISt9bad_alloc;
   import avm2.intrinsics.memory.si32;
   
   function modDataInit_C_Run_new_op_2E_o_3A_7C0784B7_2D_37C0_2D_4AA7_2D_89DC_2D_797B4BF93334(param1:Object) : void
   {
      var _loc2_:int = param1[".gcc_except_table"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
      si32(__ZTISt9bad_alloc,_loc2_ + 12);
   }
}
