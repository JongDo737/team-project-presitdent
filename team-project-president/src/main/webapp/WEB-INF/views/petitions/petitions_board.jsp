xcv<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <div class="contents_tab_li"><a href="#" class="tab_menu">분야별 청원</a></div>
        <div class="contents_tab_li"><a href="#" class="tab_menu" id="tab_center">추천순 청원</a></div>
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
                        <form action="/petitions/agree_write" method="post" class="reply_form">
                            <input type="hidden">
                            <textarea id="reply_textarea" placeholder="소셜로그인후 이용하실 수 있습니다."></textarea>
                            <button type="submit">동의</button>
                        </form>
                    </div>
                </div>
                <div class="reply_list_open">
                    <a href="#">동의 내용 보기<i class="fas fa-chevron-down"></i></a>
                </div>
                <div class="reply_list_all">
                    <ul>
                        <li class="reply_list_reply">
                            <div class="reply_list_contents">
                                <div class="reply_list_contents_head">
                                    <h4>facebook - ***</h4>
                                </div>
                                <div class="reply_list_text">
                                    동의합니다.
                                </div>
                            </div>
                        </li>
                        <li class="reply_list_reply">
                            <div class="reply_list_contents">
                                <div class="reply_list_contents_head">
                                    <h4>facebook - ***</h4>
                                </div>
                                <div class="reply_list_text">
                                    동의합니다.
                                </div>
                            </div>
                        </li>
                        <li class="reply_list_reply">
                            <div class="reply_list_contents">
                                <div class="reply_list_contents_head">
                                    <h4>facebook - ***</h4>
                                </div>
                                <div class="reply_list_text">
                                    동의합니다.
                                </div>
                            </div>
                        </li>
                        <li class="reply_list_reply">
                            <div class="reply_list_contents">
                                <div class="reply_list_contents_head">
                                    <h4>facebook - ***</h4>
                                </div>
                                <div class="reply_list_text">
                                    동의합니다.
                                </div>
                            </div>
                        </li>
                        <li class="reply_list_reply">
                            <div class="reply_list_contents">
                                <div class="reply_list_contents_head">
                                    <h4>facebook - ***</h4>
                                </div>
                                <div class="reply_list_text">
                                    동의합니다.
                                </div>
                            </div>
                        </li>
                        <li class="reply_list_reply">
                            <div class="reply_list_contents">
                                <div class="reply_list_contents_head">
                                    <h4>facebook - ***</h4>
                                </div>
                                <div class="reply_list_text">
                                    동의합니다.
                                </div>
                            </div>
                        </li>
                        <li class="reply_list_reply">
                            <div class="reply_list_contents">
                                <div class="reply_list_contents_head">
                                    <h4>facebook - ***</h4>
                                </div>
                                <div class="reply_list_text">
                                    동의합니다.
                                </div>
                            </div>
                        </li>
                    </ul>
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
                </div>
            </div>
        </div>
    </div>
    <script src="/js/petitions_board.js"></script>
    <nav>
    	<jsp:include page="../include/footer.jsp"></jsp:include>
    </nav>
</body>

</html>