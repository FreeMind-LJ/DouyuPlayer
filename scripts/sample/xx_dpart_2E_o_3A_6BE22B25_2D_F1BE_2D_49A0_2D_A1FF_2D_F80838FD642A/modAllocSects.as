package sample.xx_dpart_2E_o_3A_6BE22B25_2D_F1BE_2D_49A0_2D_A1FF_2D_F80838FD642A
{
   import sample.xx.CModule;
   
   function modAllocSects() : Object
   {
      return {
         ".rodata.str1.1":[CModule.allocDataSect(modPkgName,".rodata.str1.1",8,0),8],
         ".text":[CModule.allocTextSect(modPkgName,".text",458),458]
      };
   }
}
