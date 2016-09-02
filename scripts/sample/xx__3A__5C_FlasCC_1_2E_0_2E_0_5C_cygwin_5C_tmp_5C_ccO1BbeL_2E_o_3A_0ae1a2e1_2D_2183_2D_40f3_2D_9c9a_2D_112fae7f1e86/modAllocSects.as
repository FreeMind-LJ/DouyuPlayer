package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccO1BbeL_2E_o_3A_0ae1a2e1_2D_2183_2D_40f3_2D_9c9a_2D_112fae7f1e86
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",64,16),64],
         ".data":[CModule.allocDataSect(modPkgName,".data",272,16),272],
         ".rodata":[CModule.allocDataSect(modPkgName,".rodata",512,16),512],
         ".text":[CModule.allocTextSect(modPkgName,".text",1562),1562]
      };
   }
}
