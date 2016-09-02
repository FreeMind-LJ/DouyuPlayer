package sample.xx_p_2D_demangle_2E_o_3A_4EAE8D64_2D_DBB8_2D_467F_2D_83C7_2D_85C6725F4EAC
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".data.rel.ro.local":[CModule.allocDataSect(modPkgName,".data.rel.ro.local",1536,16),1536],
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",744,0),744],
         ".rodata.str1.16":[CModule.allocDataSect(modPkgName,".rodata.str1.16",749,16),749],
         ".text":[CModule.allocTextSect(modPkgName,".text",13040),13040]
      };
   }
}
