package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cchCDFRt_2E_o_3A_c0d03da0_2D_345c_2D_4b60_2D_8d26_2D_1d692728930e
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".data":[CModule.allocDataSect(modPkgName,".data",64,16),64],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",5,0),5],
         ".text":[CModule.allocTextSect(modPkgName,".text",1118),1118]
      };
   }
}
