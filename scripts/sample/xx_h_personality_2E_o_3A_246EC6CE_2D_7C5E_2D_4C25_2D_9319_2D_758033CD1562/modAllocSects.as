package sample.xx_h_personality_2E_o_3A_246EC6CE_2D_7C5E_2D_4C25_2D_9319_2D_758033CD1562
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".gcc_except_table":[CModule.allocDataSect(modPkgName,".gcc_except_table",64,4),64],
         ".text":[CModule.allocTextSect(modPkgName,".text",1811),1811]
      };
   }
}
