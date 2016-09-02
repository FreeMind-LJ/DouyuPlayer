package sample.xx_printf_str_2E_o_3A_81733692_2D_DB2E_2D_43DB_2D_A578_2D_19A73F9BE531
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",13,0),13],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",165,16),165],
         ".text":[CModule.allocTextSect(modPkgName,".text",557),557]
      };
   }
}
