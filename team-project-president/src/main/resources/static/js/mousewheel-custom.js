$(function(){
    (function($){
        $.aniPage=function(e,type){
            if(e.originalEvent.wheelDelta > 0 || e.originalEvent.detail < 0){
                $("body, html").animate({
                    scrollTop:$(window).scrollTop()-$(window).height()
                },1000,function(){
                        $.aniOk = 0;
                });
            }else{
                $("body, html").animate({
                    scrollTop:$(window).scrollTop()+$(window).height()
                },1000,function(){
                        $.aniOk = 0;
                });
            }
        };
    })(jQuery);
    $(function(){
        $("#box").height($(window).height());
        $.aniOk=0;
        $(window).scrollTop(0);
    });
    $(document).on("mousewheel DOMMouseScroll",function(e){
        e.preventDefault();
        if($.aniOk == 0){
            $.aniPage(e,e.type);
            $.aniOk = 1;
        }
    });
});
//.scl_icon_box 버튼
$(function(){
    var $root = $('html, body');
    $('.scl_icon_box').click(function() {
        $root.animate({
            scrollTop: $( $.attr(this, 'href') ).offset().top
        }, 1000);
        return false;
    })
});
