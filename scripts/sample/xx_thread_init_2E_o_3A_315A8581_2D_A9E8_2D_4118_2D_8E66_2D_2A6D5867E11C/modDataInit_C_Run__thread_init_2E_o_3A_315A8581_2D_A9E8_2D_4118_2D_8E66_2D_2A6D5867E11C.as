package sample.xx_thread_init_2E_o_3A_315A8581_2D_A9E8_2D_4118_2D_8E66_2D_2A6D5867E11C
{
   import sample.xx.ram;
   
   function modDataInit_C_Run__thread_init_2E_o_3A_315A8581_2D_A9E8_2D_4118_2D_8E66_2D_2A6D5867E11C(param1:Object) : void
   {
      var _loc2_:int = param1[".bss"][0];
      ram.position = _loc2_;
      ram.writeBytes(new DS0());
   }
}
