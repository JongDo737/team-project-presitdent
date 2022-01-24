<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/petitions_board.css">
    <script src="https://kit.fontawesome.com/14533f5127.js" crossorigin="anonymous"></script>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
    <section class="petitions_head">
    	<nav>
            <jsp:include page="../include/nav.jsp"></jsp:include>
        </nav>
        <div class="petitions_head_txt">
            <img src="../image/petitions_txt.png">
        </div>
        <div class="petiotions_head_second">
            <h4 class="pdfview">
                <a href="#">
                    [스페셜 홈] 국민청원 4년, 보고드립니다
                    <img src="../image/cursor.png" alt="">
                </a>
            </h4>
        </div>
    </section>
    <div class="contents_tab">
        <div class="contents_tab_li"><a href="/petitions" class="tab_menu">분야별 청원</a></div>
        <div class="contents_tab_li"><a href="/petitions/reco" class="tab_menu" id="tab_center">추천순 청원</a></div>
        <div class="contents_tab_li"><a href="#" class="tab_menu">답변된 청원</a></div>
    </div>
    <div class="board_area">
        <div class="board_petitions_view">
            <div class="board_petitions_title">           
                	<h4 id="board_status_sel" class="board_status_title">청원 시작</h4>
	                <h4 id="" class="board_status_title">청원 진행중</h4>
	                <h4 id="" class="board_status_title">청원 종료</h4>
	                <h4 id="" class="board_status_title">답변 완료</h4>         
                <h3>${boardPetitionRespDto.title }</h3>
                <h2>참여인원 : [ <span class="counter">${boardPetitionRespDto.agree_count }</span>명 ]</h2>
            </div>
            <div class="board_view_list">
                <ul>
                    <li class="board_list_info">
                        <p>카테고리</p>${boardPetitionRespDto.kategorie }
                    </li>
                    <li class="board_list_info" >
                        <p>청원시작</p> <p class="board_list_info_date">${boardPetitionRespDto.create_date }</p>
                    </li>
                    <li class="board_list_info">
                        <p>청원마감</p> <p class="board_list_info_date">${boardPetitionRespDto.end_date }</p>
                    </li>
                    <li class="board_list_info">
                        <p>청원인</p>${boardPetitionRespDto.provider }
                    </li>
                </ul>
            </div>
            <div class="board_view_grapy">
                <div class="board_grapy_line"></div>
                <ul>
                     <li class="board_view_point">
                        <div id="point_box" class="dot"></div>
                        <h4 id="current_status" class="board_grapy_status">청원시작</h4>
                    </li>
                    <li class="board_view_point">
                        <div id="" class="dot">
                        </div>

                        <h4 id="" class="board_grapy_status">청원진행중</h4>
                    </li>
                    <li class="board_view_point">
                        <div id="" class="dot"></div>
                        <h4 id="" class="board_grapy_status">청원종료</h4>
                    </li>
                    <li class="board_view_point">
                        <div id="" class="dot"></div>
                        <h4 id="" class="board_grapy_status">답변완료</h4>
                    </li>
                </ul>

            </div>
            <div class="board_view_write">
                <div class="board_view_writeHead">
                    <h4>청원 내용</h4>
                </div>
                <div class="board_view_maintext">${boardPetitionRespDto.content }</div>
            </div>
            <ul class="board_url_link">
                <li>
                    <p>첨부링크1:</p>
                    <a href="#">http://www.naver.com</a>
                </li>
            </ul>
            <div class="board_reply_area">
                <div class="reply_area_head">
                    <h3 class="reply_area_agree">청원동의<span> ${boardPetitionRespDto.agree_count }</span>명</h3>
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

                </div>
                <div class="reply_area_write">
                    <div class="reply_write_space">
                        <form action="/petitions/${boardPetitionRespDto.petition_id }/reply_write" method="post" class="reply_form">
                            <c:choose>
                            	<c:when test="${empty  principal.user}">
                            		<textarea id="reply_textarea" name="reply" placeholder="소셜로그인후 이용하실 수 있습니다."></textarea>
                            		<button id="reply_submit_btn" class="logout_reply_submit_btn" type="button">동의</button>
                            	</c:when>
                            	<c:otherwise>
                            		<textarea id="reply_textarea" name="reply"  placeholder="동의합니다."></textarea>
                            		<button id="reply_submit_btn"  class="login_reply_submit_btn" type="submit">동의</button>
                            	</c:otherwise>
                            </c:choose>
                        </form>
                    </div>
                </div>
                <div class="reply_list_open">
                    <div class="reply_view_btn">동의 내용 보기<i class="fas fa-chevron-down"></i></div>
                </div>
                <div class="reply_list_all">
                    	<input type="hidden" class="petition_id" value="${boardPetitionRespDto.petition_id }" >
                    <ul class="reply_list_sep">
						
                    </ul>
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
                </div>
            </div>
        </div>
    </div>
    <nav>
    	<jsp:include page="../include/footer.jsp"></jsp:include>
    </nav>
    <script src="/js/petitions_board.js"></script>
</body>

</html>