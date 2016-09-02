package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cc88TyAk_2E_o_3A_bbfd1c34_2D_06d1_2D_4424_2D_b888_2D_e4144a3847dc
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata":[CModule.allocDataSect(modPkgName,".rodata",3968,16),3968],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",53,0),53],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",17,16),17],
         ".text":[CModule.allocTextSect(modPkgName,".text",2381),2381]
      };
   }
}
