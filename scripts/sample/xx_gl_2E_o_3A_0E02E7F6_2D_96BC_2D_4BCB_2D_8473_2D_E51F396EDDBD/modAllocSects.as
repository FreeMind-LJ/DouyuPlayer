package sample.xx_gl_2E_o_3A_0E02E7F6_2D_96BC_2D_4BCB_2D_8473_2D_E51F396EDDBD
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",24,4),24],
         ".data":[CModule.allocDataSect(modPkgName,".data",12,4),12],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",33,16),33],
         ".text":[CModule.allocTextSect(modPkgName,".text",451),451]
      };
   }
}
