package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccv2act1_2E_o_3A_8e9b016f_2D_a24e_2D_485a_2D_ad47_2D_98daa759481a
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",23,0),23],
         ".text":[CModule.allocTextSect(modPkgName,".text",140),140]
      };
   }
}
