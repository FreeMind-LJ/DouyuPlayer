package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccMYJO5a_2E_o_3A_e94490d7_2D_9ec0_2D_4ec2_2D_a0d4_2D_8d42fc15770e
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",80,4),80],
         ".ctors":[CModule.allocDataSect(modPkgName,".ctors",4,4),4],
         ".gcc_except_table":[CModule.allocDataSect(modPkgName,".gcc_except_table",44,4),44],
         ".text":[CModule.allocTextSect(modPkgName,".text",111782),111782]
      };
   }
}
