package sample.xx_printf_float_2E_o_3A_C4FC3488_2D_1919_2D_4ECA_2D_B95B_2D_0F277BFFF845
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",40,0),40],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",166,16),166],
         ".text":[CModule.allocTextSect(modPkgName,".text",1097),1097]
      };
   }
}
