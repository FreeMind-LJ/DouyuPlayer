package sample.xx_printf_2E_o_3A_6EDE186A_2D_A78D_2D_4139_2D_B1C2_2D_0C5D348116BA
{
   import sample.xx.ram;
   import avm2.intrinsics.memory.si32;
   import sample.xx.___printf_arginfo_float;
   import sample.xx.___printf_render_float;
   import sample.xx.___printf_arginfo_chr;
   import sample.xx.___printf_render_chr;
   import sample.xx.___printf_arginfo_str;
   import sample.xx.___printf_render_str;
   import sample.xx.___printf_arginfo_int;
   import sample.xx.___printf_render_int;
   import sample.xx.___printf_arginfo_ptr;
   import sample.xx.___printf_render_ptr;
   
   function modDataInit_C_Run_xprintf_2E_o_3A_6EDE186A_2D_A78D_2D_4139_2D_B1C2_2D_0C5D348116BA(param1:Object) : void
   {
      var _loc6_:int = param1[".data"][0];
      ram.position = _loc6_;
      ram.writeBytes(new DS0());
      var _loc5_:int = param1[".rodata"][0];
      ram.position = _loc5_;
      ram.writeBytes(new DS1());
      var _loc4_:int = param1[".data.rel"][0];
      ram.position = _loc4_;
      ram.writeBytes(new DS2());
      var _loc2_:int = param1[".rodata.str1.16"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS3());
      var _loc3_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS4());
      si32(___printf_arginfo_pct,_loc4_ + 444);
      si32(___printf_render_pct,_loc4_ + 452);
      si32(___printf_arginfo_float,_loc4_ + 780);
      si32(___printf_render_float,_loc4_ + 788);
      si32(___printf_arginfo_chr,_loc4_ + 804);
      si32(___printf_render_chr,_loc4_ + 812);
      si32(___printf_arginfo_float,_loc4_ + 828);
      si32(___printf_render_float,_loc4_ + 836);
      si32(___printf_arginfo_float,_loc4_ + 840);
      si32(___printf_render_float,_loc4_ + 848);
      si32(___printf_arginfo_float,_loc4_ + 852);
      si32(___printf_render_float,_loc4_ + 860);
      si32(___printf_arginfo_str,_loc4_ + 996);
      si32(___printf_render_str,_loc4_ + 1004);
      si32(___printf_arginfo_int,_loc4_ + 1056);
      si32(___printf_render_int,_loc4_ + 1064);
      si32(___printf_arginfo_float,_loc4_ + 1164);
      si32(___printf_render_float,_loc4_ + 1172);
      si32(___printf_arginfo_chr,_loc4_ + 1188);
      si32(___printf_render_chr,_loc4_ + 1196);
      si32(___printf_arginfo_int,_loc4_ + 1200);
      si32(___printf_render_int,_loc4_ + 1208);
      si32(___printf_arginfo_float,_loc4_ + 1212);
      si32(___printf_render_float,_loc4_ + 1220);
      si32(___printf_arginfo_float,_loc4_ + 1224);
      si32(___printf_render_float,_loc4_ + 1232);
      si32(___printf_arginfo_float,_loc4_ + 1236);
      si32(___printf_render_float,_loc4_ + 1244);
      si32(___printf_arginfo_int,_loc4_ + 1260);
      si32(___printf_render_int,_loc4_ + 1268);
      si32(___printf_arginfo_n,_loc4_ + 1320);
      si32(___printf_render_n,_loc4_ + 1324);
      si32(___printf_arginfo_int,_loc4_ + 1332);
      si32(___printf_render_int,_loc4_ + 1340);
      si32(___printf_arginfo_ptr,_loc4_ + 1344);
      si32(___printf_render_ptr,_loc4_ + 1352);
      si32(___printf_arginfo_int,_loc4_ + 1356);
      si32(___printf_render_int,_loc4_ + 1364);
      si32(___printf_arginfo_str,_loc4_ + 1380);
      si32(___printf_render_str,_loc4_ + 1388);
      si32(___printf_arginfo_int,_loc4_ + 1404);
      si32(___printf_render_int,_loc4_ + 1412);
      si32(___printf_arginfo_int,_loc4_ + 1440);
      si32(___printf_render_int,_loc4_ + 1448);
   }
}
