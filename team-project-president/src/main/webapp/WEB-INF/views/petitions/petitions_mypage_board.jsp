<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${boardPetitionRespDto.title }</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/petitions_mypage_board.css">
    <script src="https://kit.fontawesome.com/14533f5127.js" crossorigin="anonymous"></script>
</head>

<body>
    <section class="petitions_head">
    	<jsp:include page="../include/nav.jsp"></jsp:include>
        <div class="petitions_head_txt">
            <img src="/image/petitions_txt.png">
        </div>
        <div class="petiotions_head_second">
            <h4 class="pdfview">
                <a href="#">
                    [스페셜 홈] 국민청원 4년, 보고드립니다
                    <img src="/image/cursor.png" alt="">
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
                <h4 class="board_petitions_title_text">${boardPetitionRespDto.title }</h4>
                <span> </span>
                <div class="board_petitions_title_date">
                    <h4>청원기간</h4>
                    <div class="board_petitions_title_date_detail">
                        <p>${boardPetitionRespDto.create_date } ~ ${boardPetitionRespDto.end_date }</p>
                    </div>

                </div>
            </div>


            <div class="board_view_write">

                <div class="board_view_maintext">
                    ${boardPetitionRespDto.content }

                </div>
            </div>
            <div class="board_tags">
                <div class="board_tags_text">
                    태그 :
                </div>
                <div class="board_tags_text_tags">
                    ${boardPetitionRespDto.tag }
                </div>
                
            </div>
            <div class="board_reply_area">
                <div class="reply_area_head">
                    <h3 class="reply_area_agree">청원동의<span> <fmt:formatNumber value="${boardPetitionRespDto.agree_count }" pattern="#,###" /></span>명</h3>

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
                                <a>Next</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="board_url_link">
            <div class="board_url_link_top">
                <div class="board_url_link_left">
                    <p>URL</p>
                    <a href="${boardPetitionRespDto.link }">${boardPetitionRespDto.link }</a>
                </div>
                <div class="board_url_link_right">
                    <p>URL 복사</p>
                </div>

            </div>
            <div class="board_url_link_bottom"></div>
        </div>
        <div class="board_bottom">
            <a href="/petitions/Mypage" class="board_bottom_sep">목록보기</a>
            <a href="/logout" class="board_bottom_sep"><i class="fas fa-power-off"></i> 로그아웃</a>
        </div>
    </div>
    <jsp:include page="../include/footer.jsp"></jsp:include>
    <script src="/js/petitions_mypage_board.js"></script>
</body>

</html>