package sample.xx_dtoa_hd_init_2E_o_3A_61C57EB4_2D_DA1D_2D_42C0_2D_8DBE_2D_2E03408E23EC
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",256,16),256],
         ".text":[CModule.allocTextSect(modPkgName,".text",142),142]
      };
   }
}
