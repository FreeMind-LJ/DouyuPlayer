package sample.xx_ew_handler_2E_o_3A_4FCAF72B_2D_2EEA_2D_465A_2D_9D93_2D_82E6DCA37DA9
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",4,4),4],
         ".data.rel.ro.__ZTISt9bad_alloc":[CModule.allocDataSect(modPkgName,".data.rel.ro.__ZTISt9bad_alloc",12,8),12],
         ".data.rel.ro.__ZTVSt9bad_alloc":[CModule.allocDataSect(modPkgName,".data.rel.ro.__ZTVSt9bad_alloc",20,16),20],
         ".rodata":[CModule.allocDataSect(modPkgName,".rodata",1,8),1],
         ".rodata.__ZTSSt9bad_alloc":[CModule.allocDataSect(modPkgName,".rodata.__ZTSSt9bad_alloc",13,0),13],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",15,0),15],
         ".text":[CModule.allocTextSect(modPkgName,".text",264),264]
      };
   }
}
