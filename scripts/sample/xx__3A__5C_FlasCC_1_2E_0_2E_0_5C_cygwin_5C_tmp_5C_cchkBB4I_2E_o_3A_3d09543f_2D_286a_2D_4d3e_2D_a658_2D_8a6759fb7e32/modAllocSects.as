package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cchkBB4I_2E_o_3A_3d09543f_2D_286a_2D_4d3e_2D_a658_2D_8a6759fb7e32
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",1,0),1],
         ".gcc_except_table":[CModule.allocDataSect(modPkgName,".gcc_except_table",68,4),68],
         ".rodata":[CModule.allocDataSect(modPkgName,".rodata",672,16),672],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",34,0),34],
         ".text":[CModule.allocTextSect(modPkgName,".text",1740),1740]
      };
   }
}
