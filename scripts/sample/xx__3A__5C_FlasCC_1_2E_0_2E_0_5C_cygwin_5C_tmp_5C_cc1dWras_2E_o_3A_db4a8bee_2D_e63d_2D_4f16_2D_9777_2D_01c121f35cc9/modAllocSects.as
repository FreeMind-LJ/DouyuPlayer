package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cc1dWras_2E_o_3A_db4a8bee_2D_e63d_2D_4f16_2D_9777_2D_01c121f35cc9
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
