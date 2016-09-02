package sample.xx_h_globals_2E_o_3A_BE3703DC_2D_DDE4_2D_433D_2D_A974_2D_4A1C4EA1F40C
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",16,8),16],
         ".ctors":[CModule.allocDataSect(modPkgName,".ctors",4,4),4],
         ".dtors":[CModule.allocDataSect(modPkgName,".dtors",4,4),4],
         ".gcc_except_table":[CModule.allocDataSect(modPkgName,".gcc_except_table",36,4),36],
         ".text":[CModule.allocTextSect(modPkgName,".text",550),550]
      };
   }
}
