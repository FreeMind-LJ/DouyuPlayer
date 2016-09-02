package sample.xx_rr_2E_o_3A_0F4AC9AE_2D_3C6A_2D_4BAD_2D_9492_2D_610F0C9ACA2C
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",8,4),8],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",12,0),12],
         ".text":[CModule.allocTextSect(modPkgName,".text",768),768]
      };
   }
}
