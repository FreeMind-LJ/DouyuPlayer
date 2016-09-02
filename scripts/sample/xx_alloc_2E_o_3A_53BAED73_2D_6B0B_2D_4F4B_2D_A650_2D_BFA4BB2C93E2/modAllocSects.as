package sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",284,8),284],
         ".data":[CModule.allocDataSect(modPkgName,".data",16,4),16],
         ".data.rel.local":[CModule.allocDataSect(modPkgName,".data.rel.local",4,4),4],
         ".rodata":[CModule.allocDataSect(modPkgName,".rodata",4336,16),4336],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",166,0),166],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",749,16),749],
         ".text":[CModule.allocTextSect(modPkgName,".text",12913),12913]
      };
   }
}
