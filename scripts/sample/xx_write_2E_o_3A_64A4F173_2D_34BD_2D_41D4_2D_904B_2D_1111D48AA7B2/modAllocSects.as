package sample.xx_write_2E_o_3A_64A4F173_2D_34BD_2D_41D4_2D_904B_2D_1111D48AA7B2
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {".text":[CModule.allocTextSect(modPkgName,".text",188),188]};
   }
}
