package sample.xx_xit_2E_o_3A_1E3E96A2_2D_7230_2D_4E8B_2D_BAF8_2D_EE3D94D63C88
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",8,4),8],
         ".text":[CModule.allocTextSect(modPkgName,".text",145),145]
      };
   }
}
