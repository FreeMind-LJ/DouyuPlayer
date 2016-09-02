package sample.xx_hrStubs_2E_o_3A_4F893C77_2D_5C33_2D_4E01_2D_9567_2D_4F52CEEB5331
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",8,4),8],
         ".data":[CModule.allocDataSect(modPkgName,".data",4,4),4],
         ".text":[CModule.allocTextSect(modPkgName,".text",557),557]
      };
   }
}
