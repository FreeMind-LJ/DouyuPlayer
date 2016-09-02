package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccWOpgXM_2E_o_3A_e07a7c20_2D_50a5_2D_4908_2D_bae4_2D_6489778f0fee
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".gcc_except_table":[CModule.allocDataSect(modPkgName,".gcc_except_table",24,4),24],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",5,0),5],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",175,16),175],
         ".text":[CModule.allocTextSect(modPkgName,".text",1309),1309]
      };
   }
}
