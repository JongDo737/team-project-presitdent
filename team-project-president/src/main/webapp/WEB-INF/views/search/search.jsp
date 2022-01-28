	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>search</title>
    <link rel="stylesheet" href="/css/search.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css"
        media="all" />
    <script src="https://kit.fontawesome.com/fab8e6b94b.js" crossorigin="anonymous"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js" type="text/javascript"></script>
    <script src="/js/seach.js"></script>
</head>

<body>
    <nav>

    </nav>
    <div class="sgt_wrap">
        <div class="top_img">
            <div class="s_wrap">
                <div class="s_box">
                    <span class="w_line"></span>
                    <h2>통합검색</h2>
                    <span class="w_line2"></span>
                </div>
                <div id="select_box">
                    <select id="color" title="검색항목 선택">
                        <option value="ALL" selected="selected">통합검색</option>
                        <option value="president">문재인대통령</option>
                        <option value="news">청와대뉴스룸</option>
                        <option value="agendas">토론방</option>
                        <option value="petitions">국민청원 및 제안</option>
                    </select>
                    <ul id="login" class="search_PGbox">
                        <li class="search_PG_bar">
                            <label for="query" class="hide">검색어</label>
                            <input type="text" title="검색어 입력" id="query" name="query" value="">
                        </li>
                        <li class="search_PGbox_btn">
                            <input type="image" src="/image/search/searchPage_btn.jpg" title="검색하기">
                        </li>
                    </ul>

                </div>
            </div>
        </div>

    </div>
    <div class="PG_tit">

        <div class="PG_check">
            <h4>검색대상</h4>
            <ul>
                <li><label for="chkAll"><input type="checkbox" name="searchChk" id="chkAll" checked="" value="ALL">
                        전체</label></li>
                <li><label for="chkTitle"><input type="checkbox" name="searchChk" id="chkTitle" value="title">
                        제목</label></li>
                <li><label for="chkContent"><input type="checkbox" name="searchChk" id="chkContent" value="content">
                        내용</label></li>
            </ul>
        </div>

        <div class="PG_term">
            <h4>검색기간</h4>
            <ul>
                <li id="on"><a href="#">전체</a></li>
                <li><a href="#">최근1주</a></li>
                <li><a href="#">최근1년</a></li>
            </ul>
        </div>
        <div class="PG_calendar">
            <input type="text" id="from" class="fromtxt"><input type="image" id="from" class="fromimg"
                src="/image/search/searchPage_calBtn.png"><span> ~ </span>
            <input type="text" id="to" class="totxt">
            <input type="image" id="to" class="toimg" src="/image/search/searchPage_calBtn.png">
        </div>
    </div>
    <div class="search_main">
        <div class="search_container">
            <div class="center_h2">
                <h2>검색어 <span class="colb">""</span> 에 대한 검색 결과입니다. <span class="colr">(951건)</span></h2>
            </div>
            <ul class="btn5">
                <li id="on"><a href="#">통합검색</a></li>
                <li><a href="#">문재인 대통령</a></li>
                <li><a href="#">청와대 뉴스룸</a></li>
                <li><a href="#">토론방</a></li>
                <li><a href="#">국민청원 및 제안</a></li>
            </ul>
            <div class="search_result">
                <ul class="search_result_top">
                    <li class="search_result_title">
                        <div>토론방(997)</div>
                        <a href="#">더보기 <i class="fas fa-angle-right"></i></a>
                    </li>
                    <ul>
                        <li class="search_result_detail">
                            <div class="search_result_detail_title">
                                한-사우디 스마드 혁신성장 포럼 기조연설<span> [2022-01-18]</span>
                            </div>
                            <div class="search_result_detail_content">
                                ... 협력하고 제2, 제3의 메가 프로젝트를 성공시켜 나가기를 기대합니다. 셋째, 신성장 동력 분야 협력입니다. 양국은 코로나 상황 속에서 인공호흡기 공동
                                생산, 진단키트 등 방역 용품 협력, 코로나 백신과 치료제
                                관련 협력 등 보건의료 협력의 가능성을 확인했습니다. 최근에는 한국 인공지능 의료 소프트웨어 ‘닥터
                            </div>
                            <div class="search_result_detail_kategorie">
                                HOME > 국민소통광장 > 토론방
                            </div>
                        </li>
                        <li class="search_result_detail">
                            <div class="search_result_detail_title">
                                한-사우디 스마드 혁신성장 포럼 기조연설<span> [2022-01-18]</span>
                            </div>
                            <div class="search_result_detail_content">
                                ... 협력하고 제2, 제3의 메가 프로젝트를 성공시켜 나가기를 기대합니다. 셋째, 신성장 동력 분야 협력입니다. 양국은 코로나 상황 속에서 인공호흡기 공동
                                생산, 진단키트 등 방역 용품 협력, 코로나 백신과 치료제
                                관련 협력 등 보건의료 협력의 가능성을 확인했습니다. 최근에는 한국 인공지능 의료 소프트웨어 ‘닥터
                            </div>
                            <div class="search_result_detail_kategorie">
                                HOME > 국민소통광장 > 토론방
                            </div>
                        </li>
                    </ul>
                </ul>
                <ul class="search_result_top">
                    <li class="search_result_title">
                        <div>국민청원 및 제안(1,819)</div>
                        <a href="#">더보기 <i class="fas fa-angle-right"></i></a>
                    </li>
                    <ul>
                        <li class="search_result_detail">
                            <div class="search_result_detail_title">
                                한-사우디 스마드 혁신성장 포럼 기조연설<span> [2022-01-18]</span>
                            </div>
                            <div class="search_result_detail_content">
                                ... 협력하고 제2, 제3의 메가 프로젝트를 성공시켜 나가기를 기대합니다. 셋째, 신성장 동력 분야 협력입니다. 양국은 코로나 상황 속에서 인공호흡기 공동
                                생산, 진단키트 등 방역 용품 협력, 코로나 백신과 치료제
                                관련 협력 등 보건의료 협력의 가능성을 확인했습니다. 최근에는 한국 인공지능 의료 소프트웨어 ‘닥터
                            </div>
                            <div class="search_result_detail_kategorie">
                                HOME > 국민소통광장 > 토론방
                            </div>
                        </li>
                        <li class="search_result_detail">
                            <div class="search_result_detail_title">
                                한-사우디 스마드 혁신성장 포럼 기조연설<span> [2022-01-18]</span>
                            </div>
                            <div class="search_result_detail_content">
                                ... 협력하고 제2, 제3의 메가 프로젝트를 성공시켜 나가기를 기대합니다. 셋째, 신성장 동력 분야 협력입니다. 양국은 코로나 상황 속에서 인공호흡기 공동
                                생산, 진단키트 등 방역 용품 협력, 코로나 백신과 치료제
                                관련 협력 등 보건의료 협력의 가능성을 확인했습니다. 최근에는 한국 인공지능 의료 소프트웨어 ‘닥터
                            </div>
                            <div class="search_result_detail_kategorie">
                                HOME > 국민소통광장 > 토론방
                            </div>
                        </li>
                    </ul>
                </ul>
            </div>

        </div>

    </div>

    <footer>
        footer
    </footer>

</body>

</html>