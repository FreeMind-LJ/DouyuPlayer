package sample.xx_ew_op_2E_o_3A_7C0784B7_2D_37C0_2D_4AA7_2D_89DC_2D_797B4BF93334
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".gcc_except_table":[CModule.allocDataSect(modPkgName,".gcc_except_table",20,4),20],
         ".text":[CModule.allocTextSect(modPkgName,".text",290),290]
      };
   }
}
