package sample.xx_h_alloc_2E_o_3A_86547DBF_2D_F3BA_2D_4441_2D_ABF4_2D_ED581EDA3BB7
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",16396,8),16396],
         ".ctors":[CModule.allocDataSect(modPkgName,".ctors",0,4),0],
         ".data.rel.ro.__ZTIN9__gnu_cxx24__concurrence_lock_errorE":[CModule.allocDataSect(modPkgName,".data.rel.ro.__ZTIN9__gnu_cxx24__concurrence_lock_errorE",12,8),12],
         ".data.rel.ro.__ZTIN9__gnu_cxx26__concurrence_unlock_errorE":[CModule.allocDataSect(modPkgName,".data.rel.ro.__ZTIN9__gnu_cxx26__concurrence_unlock_errorE",12,8),12],
         ".data.rel.ro.__ZTVN9__gnu_cxx24__concurrence_lock_errorE":[CModule.allocDataSect(modPkgName,".data.rel.ro.__ZTVN9__gnu_cxx24__concurrence_lock_errorE",20,16),20],
         ".data.rel.ro.__ZTVN9__gnu_cxx26__concurrence_unlock_errorE":[CModule.allocDataSect(modPkgName,".data.rel.ro.__ZTVN9__gnu_cxx26__concurrence_unlock_errorE",20,16),20],
         ".gcc_except_table":[CModule.allocDataSect(modPkgName,".gcc_except_table",48,4),48],
         ".rodata.__ZTSN9__gnu_cxx24__concurrence_lock_errorE":[CModule.allocDataSect(modPkgName,".rodata.__ZTSN9__gnu_cxx24__concurrence_lock_errorE",39,16),39],
         ".rodata.__ZTSN9__gnu_cxx26__concurrence_unlock_errorE":[CModule.allocDataSect(modPkgName,".rodata.__ZTSN9__gnu_cxx26__concurrence_unlock_errorE",41,16),41],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",86,16),86],
         ".text":[CModule.allocTextSect(modPkgName,".text",878),878]
      };
   }
}
