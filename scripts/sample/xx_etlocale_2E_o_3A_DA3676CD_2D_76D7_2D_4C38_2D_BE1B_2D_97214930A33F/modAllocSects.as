package sample.xx_etlocale_2E_o_3A_DA3676CD_2D_76D7_2D_4C38_2D_BE1B_2D_97214930A33F
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",688,8),688],
         ".data":[CModule.allocDataSect(modPkgName,".data",224,16),224],
         ".data.rel.ro.local":[CModule.allocDataSect(modPkgName,".data.rel.ro.local",28,16),28],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",89,0),89],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",18,16),18],
         ".text":[CModule.allocTextSect(modPkgName,".text",1070),1070]
      };
   }
}
