package sample.xx_printf_quote_2E_o_3A_1AE5FDB1_2D_E170_2D_4A5B_2D_8B15_2D_70E1E37D78F8
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",44,0),44],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",144,16),144],
         ".text":[CModule.allocTextSect(modPkgName,".text",451),451]
      };
   }
}
