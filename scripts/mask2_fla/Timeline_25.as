package mask2_fla
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public dynamic class Timeline_25 extends MovieClip
   {
       
      
      public var tex:TextField;
      
      public function Timeline_25()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         this.mouseChildren = false;
      }
   }
}
