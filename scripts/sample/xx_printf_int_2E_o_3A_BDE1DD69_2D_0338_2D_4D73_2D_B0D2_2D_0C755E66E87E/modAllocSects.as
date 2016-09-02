package sample.xx_printf_int_2E_o_3A_BDE1DD69_2D_0338_2D_4D73_2D_B0D2_2D_0C755E66E87E
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",38,0),38],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",228,16),228],
         ".text":[CModule.allocTextSect(modPkgName,".text",1173),1173]
      };
   }
}
