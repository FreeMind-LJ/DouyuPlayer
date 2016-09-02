package sample.xx_toi_2E_o_3A_76F83586_2D_9EF6_2D_4DDD_2D_A553_2D_C1DEAAC5B081
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {".text":[CModule.allocTextSect(modPkgName,".text",127),127]};
   }
}
