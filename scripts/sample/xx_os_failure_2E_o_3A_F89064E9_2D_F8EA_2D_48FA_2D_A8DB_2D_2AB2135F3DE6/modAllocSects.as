package sample.xx_os_failure_2E_o_3A_F89064E9_2D_F8EA_2D_48FA_2D_A8DB_2D_2AB2135F3DE6
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".data.rel.ro.__ZTINSt8ios_base7failureE":[CModule.allocDataSect(modPkgName,".data.rel.ro.__ZTINSt8ios_base7failureE",12,8),12],
         ".data.rel.ro.__ZTVNSt8ios_base7failureE":[CModule.allocDataSect(modPkgName,".data.rel.ro.__ZTVNSt8ios_base7failureE",20,16),20],
         ".gcc_except_table":[CModule.allocDataSect(modPkgName,".gcc_except_table",96,4),96],
         ".rodata.__ZTSNSt8ios_base7failureE":[CModule.allocDataSect(modPkgName,".rodata.__ZTSNSt8ios_base7failureE",22,16),22],
         ".text":[CModule.allocTextSect(modPkgName,".text",911),911]
      };
   }
}
