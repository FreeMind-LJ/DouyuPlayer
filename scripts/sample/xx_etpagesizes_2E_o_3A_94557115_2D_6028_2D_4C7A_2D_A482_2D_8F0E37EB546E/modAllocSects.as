package sample.xx_etpagesizes_2E_o_3A_94557115_2D_6028_2D_4C7A_2D_A482_2D_8F0E37EB546E
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",16,8),16],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",13,0),13],
         ".text":[CModule.allocTextSect(modPkgName,".text",217),217]
      };
   }
}
