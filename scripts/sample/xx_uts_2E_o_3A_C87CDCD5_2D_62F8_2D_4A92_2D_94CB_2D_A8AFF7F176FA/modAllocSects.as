package sample.xx_uts_2E_o_3A_C87CDCD5_2D_62F8_2D_4A92_2D_94CB_2D_A8AFF7F176FA
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",2,0),2],
         ".text":[CModule.allocTextSect(modPkgName,".text",193),193]
      };
   }
}
