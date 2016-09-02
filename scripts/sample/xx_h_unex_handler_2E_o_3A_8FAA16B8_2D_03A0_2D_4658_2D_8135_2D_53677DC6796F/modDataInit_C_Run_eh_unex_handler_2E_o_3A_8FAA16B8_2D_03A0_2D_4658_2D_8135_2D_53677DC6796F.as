package sample.xx_h_unex_handler_2E_o_3A_8FAA16B8_2D_03A0_2D_4658_2D_8135_2D_53677DC6796F
{
   import sample.xx.ram;
   import sample.xx.__ZSt9terminatev;
   import avm2.intrinsics.memory.si32;
   
   function modDataInit_C_Run_eh_unex_handler_2E_o_3A_8FAA16B8_2D_03A0_2D_4658_2D_8135_2D_53677DC6796F(param1:Object) : void
   {
      var _loc2_:int = param1[".data.rel"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
      si32(__ZSt9terminatev,_loc2_ + 0);
   }
}
