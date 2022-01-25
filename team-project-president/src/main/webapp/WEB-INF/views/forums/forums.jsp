<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/forums.css">
     <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
    <!-- 맨위 사진 -->
    <section class="forums_head">
        <div class="forums_head_txt">
            토론방
        </div>
    </section>
    <section class="forums_main">
        <!-- 탭버튼 2개 -->
        <div class="forums_tap">
            <div class="forums_tap_detail">
                <ul class="forums_tap_detail_box">
                    <li class="forums_tap_detail_text" id="on">
                        <a href="#">최신토론</a>
                    </li>
                    <li class="forums_tap_detail_text" id="">
                        <a href="#">베스트 토론</a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 토론방 -->
        <div class="forums_container">
            <div class="forums_box">
                <div class="forums_lists">
                    <ul class="forum_lists_all">
             

                    </ul>
                </div>
            </div>
        </div>
        <div class="suggest_btn">
            <a href="forums/suggest">제안하기</a>
        </div>
        <div class="search_wrap">'
            <form action="/search" method="post" class="form_control">
                <input type="text" class="search_ip">
                <button type="submit" class="search_btn">
                    검색
                </button>
            </form>
        </div>
        <div class="paging">
            <div class="wrap-paging-btn">
                <div class="paging-btn">
                    <a href="#" class="now-paging">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                    <a href="#">6</a>
                    <a href="#">7</a>
                    <a href="#">8</a>
                    <a href="#">9</a>
                    <a href="#">10</a>
                </div>
                <div class="paging-btn-next">
                    <a href="#">Next</a>
                </div>
            </div>

        </div>
        <script src="/js/forums.js"></script>
    </section>
</body>

</html>