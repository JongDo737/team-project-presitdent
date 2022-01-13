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
    $(".menu_list a").mouseover(function () {
        $(this).next("ul").fadeIn(300);
    });
    $(".menu_list a").mouseout(function () {
        $(this).next("ul").fadeIn(300);
    });

});

function scrollDown() {
    if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
        document.getElementById("head").className = ".head";
        document.getElementById("navigator_menu").className = ".nav_menu";
    } else {
        document.getElementById("navigator_menu").className = "";
    }
}

Object.onscroll = function () { scrollDown() };

