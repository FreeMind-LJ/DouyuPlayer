package sample.xx_ysctl_2E_o_3A_30608893_2D_C683_2D_407A_2D_A12E_2D_2BE474AFB519
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",31,16),31],
         ".text":[CModule.allocTextSect(modPkgName,".text",385),385]
      };
   }
}
