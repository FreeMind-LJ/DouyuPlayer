package sample.xx_pmalloc_2E_o_3A_7B38AAF0_2D_F8D0_2D_4EBF_2D_BC26_2D_806D96EC8230
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",68,8),68],
         ".text":[CModule.allocTextSect(modPkgName,".text",512),512]
      };
   }
}
