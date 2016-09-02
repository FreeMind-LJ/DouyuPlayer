package sample.xx_uc_2E_o_3A_9BEB9C05_2D_DB15_2D_40C0_2D_ABEB_2D_0D0E9808D49E
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",1,0),1],
         ".text":[CModule.allocTextSect(modPkgName,".text",629),629]
      };
   }
}
