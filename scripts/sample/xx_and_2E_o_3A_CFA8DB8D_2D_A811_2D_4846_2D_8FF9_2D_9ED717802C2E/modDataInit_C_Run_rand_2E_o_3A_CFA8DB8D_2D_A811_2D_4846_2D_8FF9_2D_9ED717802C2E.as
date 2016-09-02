package sample.xx_and_2E_o_3A_CFA8DB8D_2D_A811_2D_4846_2D_8FF9_2D_9ED717802C2E
{
   import sample.xx.ram;
   
   function modDataInit_C_Run_rand_2E_o_3A_CFA8DB8D_2D_A811_2D_4846_2D_8FF9_2D_9ED717802C2E(param1:Object) : void
   {
      var _loc3_:int = param1[".data"][0];
      ram.position = _loc3_;
      ram.writeBytes(new DS0());
      var _loc2_:int = param1[".rodata.str1.1"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS1());
   }
}
