<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>way to come</title>
    <link rel="stylesheet" href="/css/way_to_come.css">
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <nav>
        <jsp:include page="../include/nav.jsp"/>
    </nav>
    <div class="sgt_wrap">
        <div class="top_img">
            <h2>오시는 길</h2>
        </div>
    </div>
    <div class="contents_tab">
        <div class="contents_tab_li" id="on"><a href="/about/location-desk" class="tab_menu" id="tab_bar">청와대 관람 안내소</a></div>
        <div class="contents_tab_li"><a href="/about/location-yeonpung" class="tab_menu" id="tab_bar">연풍문</a></div>
        <div class="contents_tab_li"><a href="/about/location-shihwa" class="tab_menu" id="tab_bar">시화문</a></div>
        <div class="contents_tab_li"><a href="/about/location-chunchugwan" class="tab_menu">춘추관</a></div>
    </div>
    <h3>청와대 관람을 신청하신 분들이 집결하는 청와대 관람 만남의 장소입니다.</h3>
    <div class="map">
        <a href="#">
            <img src="https://www1.president.go.kr/images/cheongwadae/pic_mapinfo.png" alt="청와대 만남의 장소">
        </a>
    </div>
    <div class="table-wrap">
        <div class="grid-table">
            <div class="thcolor">주차</div>
            <div>경복궁 주차장 이용 : 유료<br>
                <span style="font-size:smaller;">* 주차문의 : 070-7119-3123</span></div>
            <div class="thcolor">지하철</div>
            <div>3호선 경복궁역 5번 출구에서<br>
                경복궁 주차장 방향으로 600m 정도 걸어가시면 청와대 관람 안내소가 있습니다.<br>
                단, <span style="color:rgb(224, 14, 14)">매주 화요일</span>은 경복궁 휴관일로 4번 출구를 이용하시기 바라며, 안국역 방향으로 약 700m 오신 후<br>
                경복궁 사거리(동십자각) 좌측에 경복궁 주차장이 있고, 경복궁 주차장으로 들어오시면 관람안내소가 있습니다.</div>
            <div class="thcolor">버스</div>
            <div  style="line-height: 30px;"><strong>경복궁 정류장 하차</strong><br>
                <span class="bus_g circle">
                    <span>G</span>
                </span>
                <span style="color:darkblue;margin-right: 5px;">171,272,109,601,606</span>
                <span class="bus_b circle">
                    <span>B</span>
                </span>
                <span style="color:rgb(22, 180, 22);">1020,7025</span><br>
                <div style="height: 30px;"></div>
                <strong>법련사 정류장 하차</strong><br>
                마을버스 종로11</div>
            <div class="thcolor">관람 출발 차량<br>이용안내</div>
            <div ><span style="color:darkblue">(경복궁 주차장 → 청와대 춘추관)</span><br>
                경복궁 주차장 내의 '만남의 장소'에서 셔틀버스 탑승<br>
                셔틀버스 : 수시운행중<br><br>
                
                청와대 셔틀버스 차량은 운행 등의 제반 여건상 전동 휠체어 탑승이 어려우니, 
                전동 휠체어를 타고 오시는 관람인께서는 1:1문의하기에 남겨주시면 연락드리겠습니다.<br><br>
                
                청와대 관람 셔틀버스는 개인 관람객(10명 이하 신청자)에게 우선 지원하고 있으므로<br>
                단체의 경우, 자체 차량(버스)이 없으면 개인 관람객보다 관람이 늦어질 수 있음을 참고하시기 바랍니다.</div>
            <div class="thcolor">관람 이후 차량 안내</div>
            <div><span style="color:darkblue">(무궁화 동산 → 경복궁 주차장)</span><br>
                셔틀버스 운행시간표<br>
                11:40, 12:00, 12:20, 12:40<br>
                15:40, 16:00, 16:20, 16:40, 17:00<br>
                개인 : 무궁화 동산 앞에서 셔틀버스 이용 / 단체 : 자체 차량 이용<br>
                ※ 마지막 운행시간 이후에는 셔틀버스가 없습니다.</div>
        </div>
    </div>
	<jsp:include page="../include/footer.jsp"/>
</body>
</html>