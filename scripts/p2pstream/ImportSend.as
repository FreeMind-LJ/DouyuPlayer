package p2pstream
{
   public class ImportSend
   {
      
      public static const _INSTANCE:p2pstream.ImportSend = new p2pstream.ImportSend();
       
      
      public function ImportSend()
      {
         super();
         FactoryReporter.sendReport(FactoryReporter.CODE_IMPORT_CLASS,{});
      }
   }
}
