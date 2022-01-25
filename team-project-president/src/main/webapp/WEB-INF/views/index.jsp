<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>청와대 메인</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/index.css">
    <link rel="stylesheet" href="/css/sliderbanner.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="/js/mousewheel-custom.js"></script>
    <script src="/js/slidebanner-custom.js"></script>
    <script src="/js/slidebanner.js"></script>
    <script src="/js/txteffect.js"></script>
    <script src="/js/jquery.scrollTo-min.js"></script>
    <script src="https://kit.fontawesome.com/fab8e6b94b.js" crossorigin="anonymous"></script>
</head>

<body>
    <div class="first-main" id="box">
	   	<nav>
	   		<jsp:include page="./include/nav.jsp"></jsp:include>
	   	</nav>
            
        <div class="first-container" id="box">
            <div class="first-covid">
                <div class="first-covid-top">
                    <table class="first-table" style="z-index: 1;">
                        <tr class="covid-main">
                            <td colspan="3">
                                <div class="covid-main-text">
                                    <img src="/image/first_siren.png" alt="사이렌" class="siren">
                                    <div class="covid-main-text1">
                                        코로나19 현황
                                    </div>
                                    <div class="covid-main-text2">단계적 일상회복을 향해 나아갑니다</div>
                                    <button class="covid-main-img">
                                        자세히 보기
                                    </button>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <table class="second-table" style="z-index: 1;">
                        <tr class="covid-table">
                            <td class="table-title">
                                <div class="table-title-box">
                                    <img src="/image/green_dot.png" alt="">
                                    <div class="table-title-text">60세 이상 접종률</div><span>( 60세 ) ${indexTableRespDto.date } 00시 기준</span>

                                </div>
                            </td>
                            <td class="table-title">
                                <div class="table-title-box">
                                    <div class="table-title-text">예방접종현황</div><span>(${indexTableRespDto.date }. 00시 기준, '21.2.26. 이후 누계,
                                        단위:%,
                                        명')</span>
                                </div>
                            </td>
                            <td class="table-title">
                                <div class="table-title-box">
                                    <div class="table-title-text">발생현황</div><span>(${indexTableRespDto.date }. 00시 기준, '20.1.3. 이후 누계, 단위:
                                        명)</span>
                                </div>
                            </td>
                        </tr>

                        <tr class="covid-table">
                            <td>
                                <div class="table-second">
                                    <div class="table-second-box">
                                        <div class="table-second-text">60세 이상 접종률</div>
                                        <div class="table-second-num">${indexTableRespDto.sixtytotal }%</div>
                                    </div>

                                </div>
                            </td>
                            <td>
                                <div class="table-second">
                                    <div class="table-second-box">
                                        <div class="table-second-text">1차접종</div>
                                        <div class="table-second-num">${indexTableRespDto.totalFirstPer }%</div>
                                    </div>
                                    <div>
                                        <div class="table-second-text">2차접종</div>
                                        <div class="table-second-num">${indexTableRespDto.totalSecondPer }%</div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="table-second">
                                    <div class="table-second-box">
                                        <div class="table-second-text-3">사망</div>
                                        <div class="table-second-num-3">23</div>
                                    </div>
                                    <div>
                                        <div class="table-second-text-3">재원 위중증</div>
                                        <div class="table-second-num-3">392</div>
                                    </div>
                                    <div>
                                        <div class="table-second-text-3">신규 임원</div>
                                        <div class="table-second-num-3">779</div>
                                    </div>
                                    <div>
                                        <div class="table-second-text-3">확진</div>
                                        <div class="table-second-num-3">8,571</div>
                                    </div>
                                </div>
                            </td>


                        </tr>
                        <tr class="covid-table">
                            <td class="table-third">
                                <div class="table-third-1">
                                    <div class="table-third-text">60세 이상</div>
                                    <div>
                                        <div class="table-third-text">1차접종</div>
                                        <div class="table-third-num1">${indexTableRespDto.sixtyFirstCnt }%</div>
                                    </div>
                                    <div>
                                        <div class="table-third-text">2차접종</div>
                                        <div class="table-third-num2">${indexTableRespDto.sixtySecondCnt }%</div>
                                    </div>
                                    

                                </div>
                            </td>

                            <td class="table-third">
                                <div class="table-third-2">
                                    <div class="table-third-textbox">
                                        <div class="table-third-text">누적<span>${indexTableRespDto.totalFirstCnt }</span></div>
                                        <div class="table-third-text">신규<span>${indexTableRespDto.todayFirstCnt }</span></div>
                                    </div>
                                    <div class="table-third-textbox">
                                        <div class="table-third-text">누적<span>${indexTableRespDto.totalSecondCnt }</span></div>
                                        <div class="table-third-text">신규<span>${indexTableRespDto.todaySecondCnt }</span></div>
                                    </div>
                                </div>
                            </td>
                            <td class="table-third">
                                <div class="table-third-3">
                                    <div class="table-third-box-3">
                                        <div class="table-third-text-3">누적(사망)<span>${indexTableRespDto.deathCnt }</span></div>
                                    </div>
                                    <div class="table-third-box-3">
                                        <div class="table-third-text-3">(누적)확진<span>${indexTableRespDto.decideCnt }</span></div>
                                    </div>

                                </div>	
                            </td>

                        </tr>

                    </table>
                </div>
                <div class="first-covid-bottom">
                    <div>
                        <img class="textmove" src="/image/main_text.png" alt="국립대병원은..">
                    </div>
                    <div class="first-covid-text">
                        코로나 병상 확보는 전적으로 정부의 책임으로<br>
                        특단의 조치를 통해 의료 대응 역량을 확충하겠습니다​<br>
                    </div>
                    <div class="first-covid-detail">
                        <img src="/image/look_detail.png" alt="자세히 보기">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="second-main">
        <div class="slide_wrap1" id="box">
            <!-- 화면에 보여질 이미지그룹 -->
        <div id="view">
            <ul>
                <li>
                    <div class="news_bar">
                    <a href="#">종교 지도자 초청 오찬 간담회 모두발언</a></div>
                    <div class="more_read_box">
                    <a href="#"><img src="image/news_check (1).png" alt="more read"></a>
                    <div class="scl_icon" >
                            <a href="#tag1" class="scl_icon_box" >
                                <div class="s1_arrow">
                                        <div class="scroll-arrow"></div>
                                        <div class="scroll-arrow"></div>
                                        <div class="scroll-arrow"></div>
                                </div>
                                <span>SCROLL DOWN</span>
                            </a>
                    </div>
                    </div>
                    <img class="today_news" src="image/today_news.png" alt="image1">
                    <span class="time">2022.01.12</span>
                </li>
                <li>
                    <div class="news_bar">
                    <a href="#">구미형 일자리(LG BCM) 공장 착공식 모두발언</a></div>
                    <div class="more_read_box">
                    <a href="#"><img src="image/news_check (1).png" alt="more read"></a>
                    <div class="scl_icon" >
                            <a href="#tag1" class="scl_icon_box" >
                                <div class="s1_arrow">
                                        <div class="scroll-arrow"></div>
                                        <div class="scroll-arrow"></div>
                                        <div class="scroll-arrow"></div>
                                </div>
                                <span>SCROLL DOWN</span>
                            </a>
                    </div>
                    </div>
                    <img class="today_news" src="image/today_news.png" alt="image2">
                    <span class="time">2022.01.11</span>
                </li>
            </ul>
        </div>
        <!-- 이미지들을 제어할 버튼그룹 -->
        <ul id="btns">
            <li></li>
            <li></li>
        </ul>
        </div>
        <div class="slide_wrap2" id="box" >
            <!-- 화면에 보여질 이미지그룹 -->
        <div id="view2">
            <ul>
                <li id="tag1">
                    <div class="news_bar">
                    <a href="#" target="_self">수석보좌관회의 모두발언</a></div>
                    <div class="more_read_box">
                            <a href="#"><img src="image/news_check (1).png" alt="more read"></a>
                            <div class="scl_icon" >
                                <a href="#tag2"  class="scl_icon_box" >
                                        <div class="s1_arrow">
                                            <div class="scroll-arrow"></div>
                                            <div class="scroll-arrow"></div>
                                            <div class="scroll-arrow"></div>
                                        </div>
                                        <span>SCROLL DOWN</span>
                                </a>
                            </div>
                            </div>
                    <img class="today_news" src="image/today_news.png" alt="image3">
                    <span class="time">2022.01.10</span>
                </li>
                <li>
                    <div class="news_bar">
                    <a href="#">동해선 강릉-제진 철도건설 착공식 모두발언</a></div>
                    <div class="more_read_box">
                            <a href="#">
                                <img src="image/news_check (1).png" alt="more read"></a>
                                <div class="scl_icon" >
                                        <a href="#tag2" class="scl_icon_box" >
                                            <div class="s1_arrow">
                                                    <div class="scroll-arrow"></div>
                                                    <div class="scroll-arrow"></div>
                                                    <div class="scroll-arrow"></div>
                                            </div>
                                            <span>SCROLL DOWN</span>
                                        </a>
                                </div>
                            </div>
                    <img class="today_news" src="image/today_news.png" alt="image4">
                    <span class="time">2022.01.05</span>
                </li>
            </ul>
        </div>

            <!-- 이미지들을 제어할 버튼그룹 -->
            <ul id="btns2">
                <li></li>
                <li></li>
            </ul>
        </div>
    </div>

    <jsp:include page="./include/footer.jsp"></jsp:include>
</body>

</html>