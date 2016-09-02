package sample.xx_rrlst_2E_o_3A_F9334E5D_2D_D559_2D_4212_2D_A3BC_2D_BFE46E80CF02
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".data.rel.ro.local":[CModule.allocDataSect(modPkgName,".data.rel.ro.local",376,16),376],
         ".rodata.cst4":[CModule.allocDataSect(modPkgName,".rodata.cst4",4,4),4],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",224,0),224],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",2682,16),2682]
      };
   }
}
