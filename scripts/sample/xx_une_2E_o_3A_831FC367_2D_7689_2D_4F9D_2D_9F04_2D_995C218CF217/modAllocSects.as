package sample.xx_une_2E_o_3A_831FC367_2D_7689_2D_4F9D_2D_9F04_2D_995C218CF217
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",9,0),9],
         ".text":[CModule.allocTextSect(modPkgName,".text",886),886]
      };
   }
}
