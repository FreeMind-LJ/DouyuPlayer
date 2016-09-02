package sample.xx_ew_opv_2E_o_3A_3A18A94A_2D_4AC5_2D_4DCB_2D_BBE0_2D_AC6598FC9D52
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".gcc_except_table":[CModule.allocDataSect(modPkgName,".gcc_except_table",20,4),20],
         ".text":[CModule.allocTextSect(modPkgName,".text",237),237]
      };
   }
}
