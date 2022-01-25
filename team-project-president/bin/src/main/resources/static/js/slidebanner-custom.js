$(function(){
   var current = 0;
   var setIntervalId;

   $("#btns > li").eq(0).addClass("on");
   $("#btns > li").click(function(){
       var i = $(this).index();

       $("#btns > li").removeClass("on");
       $(this).addClass("on");


       move(i);
   });


   //1_bnr-왼쪽으로 이동
   function move(n){
       if(current == n) return;
       
       var currentEl = $("#view ul li").eq(current);
       var nextEl = $("#view ul li").eq(n);

       currentEl.css({left:"0%"}).animate({left:"-100%"});
       nextEl.css({left:"100%"}).animate({left:"0%"});

      current = n;  
   }


   //1_bnr-오른쪽으로 이동
   function move2(n){
    if(current == n) return;  
    
    var currentEl = $("#view ul li").eq(current);
    var nextEl = $("#view ul li").eq(n);

    currentEl.css({left:"0%"}).animate({left:"100%"});
    nextEl.css({left:"-100%"}).animate({left:"0%"});

   current = n;  
}

});

$(function(){
    var current = 0;
    var setIntervalId;
    
    $("#btns2 > li").eq(0).addClass("on");
    $("#btns2 > li").click(function(){
        var i = $(this).index();
 
        $("#btns2 > li").removeClass("on");
        $(this).addClass("on");
 
 
        move(i);
    });
  
 
    //2_bnr-왼쪽으로 이동
    function move(n){
        if(current == n) return;

        var currentEl = $("#view2 ul li").eq(current);
        var nextEl = $("#view2 ul li").eq(n);
 
        currentEl.css({left:"0%"}).animate({left:"-100%"});
        nextEl.css({left:"100%"}).animate({left:"0%"});
 
       current = n;  
    }
 
 
    //2_bnr-오른쪽으로 이동
    function move2(n){
     if(current == n) return; 
     
     var currentEl = $("#view2 ul li").eq(current);
     var nextEl = $("#view2 ul li").eq(n);
 
     currentEl.css({left:"0%"}).animate({left:"100%"});
     nextEl.css({left:"-100%"}).animate({left:"0%"});
 
    current = n;  
 }
 
 });