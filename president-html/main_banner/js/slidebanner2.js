$(function(){
   var current = 0;//현재 보이는 이미지의 인덱스 0부터
   var setIntervalId;
   //지역변수(특정함수내에서만 존재하는 변수), 
   //전역변수(위치와 상관없이 스크립트 전체에서 사용할 수 있는변수)
   $("#btns2 > li").eq(0).addClass("on");//첫번째 버튼에 현재 이미지가 보이닌까 주석으로 클래스 적용

   $("#btns2 > li").click(function(){//
       var i = $(this).index();
       //console.log(i);

       $("#btns2 > li").removeClass("on");
       $(this).addClass("on");


       move(i);//해당되는 버튼의 번호를 매개변수로 보냄
   });
 

   //애니메이션 함수 -왼쪽으로 이동
   function move(n){//1
       if(current == n) return; //2 
       
       var currentEl = $("#view2 ul li").eq(current);//0 1 2 3
       var nextEl = $("#view2 ul li").eq(n);

       currentEl.css({left:"0%"}).animate({left:"-100%"});
       nextEl.css({left:"100%"}).animate({left:"0%"});

      current = n;  //2-> 현재 보이는 이미지대상 
   }


   //애니메이션 함수 -오른쪽으로 이동
   function move2(n){//1
    if(current == n) return; //2 
    
    var currentEl = $("#view2 ul li").eq(current);//0 1 2 3
    var nextEl = $("#view2 ul li").eq(n);

    currentEl.css({left:"0%"}).animate({left:"100%"});
    nextEl.css({left:"-100%"}).animate({left:"0%"});

   current = n;  //2-> 현재 보이는 이미지대상 
}




















});