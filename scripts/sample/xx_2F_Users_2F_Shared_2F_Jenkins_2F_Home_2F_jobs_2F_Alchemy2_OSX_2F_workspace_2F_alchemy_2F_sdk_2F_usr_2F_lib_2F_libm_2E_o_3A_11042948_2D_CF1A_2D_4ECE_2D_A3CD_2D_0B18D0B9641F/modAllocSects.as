package sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",32,16),32],
         ".data":[CModule.allocDataSect(modPkgName,".data",68,8),68],
         ".rodata":[CModule.allocDataSect(modPkgName,".rodata",9152,16),9152],
         ".rodata.cst16":[CModule.allocDataSect(modPkgName,".rodata.cst16",320,8),320],
         ".rodata.cst8":[CModule.allocDataSect(modPkgName,".rodata.cst8",104,4),104],
         ".text":[CModule.allocTextSect(modPkgName,".text",40217),40217]
      };
   }
}
