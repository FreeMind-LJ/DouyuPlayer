package sample.xx_skanji_2E_o_3A_3601F93B_2D_5B5A_2D_4D89_2D_B452_2D_CF531CF3B516
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",1,0),1],
         ".text":[CModule.allocTextSect(modPkgName,".text",360),360]
      };
   }
}
