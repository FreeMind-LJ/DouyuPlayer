package sample.xx_dtoa_misc_2E_o_3A_CAC42ED2_2D_032E_2D_4175_2D_B9DB_2D_C2338140AFF7
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",2348,8),2348],
         ".data.rel.local":[CModule.allocDataSect(modPkgName,".data.rel.local",4,4),4],
         ".rodata":[CModule.allocDataSect(modPkgName,".rodata",296,16),296],
         ".text":[CModule.allocTextSect(modPkgName,".text",1832),1832]
      };
   }
}
