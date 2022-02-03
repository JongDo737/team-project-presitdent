<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>best forum</title>
    <link rel="stylesheet" href="/css/best_forum.css">
    <link rel="stylesheet" href="/css/style.css">
    <script src="https://kit.fontawesome.com/fab8e6b94b.js" crossorigin="anonymous"></script>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
    <div class="container">
    	<nav>
            <jsp:include page="../include/nav.jsp"></jsp:include>
        </nav>
        <section class="header">
            <h2 class="head_text">토론 베스트</h2>
        </section>
        <section class="contents">
            <div class="contents_tab">
                <div class="contents_tab_li"><a href="/forums">최신 토론</a></div>
                <div class="contents_tab_li" id="on"><a id="tab_line" href="/best_forums">베스트 토론</a></div>
            </div>
            <div class="sub_content">
                <ul class="sub_content_tab">
                    <li>
                        <a href="#" id="active">주간 베스트</a>
                    </li>
                    <li>
                        <a href="#">월간 베스트</a>
                    </li>
                </ul>
                <div class="discussion_day">
                    <div class="discussion_day_area">
                        <ul class="weeklist">
                            <button class="day_btn_pre"></button>
                            <li><a class="week_btn" id="weeklist_on">
                            		
                                </a></li>
                            <li><a class="week_btn">
                           			
                                </a></li>
                            <li><a class="week_btn">
                            		
                                </a></li>
                            <li><a class="week_btn">
                            		
                                </a></li>
                            <li><a class="week_btn">
                            		
                                </a></li>
                            <button class="day_btn_nex"></button>
                        </ul>
                    </div>
                </div>
                <div class="discussion_best_top5">
                    <h4><i class="far fa-comment-dots"></i> 추천 TOP5</h4>
                    <table class="best_table">
                        <thead>
                            <tr>
                                <th class="th1">번호</th>
                                <th class="th2">제목</th>
                                <th class="th3">추천/비추천</th>
                                <th class="th4">작성일</th>
                            </tr>
                        </thead>
                        <tbody class="best_top5_list">
                            
                        </tbody>
                    </table>
                </div>
                <div class="discussion_best_top5_bottom">
                    <h4><i class="far fa-comment-dots"></i> 댓글 TOP5</h4>
                    <table class="best_table_bottom">
                        <thead>
                            <tr>
                                <th class="th1">번호</th>
                                <th class="th2">제목</th>
                                <th class="th3">댓글수</th>
                                <th class="th4">작성일</th>
                            </tr>
                        </thead>
                        <tbody class= "reply_top5_list">
                            
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="discussion_best_btn">
                <a href="/forums/suggest">제안하기</a>
            </div>
    </div>
    </section>
    </div>
    <nav>
    	<jsp:include page="../include/footer.jsp"></jsp:include>
    </nav>
    <script src="/js/best_forums.js"></script>
</body>

</html>