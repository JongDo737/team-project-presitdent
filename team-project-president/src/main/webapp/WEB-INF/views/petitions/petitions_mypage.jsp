<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/petitions_mypage.css">
</head>

<body>
    <section class="petitions_head">
        <div class="petitions_head_txt">
            <h2 class="head_text_title">
                국민청원
            </h2>
        </div>
    </section>
    <div class="contents_tab">
        <div class="contents_tab_li"><a href="#" class="tab_menu">분야별 청원</a></div>
        <div class="contents_tab_li"><a href="#" class="tab_menu" id="tab_center">추천순 청원</a></div>
        <div class="contents_tab_li"><a href="#" class="tab_menu">답변된 청원</a></div>
    </div>
    <div class="mypage_area">
        <!-- 내 청원 보기 -->
        <div class="mypage_head">
            <h3 class="mypage_head_title">
                내 <span>청원 </span>보기
            </h3>
        </div>
        <div class="mypage_body">
            <div class="mypage_text_info">
                <ul>
                    <li>청원글 작성 후 30일 동안 100명의 사전동의를 받은 청원만 청원 게시판에 공개됩니다.</li>
                    <li>아래 <span>사전동의 URL 보기</span> 링크를 통해서만 사전동의가 가능합니다.</li>
                    <li>100명의 사전동의를 받은 경우라도, <span>청원요건에 맞지 않는 경우</span> 청원 게시판에 공개되지 않을 수 있습니다.</li>
                </ul>
            </div>
            <div class="mypage_list">
                <div class="mypage_list_title">
                    <h4>내가 작성한 청원</h4>
                </div>
                <div class="mypage_list_container">
                    <div class="mypage_list_category">
                        <div class="list_category_status">진행상황</div>
                        <div class="list_category_classification">분류</div>
                        <div class="list_category_title">제목</div>
                        <div class="list_category_date">청원기간</div>
                        <div class="list_category_participants">참여인원</div>
                        <div class="list_category_url">URL</div>
                    </div>
                    <div class="mypage_list_contents">
                        <div class="mypage_contents_empty">작성된 청원글이 없습니다.</div>
                        <div class="mypage_contents_main">
                            <ul>
                                <li>
                                    <div class="mypage_mylist" id="mylist_status"> <span>사전동의 진행중</span></div>
                                    <div class="mypage_mylist" id="mylist_classification"><span>안전/환경</span></div>
                                    <div class="mypage_mylist" id="mylist_title">
                                        <a href="#">
                                            <span>코로나 3차 백신 접종 건의안</span>
                                        </a>
                                    </div>
                                    <div class="mypage_mylist" id="mylist_date">
                                        <span>22-01-18 ~ 22-02-17</span>

                                    </div>
                                    <div class="mypage_mylist" id="mylist_participants">
                                        <span>0명</span>
                                    </div>
                                    <div class="mypage_mylist" id="mylist_url">
                                        <a href="#">URL 보기</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="mypage_logout_btn">
                    <a href="#" id="mypage_logout">로그아웃</a>
                </div>
            </div>
        </div>
        <!--  -->
    </div>

</body>

</html>