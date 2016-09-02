package sample.xx_ocaleconv_2E_o_3A_6494FC27_2D_4F02_2D_483A_2D_8E6D_2D_0B3E6E3780B0
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",56,8),56],
         ".data":[CModule.allocDataSect(modPkgName,".data",8,4),8],
         ".text":[CModule.allocTextSect(modPkgName,".text",213),213]
      };
   }
}
