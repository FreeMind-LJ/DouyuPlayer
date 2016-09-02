package sample.xx_indfp_2E_o_3A_98F2A02C_2D_FDD7_2D_4924_2D_9D30_2D_44B96552CC01
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",3968,8),3968],
         ".data.rel":[CModule.allocDataSect(modPkgName,".data.rel",696,16),696],
         ".data.rel.local":[CModule.allocDataSect(modPkgName,".data.rel.local",48,8),48],
         ".text":[CModule.allocTextSect(modPkgName,".text",425),425]
      };
   }
}
