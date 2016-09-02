package sample.xx_trerror_2E_o_3A_DADED045_2D_D9F4_2D_4B6F_2D_9B3D_2D_DDECF6594CF1
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",2048,8),2048],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",30,0),30],
         ".text":[CModule.allocTextSect(modPkgName,".text",300),300]
      };
   }
}
