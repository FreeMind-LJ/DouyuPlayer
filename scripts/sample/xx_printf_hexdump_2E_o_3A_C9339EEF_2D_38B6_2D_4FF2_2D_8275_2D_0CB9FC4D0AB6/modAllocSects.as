package sample.xx_printf_hexdump_2E_o_3A_C9339EEF_2D_38B6_2D_4FF2_2D_8275_2D_0CB9FC4D0AB6
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",19,0),19],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",146,16),146],
         ".text":[CModule.allocTextSect(modPkgName,".text",405),405]
      };
   }
}
