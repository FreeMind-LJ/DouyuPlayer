package sample.xx_trdup_2E_o_3A_30222CD9_2D_346F_2D_4CBC_2D_911D_2D_B3631EBF26A8
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {".text":[CModule.allocTextSect(modPkgName,".text",150),150]};
   }
}
