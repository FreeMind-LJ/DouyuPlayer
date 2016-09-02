package sample.xx_thread_init_2E_o_3A_315A8581_2D_A9E8_2D_4118_2D_8E66_2D_2A6D5867E11C
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",4,4),4],
         ".text":[CModule.allocTextSect(modPkgName,".text",131),131]
      };
   }
}
