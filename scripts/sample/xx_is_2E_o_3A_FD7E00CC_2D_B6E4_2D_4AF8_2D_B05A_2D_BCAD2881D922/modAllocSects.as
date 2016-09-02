package sample.xx_is_2E_o_3A_FD7E00CC_2D_B6E4_2D_4AF8_2D_B05A_2D_BCAD2881D922
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",7,0),7],
         ".text":[CModule.allocTextSect(modPkgName,".text",573),573]
      };
   }
}
