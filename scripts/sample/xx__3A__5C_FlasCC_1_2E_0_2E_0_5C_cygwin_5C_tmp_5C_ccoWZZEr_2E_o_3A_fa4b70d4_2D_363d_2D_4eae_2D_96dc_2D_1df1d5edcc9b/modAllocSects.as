package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccoWZZEr_2E_o_3A_fa4b70d4_2D_363d_2D_4eae_2D_96dc_2D_1df1d5edcc9b
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",840,16),840],
         ".gcc_except_table":[CModule.allocDataSect(modPkgName,".gcc_except_table",16,4),16],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",3,0),3],
         ".text":[CModule.allocTextSect(modPkgName,".text",1394),1394]
      };
   }
}
