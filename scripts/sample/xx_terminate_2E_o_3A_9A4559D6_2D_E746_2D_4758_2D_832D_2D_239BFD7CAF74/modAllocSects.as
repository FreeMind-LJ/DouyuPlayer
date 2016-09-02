package sample.xx_terminate_2E_o_3A_9A4559D6_2D_E746_2D_4758_2D_832D_2D_239BFD7CAF74
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",1,1),1],
         ".gcc_except_table":[CModule.allocDataSect(modPkgName,".gcc_except_table",32,4),32],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",15,0),15],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",142,16),142],
         ".text":[CModule.allocTextSect(modPkgName,".text",446),446]
      };
   }
}
