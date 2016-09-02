package sample.xx_sgcat_2E_o_3A_F0068227_2D_D04A_2D_4BF4_2D_8735_2D_ECF05396B5D8
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",18,0),18],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",104,16),104],
         ".text":[CModule.allocTextSect(modPkgName,".text",901),901]
      };
   }
}
