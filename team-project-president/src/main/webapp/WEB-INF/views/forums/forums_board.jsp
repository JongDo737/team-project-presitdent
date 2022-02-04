<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/forums_board.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
	<nav>
       <jsp:include page="../include/nav.jsp"></jsp:include>
    </nav>
    <div class="wrap">
        <div class="forum_contents">
            <section class="cs_wrap">
                <div class="cs_area">
                    <div class="cs_body">
                        <div id="wrap">
                            <div class="cs_view">
                                <div class="cs_viewhead">
                                    <h3 class="title">
                                        ${forumsRespDto.topic }
                                    </h3>
                                    <div class="cs_view_vote">
                                        <span>추천 : <span>${forumsRespDto.good_count}</span></span>
                                        <span>vs</span>
                                        <span>비추천 : <span>${forumsRespDto.bad_count }</span></span>
                                    </div>
                                    <div class="cs_writer">
                                        <span class="cs_date">${forumsRespDto.create_date }</span>
                                        <span>작성자 : ${forumsRespDto.provider } - ***</span>
                                    </div>
                                </div>

                                <div class="text">
                                    ${forumsRespDto.content }
                                </div>
                                <div class="btn_wrap">
                                    <div class="btn_hand_box">
                                        <button type="button" class="handUp">
                                            <div class="hand_up_border">
                                                <div class="handup_img">

                                                </div>
                                                <span class="countUp">${forumsRespDto.good_count}</span>

                                            </div>
                                            <div class="handUp_text">추천</div>
                                        </button>
                                    </div>
                                    <div class="btn_hand_box">
                                        <button type="button" class="handDown">
                                            <div class="hand_down_border">
                                                <div class="handDown_img"></div>
                                                <span class="countDown">${forumsRespDto.bad_count}</span>

                                            </div>
                                            <div class="handDown_text">비추천</div>
                                        </button>
                                    </div>
                                </div>

                                <div class="reply_area_sns">
                                    <span>SNS 공유하기</span>
                                    <ul>
                                        <li class="reply_sns_icon">
                                            <a href="#" class="kakao">
                                            </a>
                                        </li>
                                        <li class="reply_sns_icon">
                                            <a href="#" class="naver">
                                            </a>
                                        </li>
                                        <li class="reply_sns_icon">
                                            <a href="#" class="twitter">
                                            </a>

                                        </li>
                                        <li class="reply_sns_icon">
                                            <a href="#" class="google">
                                            </a>

                                        </li>
                                    </ul>
                                </div>

                                <div class="cs_comment">
                                    <form action="/forums/${forumsRespDto.forums_id}/reply_write" name="reply" method="post" class="co_write">
                                        <div class="cw_wrap">
                                            <textarea name="reply" id="" placeholder="댓글을 입력해 주세요."></textarea>
                                        </div>
                                        <button type="submit" class="comment_add">등록</button>
                                    </form>
                                </div>
                                <div class="co_wrap">
                                	<input type="hidden" class="forums_id" value="${forumsRespDto.forums_id}" >
                                    <ul class="reply_list_view">
                                        
                                    </ul>
                                    <div class="btn_more">
                                        <button type="button" class="getlist">댓글 더보기</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
    <nav>
    	<jsp:include page="../include/footer.jsp"></jsp:include>
    </nav>
    <script src="/js/forums_board.js"></script>
</body>

</html>