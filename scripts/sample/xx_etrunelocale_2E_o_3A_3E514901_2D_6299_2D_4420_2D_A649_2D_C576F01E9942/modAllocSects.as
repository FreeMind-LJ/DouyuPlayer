package sample.xx_etrunelocale_2E_o_3A_3E514901_2D_6299_2D_4420_2D_A649_2D_C576F01E9942
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",68,8),68],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",73,0),73],
         ".text":[CModule.allocTextSect(modPkgName,".text",642),642]
      };
   }
}
