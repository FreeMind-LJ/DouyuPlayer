package sample.xx_messages_2E_o_3A_F492CD4D_2D_D224_2D_4FEA_2D_986C_2D_4ED7987E3A70
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",29,8),29],
         ".data.rel.ro.local":[CModule.allocDataSect(modPkgName,".data.rel.ro.local",16,8),16],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",31,0),31],
         ".text":[CModule.allocTextSect(modPkgName,".text",212),212]
      };
   }
}
