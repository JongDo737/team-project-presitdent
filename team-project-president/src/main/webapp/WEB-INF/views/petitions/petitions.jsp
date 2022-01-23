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
    <link rel="stylesheet" href="/css/petitions.css">
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
    <!-- 메인 -->
    <section class="petitions_contents">
        <div class="contents_tab">
            <div class="contents_tab_li" id="on"><a href="#" class="tab_menu">분야별 청원</a></div>
            <div class="contents_tab_li"><a href="/petitions/reco" class="tab_menu" id="tab_center">추천순 청원</a></div>
            <div class="contents_tab_li"><a href="#" class="tab_menu">답변된 청원</a></div>
        </div>
        <div class="contents_area">
            <div class="contents_body">
                <div class="contents_body_main">
                    <div class="petitions_item">
                        <div class="item_box1">
                            <div class="txt_a"><span>청와대의 직접 소통</span>은</div>
                            <div class="txt_b"><span>'국민이 물으면 정부가 답한다'</span>는 철학을 지향합니다.</div>
                            <div class="txt_c">국정 현안 관련, 국민들 다수의 목소리가 모여 <br> 30일 동안 20만 이상 추천 청원에 대해서는 <br>
                                <span> 정부 및 청와대 책임자(각 부처 및 기관의 장, 대통령 수석·비서관, 보좌관 등)</span> 가 답하겠습니다.
                            </div>
                        </div>
                        <div class="item_box2">
                            <div class="box2_item1"><a href="/petitions/Step1">지금 청원하기</a></div>
                            <div class="box2_item2"><a href="/petitions/Mypage">내 청원보기</a></div>
                        </div>
                        <div class="item_box3">공개된 청원 답변은 청와대 홈페이지 > 국민청원 > 답변된 청원 또는 청와대 트위터, 페이스북, 유튜브를 통해 확인하실 수
                            있습니다.
                            <br> 청원 관련 문의 : webmaster@president.go.kr
                        </div>
                    </div>
                    <div class="board_txt">
                        <div class="board_title">답변 대기 중인 청원</div>
                        <div class="board_head">
                            <div class="board_wrap">
                                <div class="board_category">분류</div>
                                <div class="board_subject">제목</div>
                                <div class="board_date">청원 만료일</div>
                                <div class="board_agree">참여 인원</div>
                            </div>
                        </div>
                        <ul class="board_list">
                            
                        </ul>
                    </div>
                </div>
                <!-- 분야별 보기 -->
                <div class="contents_body_main_second">
                    <div class="second_title">
                        <h4>·청원 분야별 보기</h4>
                    </div>
                    <div class="petitions_contents_second">
                        <div class="category_area">
                            <ul>
                                <li >
                                	<!-- a태그를 #으로 주면 js안됌 이렇게 해야 자기 자신으로 인식하고 js실행됌 -->
                                    <a id="category_sel" class="kategorieBtn">전체</a>
                                </li>
                                <li>
                                    <a id="" class="kategorieBtn">정치개혁</a>
                                </li>
                                <li>
                                    <a id="" class="kategorieBtn">외교/통일/국방</a>
                                </li>
                                <li>
                                    <a id="" class="kategorieBtn">일자리</a>
                                </li>
                                <li>
                                    <a id="" class="kategorieBtn">미래</a>
                                </li>
                                <li>
                                    <a id="" class="kategorieBtn">성장동력</a>
                                </li>
                                <li>
                                    <a id="" class="kategorieBtn">농산어촌</a>
                                </li>
                                <li>
                                    <a id="" class="kategorieBtn">보건복지</a>
                                </li>
                                <li>
                                    <a id="" class="kategorieBtn">육아/교육</a>
                                </li>
                                <li>
                                    <a id="" class="kategorieBtn">안전/환경</a>
                                </li>
                                <li>
                                    <a id="" class="kategorieBtn">저출산/고령화대책</a>
                                </li>
                                <li>
                                    <a id="" class="kategorieBtn">행정</a>
                                </li>
                                <li>
                                    <a id="" class="kategorieBtn">반려동물</a>
                                </li>
                                <li>
                                    <a id="" class="kategorieBtn">교통/건축/국토</a>
                                </li>
                                <li>
                                    <a id="" class="kategorieBtn">경제민주화</a>
                                </li>
                                <li>
                                    <a id="" class="kategorieBtn">인권/성평등</a>
                                </li>
                                <li>
                                    <a id="" class="kategorieBtn">문화/예술/체육/언론</a>
                                </li>
                                <li>
                                    <a id="" class="kategorieBtn">기타</a>
                                </li>

                            </ul>
                        </div>
                        <div class="category_tab">
                            <ul>
                                <li>
                                    <a  id="category_tab_sel" class="kategorie_tab_select" value=1>진행 중 청원</a>
                                </li>
                                <li>
                                    <a class="kategorie_tab_select" value=2>만료된 청원</a>
                                </li>
                            </ul>
                        </div>
                        <div class="top5_body">
                            <div class="top5_board">
                                <h4 class="choochen">전체 추천순 TOP5</h4>
                                <div class="top5_board_head">
                                    <div class="top5_board_wrap">
                                        <div class="top5_board_category">분류</div>
                                        <div class="top5_board_subject">제목</div>
                                        <div class="top5_board_date">청원 만료일</div>
                                        <div class="top5_board_agree">참여 인원</div>
                                    </div>
                                </div>
                                <ul class="top5_board_list">
                                    

                                </ul>
                            </div>
                        </div>
                        <!-- 전체목록 -->
                        <div class="full_list_body">
                            <div class="full_list_main">
                                <div class="full_list_title">
                                    <h4 class="chenchaeList">전체 목록</h4>
                                    <div class="full_list_another">
                                        <a href="#">지금 청원하기</a>
                                        <select name="order" id="order" class="orderSelect">
                                            <option value="1" selected>최신순 보기</option>
                                            <option value="2">추천순 보기</option>
                                        </select>
                                    </div>



                                </div>
                                <div class="full_board_head">
                                    <div class="full_board_wrap">
                                        <div class="full_board_category">분류</div>
                                        <div class="full_board_subject">제목</div>
                                        <div class="full_board_date">청원 만료일</div>
                                        <div class="full_board_agree">참여 인원</div>
                                    </div>
                                </div>
                                <ul class="full_board_list">
                                    
                                    
                                </ul>
                                    <!-- 검색창 -->
                                    <div class="search_wrap">
                                        <form action="/search" method="post" class="form_control">
                                            <input type="text" class="search_ip">
                                            <button type="submit" class="search_btn">
                                                검색
                                            </button>
                                        </form>
                                    </div>
                                    <!-- 페이지 번호-->
                                    <div class="paging">
                                        <div class="wrap-paging-btn">
                                            <div class="paging-btn">
                                                <a  id="now-paging" class="pageBtn">1</a>
                                                <a id="" class="pageBtn">2</a>
                                                <a id="" class="pageBtn">3</a>
                                                <a id="" class="pageBtn">4</a>
                                                <a id="" class="pageBtn">5</a>
                                                <a id="" class="pageBtn">6</a>
                                                <a id="" class="pageBtn">7</a>
                                                <a id="" class="pageBtn">8</a>
                                                <a id="" class="pageBtn">9</a>
                                                <a id="" class="pageBtn">10</a>
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
            </div>
        </div>
    </section>
    <nav>
    	<jsp:include page="../include/footer.jsp"></jsp:include>
    </nav>
    <script src="/js/petitions.js"></script>
</body>

</html>