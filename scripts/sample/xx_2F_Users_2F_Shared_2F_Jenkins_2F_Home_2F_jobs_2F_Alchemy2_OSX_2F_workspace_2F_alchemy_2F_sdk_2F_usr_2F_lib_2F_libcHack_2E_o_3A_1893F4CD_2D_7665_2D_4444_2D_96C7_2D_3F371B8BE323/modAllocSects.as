package sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libcHack_2E_o_3A_1893F4CD_2D_7665_2D_4444_2D_96C7_2D_3F371B8BE323
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",197708,8),197708],
         ".data":[CModule.allocDataSect(modPkgName,".data",104,16),104],
         ".data.rel":[CModule.allocDataSect(modPkgName,".data.rel",32,16),32],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",25,0),25],
         ".text":[CModule.allocTextSect(modPkgName,".text",9118),9118]
      };
   }
}
