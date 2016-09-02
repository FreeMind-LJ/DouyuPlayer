package sample.xx_dtoa_gdtoa_2E_o_3A_92ABCEF5_2D_4FB7_2D_41A4_2D_BBA8_2D_EEDE6272412C
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",15,0),15],
         ".text":[CModule.allocTextSect(modPkgName,".text",1813),1813]
      };
   }
}
