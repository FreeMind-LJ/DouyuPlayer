package sample.xx_etenv_2E_o_3A_A3451165_2D_2A9D_2D_441A_2D_BCA8_2D_D41B459D3F48
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",28,4),28],
         ".dtors":[CModule.allocDataSect(modPkgName,".dtors",4,4),4],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",7,0),7],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",85,16),85],
         ".text":[CModule.allocTextSect(modPkgName,".text",1832),1832]
      };
   }
}
