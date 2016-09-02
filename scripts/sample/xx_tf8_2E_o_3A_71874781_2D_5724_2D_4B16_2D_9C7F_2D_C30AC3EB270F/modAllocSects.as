package sample.xx_tf8_2E_o_3A_71874781_2D_5724_2D_4B16_2D_9C7F_2D_C30AC3EB270F
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",1,0),1],
         ".text":[CModule.allocTextSect(modPkgName,".text",826),826]
      };
   }
}
