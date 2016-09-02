package sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",16,4),16],
         ".gcc_except_table":[CModule.allocDataSect(modPkgName,".gcc_except_table",300,4),300],
         ".rodata.__ZNSs4_Rep11_S_max_sizeE":[CModule.allocDataSect(modPkgName,".rodata.__ZNSs4_Rep11_S_max_sizeE",4,4),4],
         ".rodata.__ZNSs4_Rep11_S_terminalE":[CModule.allocDataSect(modPkgName,".rodata.__ZNSs4_Rep11_S_terminalE",1,0),1],
         ".rodata.__ZNSs4nposE":[CModule.allocDataSect(modPkgName,".rodata.__ZNSs4nposE",4,4),4],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",453,16),453],
         ".text":[CModule.allocTextSect(modPkgName,".text",12810),12810]
      };
   }
}
