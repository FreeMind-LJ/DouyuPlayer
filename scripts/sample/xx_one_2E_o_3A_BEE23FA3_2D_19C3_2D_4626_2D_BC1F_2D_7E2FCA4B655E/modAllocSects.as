package sample.xx_one_2E_o_3A_BEE23FA3_2D_19C3_2D_4626_2D_BC1F_2D_7E2FCA4B655E
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".data":[CModule.allocDataSect(modPkgName,".data",8,4),8],
         ".data.rel.local":[CModule.allocDataSect(modPkgName,".data.rel.local",20,4),20],
         ".text":[CModule.allocTextSect(modPkgName,".text",440),440]
      };
   }
}
