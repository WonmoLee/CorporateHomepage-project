$(document).ready(function(){
    
   $('.prev').click(function(){
       $('.con').stop().animate({'margin-left':'-900px'},function(){
           $('.con>div').eq(0).appendTo('.con');
           $('.con').css({'margin-left':'-450px'});
       });
   });
   $('.next').click(function(){
       $('..con').stop().animate({'margin-left':'0px'},function(){
           $('..con>div').eq(2).prependTo('.con');
           $('..con').css({'margin-left':'-450px'});
       });
   });
   
   var auto = setInterval(function(){
   		$('.con').stop().animate({'margin-left':'0px'},function(){
           $('.con>div').eq(2).prependTo('.con');
           $('.con').css({'margin-left':'-450px'});
       });
   },2000);
   
   /* 마우스 올렸을때 캐러셀 자동 멈춤 */
   $('.carousel').mouseenter(function(){
        clearInterval(auto);  
   });
   
   /* 마우스 내렸을때 캐러셀 자동 다시실행 */
   $('.carousel').mouseleave(function(){
        auto = setInterval(function(){
         		$('.con').stop().animate({'margin-left':'0px'},function(){
           $('.con>div').eq(2).prependTo('.con');
           $('.con').css({'margin-left':'-450px'});
        });
    },2000);
   });
});