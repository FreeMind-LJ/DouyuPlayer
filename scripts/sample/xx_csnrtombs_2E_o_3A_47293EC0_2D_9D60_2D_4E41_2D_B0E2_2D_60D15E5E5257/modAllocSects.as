package sample.xx_csnrtombs_2E_o_3A_47293EC0_2D_9D60_2D_4E41_2D_B0E2_2D_60D15E5E5257
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",128,8),128],
         ".text":[CModule.allocTextSect(modPkgName,".text",393),393]
      };
   }
}
