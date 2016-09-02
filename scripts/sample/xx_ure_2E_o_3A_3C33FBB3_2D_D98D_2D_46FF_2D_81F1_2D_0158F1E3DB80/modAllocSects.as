package sample.xx_ure_2E_o_3A_3C33FBB3_2D_D98D_2D_46FF_2D_81F1_2D_0158F1E3DB80
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",28,16),28],
         ".text":[CModule.allocTextSect(modPkgName,".text",135),135]
      };
   }
}
