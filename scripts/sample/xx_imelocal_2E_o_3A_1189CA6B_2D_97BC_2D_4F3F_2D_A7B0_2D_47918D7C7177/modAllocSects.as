package sample.xx_imelocal_2E_o_3A_1189CA6B_2D_97BC_2D_4F3F_2D_A7B0_2D_47918D7C7177
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",244,8),244],
         ".data.rel.ro.local":[CModule.allocDataSect(modPkgName,".data.rel.ro.local",232,16),232],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",262,0),262],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",56,16),56],
         ".text":[CModule.allocTextSect(modPkgName,".text",357),357]
      };
   }
}
