package sample.xx_dtoa_strtodg_2E_o_3A_D03194A0_2D_E400_2D_413E_2D_98F8_2D_5D6B1524177D
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata":[CModule.allocDataSect(modPkgName,".rodata",92,16),92],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",12,0),12],
         ".text":[CModule.allocTextSect(modPkgName,".text",2896),2896]
      };
   }
}
