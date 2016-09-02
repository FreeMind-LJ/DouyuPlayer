package sample.xx_printf_vis_2E_o_3A_A9926426_2D_67E4_2D_4B3E_2D_96A9_2D_2DD2FA10A150
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",14,0),14],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",142,16),142],
         ".text":[CModule.allocTextSect(modPkgName,".text",299),299]
      };
   }
}
