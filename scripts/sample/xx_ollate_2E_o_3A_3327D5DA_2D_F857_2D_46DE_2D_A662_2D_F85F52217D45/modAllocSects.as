package sample.xx_ollate_2E_o_3A_3327D5DA_2D_F857_2D_46DE_2D_A662_2D_F85F52217D45
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",52,8),52],
         ".data":[CModule.allocDataSect(modPkgName,".data",4,4),4],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",38,0),38],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",53,16),53],
         ".text":[CModule.allocTextSect(modPkgName,".text",1138),1138]
      };
   }
}
