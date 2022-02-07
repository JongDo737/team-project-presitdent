const navBarLocation = document.querySelector('#navigator_menu');
const navBarLogo = document.querySelector('.nav_logo');


$(document).ready(function () {
    $(".menu_list_title").mouseover(function () {
        $(this).next("ul").stop().fadeIn(500);
        $(".menu_list_title").mouseleave(function () {
            $(this).next("ul").stop();
        });
    });


});
window.addEventListener('load', function () {
    var navList = document.querySelectorAll('.menu_list');

    for (var i = 0; i < navList.length; i++) {

        navList[i].addEventListener('mouseleave', function (e) {

            var navList = e.target.children[1];
            navList.style.display = "none";
        });
    }
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