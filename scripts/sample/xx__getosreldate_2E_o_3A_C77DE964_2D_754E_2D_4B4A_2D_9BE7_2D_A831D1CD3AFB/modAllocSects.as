package sample.xx__getosreldate_2E_o_3A_C77DE964_2D_754E_2D_4B4A_2D_9BE7_2D_A831D1CD3AFB
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".bss":[CModule.allocDataSect(modPkgName,".bss",4,4),4],
         ".text":[CModule.allocTextSect(modPkgName,".text",162),162]
      };
   }
}
