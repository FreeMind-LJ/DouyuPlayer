package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccf8iwcn_2E_o_3A_97b2014d_2D_8ddb_2D_4d42_2D_b61d_2D_986fcc55eb9e
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",1,0),1],
         ".gcc_except_table":[CModule.allocDataSect(modPkgName,".gcc_except_table",152,4),152],
         ".rodata":[CModule.allocDataSect(modPkgName,".rodata",960,16),960],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",43,0),43],
         ".text":[CModule.allocTextSect(modPkgName,".text",3837),3837]
      };
   }
}
