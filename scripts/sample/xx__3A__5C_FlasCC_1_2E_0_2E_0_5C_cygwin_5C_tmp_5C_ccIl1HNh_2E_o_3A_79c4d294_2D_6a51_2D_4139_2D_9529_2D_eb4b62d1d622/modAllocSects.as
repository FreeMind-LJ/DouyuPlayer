package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccIl1HNh_2E_o_3A_79c4d294_2D_6a51_2D_4139_2D_9529_2D_eb4b62d1d622
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",160,4),160],
         ".ctors":[CModule.allocDataSect(modPkgName,".ctors",4,4),4],
         ".gcc_except_table":[CModule.allocDataSect(modPkgName,".gcc_except_table",84,4),84],
         ".text":[CModule.allocTextSect(modPkgName,".text",219422),219422]
      };
   }
}
