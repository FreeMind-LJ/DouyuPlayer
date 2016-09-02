package sample.xx_nwind_2D_sjlj_2E_o_3A_AB7D2B82_2D_CFCA_2D_47B6_2D_8B3C_2D_7E9171E8B0E4
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",16,8),16],
         ".data":[CModule.allocDataSect(modPkgName,".data",4,4),4],
         ".text":[CModule.allocTextSect(modPkgName,".text",1345),1345]
      };
   }
}
