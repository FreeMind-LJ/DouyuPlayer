package sample.xx_h_catch_2E_o_3A_10AD40DF_2D_77B4_2D_4E8F_2D_8C4E_2D_E570C00524BE
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".gcc_except_table":[CModule.allocDataSect(modPkgName,".gcc_except_table",16,4),16],
         ".text":[CModule.allocTextSect(modPkgName,".text",406),406]
      };
   }
}
