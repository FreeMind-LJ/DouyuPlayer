package sample.xx_indfp_2E_o_3A_98F2A02C_2D_FDD7_2D_4924_2D_9D30_2D_44B96552CC01
{
   import sample.xx.ram;
   import avm2.intrinsics.memory.si32;
   import sample.xx.___sclose;
   import sample.xx.___sread;
   import sample.xx.___sseek;
   import sample.xx.___swrite;
   
   function modDataInit_C_Run_findfp_2E_o_3A_98F2A02C_2D_FDD7_2D_4924_2D_9D30_2D_44B96552CC01(param1:Object) : void
   {
      var _loc4_:int = param1[".bss"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS0());
      var _loc3_:int = param1[".data.rel"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS1());
      var _loc2_:int = param1[".data.rel.local"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS2());
      si32(___sF,_loc2_ + 0);
      si32(_uglue,_loc2_ + 8);
      si32(___sF,_loc2_ + 16);
      si32(_usual,_loc2_ + 32);
      si32(___sF,_loc3_ + 28);
      si32(___sclose,_loc3_ + 32);
      si32(___sread,_loc3_ + 36);
      si32(___sseek,_loc3_ + 40);
      si32(___swrite,_loc3_ + 44);
      si32(___sF + 232,_loc3_ + 260);
      si32(___sclose,_loc3_ + 264);
      si32(___sread,_loc3_ + 268);
      si32(___sseek,_loc3_ + 272);
      si32(___swrite,_loc3_ + 276);
      si32(___sF + 464,_loc3_ + 492);
      si32(___sclose,_loc3_ + 496);
      si32(___sread,_loc3_ + 500);
      si32(___sseek,_loc3_ + 504);
      si32(___swrite,_loc3_ + 508);
      si32(_uglue,_loc2_ + 36);
      si32(___sF + 232,_loc2_ + 40);
      si32(___sF + 464,_loc2_ + 44);
   }
}
