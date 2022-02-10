<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Government Organization</title>
    <link rel="stylesheet" href="/css/organization.css">
    <link rel="stylesheet" href="/css/style.css">
</head>

<body>
    <nav>
        <jsp:include page="../include/nav.jsp"/>
    </nav>

    <section class="head_img2">
        <div class="head_txt">
            <h2>청와대 조직도</h2>
        </div>
    </section>
    <section class="cont_view">
        <div class="contents_tab">
            <div class="contents_tab_li" ><a href="/about/organization" class="tab_menu">청와대 조직도</a></div>
            <div class="contents_tab_li" id="on"><a href="/about/government-organization" class="tab_menu" id="tab_center">정부 조직도</a></div>
            <div class="contents_tab_li"><a href="/about/history" class="tab_menu">청와대 소개 및 역사</a></div>
        </div>
        <div class="cont_area">
            <div class="cont_body">
                <div class="wrap">
                    <img src="/image/government-organization.png" alt="">
                </div>
            </div>
            <div class="mark_wrap">
                <div class="mark_btn">
                    <img src="/image/mark4_img.jpg"
                        alt="청와대 홈페이지에서 제공하는 자료는 저작권법에 의하여 보호받는 저작물로서 공공누리 제 4유형 : 출처표시, 비상업적 이용만 가능, 변형 등 2차적 저작물 작성 금지 조건에 따라 이용이 가능합니다.">
                </div>
            </div>
        </div>
    </section>
    <jsp:include page="../include/footer.jsp"/>
    <script src="./js/nav.js"></script>
</body>

</html>