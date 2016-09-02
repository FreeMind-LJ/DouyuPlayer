package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cc5UFCUx_2E_o_3A_f06dd027_2D_1a9a_2D_4eae_2D_8cb5_2D_2cc3d6e72edf
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata":[CModule.allocDataSect(modPkgName,".rodata",14,0),14],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",369,16),369],
         ".text":[CModule.allocTextSect(modPkgName,".text",925),925]
      };
   }
}
