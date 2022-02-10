<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>way to come3</title>
    <link rel="stylesheet" href="/css/way_to_come2.css">
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
        <div class="contents_tab_li"><a href="/about/location-desk" class="tab_menu" id="tab_bar">청와대 관람 안내소</a></div>
        <div class="contents_tab_li"><a href="/about/location-yeonpung" class="tab_menu" id="tab_bar">연풍문</a></div>
        <div class="contents_tab_li" id="on"><a href="/about/location-shihwa" class="tab_menu" id="tab_bar">시화문</a></div>
        <div class="contents_tab_li"><a href="/about/location-chunchugwan" class="tab_menu">춘추관</a></div>
    </div>
    <div class="map3"></div>
    <div class="table-wrap">
        <div class="grid-table">
            <div class="thcolor">지하철</div>
            <div>
                <span style="color:darkblue">3호선 경복궁역 4번 출구 → 도보 15분거리</span><br>
                지하철 3호선 경복궁역 4번 출구로 나오셔서 통의파출소방향으로 약 800m 가면 청와대 분수대가 있고<br>
                이곳에서 오른쪽 방향으로 250m 가시면 연풍문이 있습니다.<br><br>
                
                <span style="color:darkblue">3호선 안국역 1번 출구 → 도보 20분 거리</span><br>
                지하철 3호선 안국역 1번 출구로 나오셔서 오른편에 풍문여고를 지나 400m 이동하신 뒤,<br>
                오른쪽 방향으로 900m 이동하시면 춘추관이 있고 춘추관을 지나 50m 가시면 연풍문이 있습니다.
            </div>
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
            <div class="thcolor">승용차</div>
            <div><strong>승용차로 오시는 길</strong><br>
                성산대교를 이용하여 오시는 경우 사직로를 지나 지하철 3호선 경복궁역까지 오셔서<br>
                왼쪽 효자동길로 들어오셔서 800미터 정도 이동하시면 청와대 분수대가 있습니다.<br>
                서울역이나 종로방면에서 오시는 경우는 세종로를 지나 좌회전 후 우회전하여 효자동길로 오시면 청와대가 있습니다.</div>
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