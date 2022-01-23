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
    <link rel="stylesheet" href="/css/recommendation.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
    <section class="petitions_head">
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
    <section class="petitions_contents">
        <div class="contents_tab">
            <div class="contents_tab_li"><a href="/petitions" class="tab_menu">분야별 청원</a></div>
            <div class="contents_tab_li" id="on"><a href="#" class="tab_menu" id="tab_center">추천순 청원</a></div>
            <div class="contents_tab_li"><a href="#" class="tab_menu">답변된 청원</a></div>
        </div>
        <div class="contents_area">
            <!-- 지금 청원하기 -->
            <div class="petitions_box">
                <div class="box_title">
                    <h4>· 청원 작성하기</h4>
                </div>
                <div class="box_text">
                    <p>청와대의 직접 소통은 국민이 물으면 정부가 답한다 는 철학을 지향합니다.</p>
                    <p>국정 현안 관련, 국민들 다수의 목소리가 모여 30일 동안 20만 이상 추천 청원에 대해서는</p>
                    <p>
                        <span class="box_text_color">정부 및 청와대 관계자(각 부처 장관, 대통령 수석·비서관, 특별 보좌관 등)</span>
                        가 답하겠습니다.
                    </p>
                    <div class="box_text_btnbox">
                        <a href="#">지금 청원하기</a>
                    </div>
                </div>
            </div>
            <!-- 답변 대기중인 청원 -->
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
            <!-- 청원 목록 -->
            <div class="reco_full_list_body">
                <div class="reco_full_list_main">
                    <div class="reco_full_list_title">
                        <h4>청원 목록</h4>
                        <div class="reco_full_list_another">
                            <a href="#">지금 청원하기</a>                      
                        </div>
                    </div>
                    <div class="reco_full_board_head">
                        <div class="reco_full_board_wrap">
                            <div class="reco_full_board_category">분류</div>
                            <div class="reco_full_board_subject">제목</div>
                            <div class="reco_full_board_date">청원 만료일</div>
                            <div class="reco_full_board_agree">참여 인원</div>
                        </div>
                    </div>
                    <ul class="reco_full_board_list">
                    </ul>
              
                        <!-- 검색창 -->
                        <div class="search_wrap">'
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

    </section>
    <script src="/js/reco_petitions.js"></script>
</body>
</html>