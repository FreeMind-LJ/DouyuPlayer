package sample.xx_h_term_handler_2E_o_3A_24A527D4_2D_2EA6_2D_4217_2D_8FEC_2D_A84D93F531C9
{
   import sample.xx.ram;
   import sample.xx.__ZN9__gnu_cxx27__verbose_terminate_handlerEv;
   import avm2.intrinsics.memory.si32;
   
   function modDataInit_C_Run_eh_term_handler_2E_o_3A_24A527D4_2D_2EA6_2D_4217_2D_8FEC_2D_A84D93F531C9(param1:Object) : void
   {
      var _loc2_:int = param1[".data.rel"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
      si32(__ZN9__gnu_cxx27__verbose_terminate_handlerEv,_loc2_ + 0);
   }
}
