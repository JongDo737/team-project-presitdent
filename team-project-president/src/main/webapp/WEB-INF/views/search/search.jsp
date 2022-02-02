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
    <script src="https://kit.fontawesome.com/fab8e6b94b.js" crossorigin="anonymous"></script>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
    <nav>
		<jsp:include page="../include/nav.jsp"></jsp:include>
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
                    <select id="color" title="검색항목 선택" class="select_kategorie">
                        <option value="0" selected="selected">통합검색</option>
                        <option value="0">문재인대통령</option>
                        <option value="0">청와대뉴스룸</option>
                        <option value="1">토론방</option>
                        <option value="2">국민청원 및 제안</option>
                    </select>
                    <ul id="login" class="search_PGbox">
                        <li class="search_PG_bar">
                            <label for="query" class="hide">검색어</label>
                            <input type="text" title="검색어 입력" class="query">
                        </li>
                        <li class="search_PGbox_btn"  >
                            <input type="image" src="/image/search/searchPage_btn.jpg" class="search_btn" title="검색하기">
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
                <li><label for="chkAll"><input type="checkbox" class="searchTarget"  id="searchAll" name="box" checked="" value="0">
                        전체</label></li>
                <li><label for="chkTitle"><input type="checkbox" class="searchTarget" id="searchTitle" name="box"  >
                        제목</label></li>
                <li><label for="chkContent"><input type="checkbox" class="searchTarget" id="searchContent" name="box"  >
                        내용</label></li>
            </ul>
        </div>

        <div class="PG_term">
            <h4>검색기간</h4>
            <ul>
                <li ><a class="periodBtn" id="periodId">전체</a></li>
                <li ><a class="periodBtn" id="">최근1주</a></li>
                <li><a class="periodBtn" id="">최근1년</a></li>
            </ul>
        </div>
        <div class="PG_calendar">
            
            <input type="date" class="fromtxt" id="startDate">
            <div>  ~  </div>
			<input type="date" class="fromtxt" id="endDate">
        </div>
    </div>
    <div class="search_main">
        <div class="search_container">
            <div class="center_h2">
                <h2>검색어 <span class="colb">""</span> 에 대한 검색 결과입니다. <span class="colr">(<span class="totalCount">0</span>건)</span></h2>
            </div>
            <ul class="btn5">
                <li><a class="kategorie_btn" id="kategorieId">통합검색</a></li>
                <li ><a class="kategorie_btn" id="">문재인 대통령</a></li>
                <li ><a class="kategorie_btn" id="">청와대 뉴스룸</a></li>
                <li><a class="kategorie_btn" id="">토론방</a></li>
                <li><a class="kategorie_btn" id="">국민청원 및 제안</a></li>
            </ul>
           <div class="search_result">

                <ul class="search_result_top">
                    
                    
                </ul>
                
            </div>

        </div>

    </div>

    <footer>
        <jsp:include page="../include/footer.jsp"></jsp:include>
    </footer>
	<script src="/js/search.js"></script>
</body>

</html>