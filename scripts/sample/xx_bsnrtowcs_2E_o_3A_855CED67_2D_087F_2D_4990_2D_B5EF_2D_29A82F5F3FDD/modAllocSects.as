package sample.xx_bsnrtowcs_2E_o_3A_855CED67_2D_087F_2D_4990_2D_B5EF_2D_29A82F5F3FDD
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",128,8),128],
         ".text":[CModule.allocTextSect(modPkgName,".text",255),255]
      };
   }
}
