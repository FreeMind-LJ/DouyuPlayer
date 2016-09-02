package sample.xx_fprintf_2E_o_3A_0BC8B663_2D_A41B_2D_4979_2D_8659_2D_24B6D3749F76
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.cst16":[CModule.allocDataSect(modPkgName,".rodata.cst16",64,0),64],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",35,0),35],
         ".text":[CModule.allocTextSect(modPkgName,".text",4427),4427]
      };
   }
}
