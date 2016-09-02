package sample.xx_ern_umtx_2E_o_3A_11C72270_2D_A3AB_2D_4798_2D_8F10_2D_4F543D95D387
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",11284,8),11284],
         ".ctors":[CModule.allocDataSect(modPkgName,".ctors",4,4),4],
         ".data.rel.ro.local":[CModule.allocDataSect(modPkgName,".data.rel.ro.local",76,16),76],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",68,0),68],
         ".text":[CModule.allocTextSect(modPkgName,".text",6578),6578]
      };
   }
}
