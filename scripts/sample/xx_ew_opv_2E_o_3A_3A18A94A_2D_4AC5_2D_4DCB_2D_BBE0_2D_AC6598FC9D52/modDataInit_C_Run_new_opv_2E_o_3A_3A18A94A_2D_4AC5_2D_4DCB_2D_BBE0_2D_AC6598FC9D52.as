package sample.xx_ew_opv_2E_o_3A_3A18A94A_2D_4AC5_2D_4DCB_2D_BBE0_2D_AC6598FC9D52
{
   import sample.xx.ram;
   import sample.xx.__ZTISt9bad_alloc;
   import avm2.intrinsics.memory.si32;
   
   function modDataInit_C_Run_new_opv_2E_o_3A_3A18A94A_2D_4AC5_2D_4DCB_2D_BBE0_2D_AC6598FC9D52(param1:Object) : void
   {
      var _loc2_:int = param1[".gcc_except_table"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
      si32(__ZTISt9bad_alloc,_loc2_ + 12);
   }
}
