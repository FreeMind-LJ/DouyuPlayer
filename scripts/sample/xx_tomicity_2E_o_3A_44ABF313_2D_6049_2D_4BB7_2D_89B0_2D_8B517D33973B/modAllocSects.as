package sample.xx_tomicity_2E_o_3A_44ABF313_2D_6049_2D_4BB7_2D_89B0_2D_8B517D33973B
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",4,4),4],
         ".ctors":[CModule.allocDataSect(modPkgName,".ctors",0,4),0],
         ".data.rel.ro.__ZTIN9__gnu_cxx24__concurrence_lock_errorE":[CModule.allocDataSect(modPkgName,".data.rel.ro.__ZTIN9__gnu_cxx24__concurrence_lock_errorE",12,8),12],
         ".data.rel.ro.__ZTIN9__gnu_cxx26__concurrence_unlock_errorE":[CModule.allocDataSect(modPkgName,".data.rel.ro.__ZTIN9__gnu_cxx26__concurrence_unlock_errorE",12,8),12],
         ".data.rel.ro.__ZTVN9__gnu_cxx24__concurrence_lock_errorE":[CModule.allocDataSect(modPkgName,".data.rel.ro.__ZTVN9__gnu_cxx24__concurrence_lock_errorE",20,16),20],
         ".data.rel.ro.__ZTVN9__gnu_cxx26__concurrence_unlock_errorE":[CModule.allocDataSect(modPkgName,".data.rel.ro.__ZTVN9__gnu_cxx26__concurrence_unlock_errorE",20,16),20],
         ".gcc_except_table":[CModule.allocDataSect(modPkgName,".gcc_except_table",32,4),32],
         ".rodata.__ZTSN9__gnu_cxx24__concurrence_lock_errorE":[CModule.allocDataSect(modPkgName,".rodata.__ZTSN9__gnu_cxx24__concurrence_lock_errorE",39,16),39],
         ".rodata.__ZTSN9__gnu_cxx26__concurrence_unlock_errorE":[CModule.allocDataSect(modPkgName,".rodata.__ZTSN9__gnu_cxx26__concurrence_unlock_errorE",41,16),41],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",86,16),86],
         ".text":[CModule.allocTextSect(modPkgName,".text",727),727]
      };
   }
}
