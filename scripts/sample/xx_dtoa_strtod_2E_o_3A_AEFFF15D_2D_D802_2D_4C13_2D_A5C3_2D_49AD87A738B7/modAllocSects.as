package sample.xx_dtoa_strtod_2E_o_3A_AEFFF15D_2D_D802_2D_4C13_2D_A5C3_2D_49AD87A738B7
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".data":[CModule.allocDataSect(modPkgName,".data",20,16),20],
         ".rodata":[CModule.allocDataSect(modPkgName,".rodata",40,16),40],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",12,0),12],
         ".text":[CModule.allocTextSect(modPkgName,".text",1858),1858]
      };
   }
}
