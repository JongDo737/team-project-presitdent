const searchBtn = document.querySelector('.search_btn');
const selectKategorie = document.querySelector('.select_kategorie');

const searchCheckBox = document.querySelectorAll('.searchTarget');
const periodBtn = document.querySelectorAll('.periodBtn');
const calenderBtn = document.querySelectorAll('.fromtxt');
const kategorieBtn = document.querySelectorAll('.kategorie_btn');

// 통합검색 , 토론방 , 국민청원 및 제안
var kategorie = 0;
//검색대상 (전체 == 0, 제목 == 1, 내용 == 2)
var searchTarget = 0;

// 기간
var startPeriod = "1500-01-01";
// 오늘날짜 구하기
var endPeriod = todayDate();



//메인 검색 돋보기 버튼 클릭
searchBtn.onclick = () => {
	const queryString = document.querySelector('.query');
	query = queryString.value;
	//ajax 둘다
	if(selectKategorie.value == 0){
		forumsLoad();
		petitionsLoad();
	}
	
	// ajax 토론방
	else if(selectKategorie.value == 1){
		forumsLoad();
	}
	
	// ajax 청원
	else if(selectKategorie.value == 2){
		petitionsLoad();
	}
	
}
selectKategorie.onchange = () => {
	kategorie = selectKategorie.value;
}

// 검색대상 체크박스 클릭됐을 때
for(let i = 0; i<searchCheckBox.length; i++){
	searchCheckBox[i].onclick = () => {
		NoMultiChk(searchCheckBox[i]);
		// 전체일때
		if($('input:checkbox[id="searchAll"]').is(":checked") == true ||
		 ( $('input:checkbox[id="searchTitle"]').is(":checked") == true &&
		  $('input:checkbox[id="searchContent"]').is(":checked") == true)) {
			searchTarget = 0;
		}
		//제목만
		else if($('input:checkbox[id="searchAll"]').is(":checked") == false &&
		 ( $('input:checkbox[id="searchTitle"]').is(":checked") == true &&
		  $('input:checkbox[id="searchContent"]').is(":checked") == false)){
			searchTarget = 1;
		}
		// 내용만
		else if($('input:checkbox[id="searchAll"]').is(":checked") == false &&
		 ( $('input:checkbox[id="searchTitle"]').is(":checked") == false &&
		  $('input:checkbox[id="searchContent"]').is(":checked") == true)){
			searchTarget = 2;
		}
		
	}
	
}
for (let i = 0; i < periodBtn.length; i++){
	periodBtn[i].onclick = () => {
		//전체 기간일 때
		if(i==0){
			startPeriod = "1500-01-01";
			endPeriod = todayDate();
		}
		else if(i ==1){
			startPeriod = lastWeekDate();
			endPeriod = todayDate();
			calenderBtn[0].value = startPeriod;
			calenderBtn[1].value = endPeriod;
		}
		else if(i ==2){
			startPeriod = lastYearDate();
			endPeriod = todayDate();
			calenderBtn[0].value = startPeriod;
			calenderBtn[1].value = endPeriod;
			
		}
		
	}
}
// 달력 버튼 
calenderBtn[0].onchange = () => {
	startPeriod = calenderBtn[0].value;
}
calenderBtn[1].onchange = () => {
	endPeriod = calenderBtn[1].value;
}

// 아래 카테고리 버튼들
for(let i=0; i<kategorieBtn.length; i++){
	kategorieBtn[i].onclick = () => {
		if(i == 0 || i == 1 || i ==2){
			kategorie = 0;
			forumsLoad();
			petitionsLoad();
		}
		else if(i == 3){
			kategorie = 1;
			forumsLoad();
		}
		else{
			kategorie = 2;
			petitionsLoad();
		}
	}
}


// 토론방
function forumsLoad() {
	
	$.ajax({
		type: "get",
		url: `/Search/forums?query=${query}&kategorie=${kategorie}&target=${searchTarget}&startPeriod=${startPeriod}&endPeriod=${endPeriod}`,
		dataType: "text",
		success: function(data) {
			alert("ajax 성공");
		},
		error: function() {
			alert('비동기 처리오류');
		}
	});
}

// 국민청원 및 제안 
function petitionsLoad() {
	
	$.ajax({
		type: "get",
		url: `Search/petitions?query=${query}&kategorie=${kategorie}&target=${searchTarget}&startPeriod=${startPeriod}&endPeriod=${endPeriod}`,
		dataType: "text",
		success: function(data) {
			alert("ajax 성공");
			
		},
		error: function() {
			alert('비동기 처리오류');
		}
	});
}
// 오늘 날짜 구하기
function todayDate(){
	var today = new Date();
	var year = today.getFullYear();
	var month = ('0' + (today.getMonth() + 1)).slice(-2);
	var day = ('0' + today.getDate()).slice(-2);
	var todayDate = year + '-' + month  + '-' + day;
	return todayDate;
}

//지난 1주일 날짜
function lastWeekDate() {
	var today = new Date();

	// 오늘날의 년, 월, 일 데이터
	const day = today.getDate();
	
	// 일주일 전 구하기
	today = new Date(today.setDate(day - 7)).toLocaleDateString();
	today = today.replaceAll(" ","");
	prime = today.split('.');
	prime[1] = ('0' + prime[1]).slice(-2);
	prime[2] = ('0' + prime[2]).slice(-2);
	today = prime[0]+"-"+prime[1]+'-'+prime[2];
	return today;
	
	
}
//지난 1년 날짜 
function lastYearDate() {
	var today = new Date();
	var year = today.getFullYear()-1;
	var month = ('0' + (today.getMonth() + 1)).slice(-2);
	var day = ('0' + today.getDate()).slice(-2);
	var LYearDate = year + '-' + month  + '-' + day;
	return LYearDate;
}

// 체크박스 중복 미허용
function NoMultiChk(chk){ 
	var obj = document.getElementsByName("box"); 
	for(var i=0; i<obj.length; i++){ 
		if(obj[i] != chk){ 
			obj[i].checked = false; 
		} 
	}
} 















