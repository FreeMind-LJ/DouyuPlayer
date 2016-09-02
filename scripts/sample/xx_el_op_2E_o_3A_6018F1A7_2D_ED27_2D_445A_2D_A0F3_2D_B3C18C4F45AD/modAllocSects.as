package sample.xx_el_op_2E_o_3A_6018F1A7_2D_ED27_2D_445A_2D_A0F3_2D_B3C18C4F45AD
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {".text":[CModule.allocTextSect(modPkgName,".text",127),127]};
   }
}
