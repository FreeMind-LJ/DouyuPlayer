package sample.xx_printf_errno_2E_o_3A_8ED5664B_2D_4B8E_2D_4F70_2D_ACFD_2D_37EBC9310175
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",21,0),21],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",144,16),144],
         ".text":[CModule.allocTextSect(modPkgName,".text",245),245]
      };
   }
}
