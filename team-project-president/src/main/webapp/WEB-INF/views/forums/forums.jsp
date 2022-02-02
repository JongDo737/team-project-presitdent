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
    	<nav>
            <jsp:include page="../include/nav.jsp"></jsp:include>
        </nav>
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
                        <a href="/forums">최신토론</a>
                    </li>
                    <li class="forums_tap_detail_text" id="">
                        <a href="/best_forums">베스트 토론</a>
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
            <a href="/forums/suggest">제안하기</a>
        </div>
        <div class="search_wrap">
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
                    <a class="pageBtn" id="now-paging">1</a>
                    <a class="pageBtn">2</a>
                    <a class="pageBtn">3</a>
                    <a class="pageBtn">4</a>
                    <a class="pageBtn">5</a>
                    <a class="pageBtn">6</a>
                    <a class="pageBtn">7</a>
                    <a class="pageBtn">8</a>
                    <a class="pageBtn">9</a>
                    <a class="pageBtn">10</a>
                </div>
                <div class="paging-btn-next">
                    <a href="#">Next</a>
                </div>
            </div>

        </div>
          
    </section>
    <nav>
    	<jsp:include page="../include/footer.jsp"></jsp:include>
    </nav>
    <script src="/js/forums.js"></script>
</body>

</html>