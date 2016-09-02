package sample.xx_pthread_stubs_2E_o_3A_1BC016DC_2D_6B59_2D_42A2_2D_BE1C_2D_8925C8016454
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",1,1),1],
         ".data.rel.local":[CModule.allocDataSect(modPkgName,".data.rel.local",472,16),472],
         ".text":[CModule.allocTextSect(modPkgName,".text",4978),4978]
      };
   }
}
