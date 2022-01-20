const navBarLocation = document.querySelector('#navigator_menu');
const navBarLogo = document.querySelector('.nav_logo');
window.addEventListener('load', function () {
    var nav = document.getElementById("navigator_menu");
    var depth1Li = nav.children[0].children; //nav > ul >li

    for (var i = 0; i < depth1Li.length; i++) {

        depth1Li[i].addEventListener('mouseleave', function (e) {

            var sub = e.target.children[1];
            sub.style.display = "none"
        });
    }
});

$(document).ready(function () {
    $(".menu_list_title").mouseenter(function () {
        $("menu_list").find("ul").stop().fadeIn(500);
        $(".menu_list_title").mouseleave(function () {
            $(this).next("ul").stop().fadeOut();
        });
    });


});

window.onscroll = () => {
    let checkNum = $(window).scrollTop();
    if (checkNum > 0) {
        navBarLocation.style.position = 'fixed';
        navBarLocation.style.top = 0;
        navBarLogo.style.display = 'inline';
    }
    else {
        navBarLocation.style.position = 'absolute';
        navBarLocation.style.top = '55px';
        navBarLogo.style.display = 'none';
    }

}