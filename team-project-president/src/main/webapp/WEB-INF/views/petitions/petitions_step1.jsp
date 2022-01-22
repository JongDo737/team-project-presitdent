<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>지금 청원하기 STEP1 페이지</title>
    <link rel="stylesheet" href="/css/nav.css">
    <link rel="stylesheet" href="/css/footer.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/petitions_step1.css">
    <script src="https://kit.fontawesome.com/fab8e6b94b.js" crossorigin="anonymous"></script>
</head>

<body>
    <jsp:include page="../include/nav.jsp"></jsp:include>
        <div class="head_navi">
            <div id="head">
                <a href="#" title="메인페이지로 이동">
                    <img src="/image/logo.png">
                </a>
            </div>
        </div>
        <div id="navigator_menu" class="nav">
            <ul class="menu">
                <h1 class="nav_logo">
                    <img src="/image/logo.png" alt="">
                </h1>
                <li class="menu_list">
                    <a href="#" class="menu_list_title">
                        문재인 대통령
                    </a>
                    <ul class="menu_sub" style="display: none;">
                        <li>
                            <a href="#">
                                공개일정
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                걸어온길
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                대통령의 말과 글
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                김정숙 여사 소식
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="menu_list">
                    <a href="#" class="menu_list_title">
                        청와대 뉴스룸
                    </a>
                    <ul class="menu_sub" style="display: none;">
                        <li>
                            <a href="#">
                                한국판 뉴딜
                                <span>스페셜</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                청와대가 전합니다
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                청와대 이야기
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                영상
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                카드뉴스
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                세계의 시선
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                청와대 일기
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="menu_list">
                    <a href="#" class="menu_list_title">
                        정책정보
                    </a>
                    <ul class="menu_sub" style="display: none;">
                        <li>
                            <a href="#">
                                정책 브리핑
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                국정과제
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                정부부처 업무보고
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="menu_list">
                    <a href="#" class="menu_list_title">
                        국민소통광장
                    </a>
                    <ul class="menu_sub" style="display: none;">
                        <li>
                            <a href="#">
                                문재인 대통령 4주년
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                국민청원
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                국민과의 대화
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                토론방
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                국민신문고
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                열린참여
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="menu_list">
                    <a href="#" class="menu_list_title">
                        청와대 알림판
                    </a>
                    <ul class="menu_sub" style="display: none;">
                        <li>
                            <a href="#">
                                정보공개
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                일자리 상황판
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                청와대 조직도
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                세입·세출예산 운용상황
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                대통령 기록관
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                오시는길
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="menu_list">
                    <a href="#" class="menu_list_title">
                        청와대 관람 신청
                    </a>
    
                </li>
                <li class="menu_list_search">
                    <a href="" class="main_search_icon">
                        <img src="/image/nav/search_icon.png" alt="">
                    </a>
                </li>
            </ul>
        </div>
    </nav>
    
    <div class="contents">
        <section class="head_img">
            <div class="head_img_text">
                <h2>국민청원</h2>
            </div>
        </section>
        <section class="cont_view">
            <div class="contents_tab">
                <div class="contents_tab_li" id="on"><a href="#" class="tab_menu">분야별 청원</a></div>
                <div class="contents_tab_li"><a href="#" class="tab_menu" id="tab_center">추천순 청원</a></div>
                <div class="contents_tab_li"><a href="#" class="tab_menu">답변된 청원</a></div>
            </div>
            <div class="cs_area">
                <div class="cs_body">
                    <div class="wrap">
                        <div class="cs_box">
                            <div class="cs_box_area">
                                <h3>국민청원, 이렇게 등록하세요</h3>
                                <a href="#" class="cs_box_area_button"><i class="fas fa-search"></i> 한눈에 보기</a>
                                <div class="cs_area_text">
                                    <ul>
                                        <li>청원글 작성 완료 시, 여러분에게 '사전동의 링크(URL)'가 부여됩니다.</li>
                                        <li><span>30일 이내</span>에 여러분의 청원을 지지하는 <span>100명의 사전 동의</span>를 받으셔야
                                            <span>청원게시판</span>에 청원 내용이 <span>공개</span>되어 더 많은 국민께서 청원에 동참하실 수 있게 됩니다.
                                        </li>
                                        <li>'사전동의 링크(URL)'를 SNS 등에 공유해 사전 동의를 받아주세요. 사전 동의는 제공된 '사전동의 링크(URL)'를 통해서만
                                            가능합니다.</li>
                                        <li>100명의 사전동의를 받은 청원은 관리자의 검토를 거쳐 청원게시판에 공개됩니다. 검토 시일이 소요될 수 있으며, 신속한 공개를 위해
                                            노력하겠습니다.</li>
                                        <li>국민청원 요건에 맞지 않는 청원은 100명의 동의를 받더라도 게시판에 공개되지 않거나 관리자에 의해 일부 내용이 '숨김' 처리될 수
                                            있습니다.</li>
                                        <li>'사전동의 링크(URL)'를 잊으셨거나 등록한 청원 동의 수가 궁금하시다면 청와대 홈페이지 > <a href="#">국민청원</a>> >
                                            <a href="#">내 청원 보기</a>를 통해 확인하실 수 있습니다.
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- cs_box end -->
                        <div class="petition_search_area">
                            <div class="petition_search_area_title">
                                <h3><i class="fas fa-search"></i> 진행 중 청원 검색</h3>
                                <span></span>
                            </div>
                            <div class="petition_search_area_text">
                                <p>새 청원글 작성 전, 진행 중인 청원을 먼저 검색하시면 유사한 청원이 게시되었는지 확인하실 수 있습니다.<br>
                                    새로운 청원글을 작성하는 대신 기존 유사 청원에 동참하시면 국민의 뜻을 한 곳으로 모으는데 도움이 됩니다.
                                </p>
                            </div>
                            <form action=""  class="petition_search_bar">
                                <fieldset>
                                    <ul>
                                        <li>
                                            <input type="text" class="petition_search" placeholder="현재 진행중인 청원 검색">
                                        </li>
                                        <li>
                                            <button type="submit" class="petition_search_bar_button">검색</button>
                                        </li>
                                    </ul>
                                </fieldset>
                            </form>
                            <div class="petition_search_area_button">
                                <a href="">
                                    <i class="fas fa-plus-circle"></i> 지금 청원하기
                                </a>
                            </div>
                        </div>

                        <div class="search_board">
                            <div class="b_title">
                                <h4>청원 목록</h4>
                            </div>
                            <div class="b_list">
                                <div class="b1_head">
                                    <div class="b1_wrap">
                                        <div class="b1_category">분류</div>
                                        <div class="b1_subject">제목</div>
                                        <div class="b1_date">청원 만료일</div>
                                        <div class="b1_agree">참여인원</div>
                                    </div>
                                </div>
                                <div class="b1_body">
                                    <ul class="searchlist">
                                        
                                        <li>
                                            <div class="b1_wrap">
                                                <div class="b1_category cs">
                                                    교통/건축/국토
                                                </div>
                                                <div class="b1_subject ca">
                                                    <a href="#">
                                                        횡단보도 차량 인사 사고
                                                    </a>
                                                </div>
                                                <div class="b1_date cd">
                                                    2022-02-13
                                                </div>
                                                <div class="b1_agree">
                                                    154명
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
    </div>
	<jsp:include page="../include/footer.jsp"></jsp:include>
    <script src="./js/nav.js"></script>
</body>

</html>