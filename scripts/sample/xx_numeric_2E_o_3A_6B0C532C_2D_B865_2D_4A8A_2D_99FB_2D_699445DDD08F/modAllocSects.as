package sample.xx_numeric_2E_o_3A_6B0C532C_2D_B865_2D_4A8A_2D_99FB_2D_699445DDD08F
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",24,8),24],
         ".data":[CModule.allocDataSect(modPkgName,".data",2,0),2],
         ".data.rel.ro.local":[CModule.allocDataSect(modPkgName,".data.rel.ro.local",12,8),12],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",14,0),14],
         ".text":[CModule.allocTextSect(modPkgName,".text",216),216]
      };
   }
}
