package sample.xx_able_2E_o_3A_CAB5644C_2D_E945_2D_48C3_2D_9D5D_2D_7DBAB6A2CF7C
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".data":[CModule.allocDataSect(modPkgName,".data",3156,16),3156],
         ".data.rel":[CModule.allocDataSect(modPkgName,".data.rel",4,4),4]
      };
   }
}
