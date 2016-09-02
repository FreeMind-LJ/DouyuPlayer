package sample.xx_printf_2E_o_3A_6EDE186A_2D_A78D_2D_4139_2D_B1C2_2D_0C5D348116BA
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".data":[CModule.allocDataSect(modPkgName,".data",36,4),36],
         ".data.rel":[CModule.allocDataSect(modPkgName,".data.rel",3072,16),3072],
         ".rodata":[CModule.allocDataSect(modPkgName,".rodata",49,16),49],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",9,0),9],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",226,16),226],
         ".text":[CModule.allocTextSect(modPkgName,".text",1853),1853]
      };
   }
}
