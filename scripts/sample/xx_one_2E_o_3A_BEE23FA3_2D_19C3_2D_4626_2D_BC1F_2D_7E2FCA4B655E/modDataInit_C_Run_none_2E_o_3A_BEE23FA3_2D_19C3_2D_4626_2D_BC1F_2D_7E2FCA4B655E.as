package sample.xx_one_2E_o_3A_BEE23FA3_2D_19C3_2D_4626_2D_BC1F_2D_7E2FCA4B655E
{
   import sample.xx.ram;
   import avm2.intrinsics.memory.si32;
   
   function modDataInit_C_Run_none_2E_o_3A_BEE23FA3_2D_19C3_2D_4626_2D_BC1F_2D_7E2FCA4B655E(param1:Object) : void
   {
      var _loc3_:int = param1[".data"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS0());
      var _loc2_:int = param1[".data.rel.local"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS1());
      si32(__none_mbrtowc,_loc2_ + 0);
      si32(__none_mbsinit,_loc2_ + 4);
      si32(__none_mbsnrtowcs,_loc2_ + 8);
      si32(__none_wcrtomb,_loc2_ + 12);
      si32(__none_wcsnrtombs,_loc2_ + 16);
   }
}
