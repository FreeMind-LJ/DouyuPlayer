package sample.xx_h_terminate_2E_o_3A_E642DE23_2D_868E_2D_4DE2_2D_86DD_2D_2AB6F19AC061
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".gcc_except_table":[CModule.allocDataSect(modPkgName,".gcc_except_table",28,4),28],
         ".text":[CModule.allocTextSect(modPkgName,".text",390),390]
      };
   }
}
