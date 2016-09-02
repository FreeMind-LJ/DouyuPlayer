package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccvjjli2_2E_o_3A_1045e9bd_2D_05f2_2D_4768_2D_82e1_2D_fa723c4aab1a
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",208,8),208],
         ".rodata":[CModule.allocDataSect(modPkgName,".rodata",767,16),767],
         ".text":[CModule.allocTextSect(modPkgName,".text",1260),1260]
      };
   }
}
