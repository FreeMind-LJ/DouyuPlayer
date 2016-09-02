package sample.xx_tdio_2E_o_3A_66A14D5B_2D_6B97_2D_4D20_2D_8A3C_2D_E15E93A91578
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {".text":[CModule.allocTextSect(modPkgName,".text",600),600]};
   }
}
