const searchBtn = document.querySelector('.search_btn');
const selectKategorie = document.querySelector('.select_kategorie');

const searchCheckBox = document.querySelectorAll('.searchTerget');

//검색대상 (전체 == 0, 제목 == 1, 내용 == 2)
var searchTarget = 0;

// 기간
var startPeriod = "1500-01-01";
// 오늘날짜 구하기
var endPeriod = todayDate();

// 검색대상 체크박스 클릭됐을 때
for(var i = 0; i<searchCheckBox.length; i++){
	searchCheckBox[i].onclick = () => {
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
	


//메인 검색 돋보기 버튼 
searchBtn.onclick = () => {
	const queryString = document.querySelector('.query');
	alert(queryString.value);
	alert(selectKategorie.value);
	
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

// 토론방
function forumsLoad() {
	
	$.ajax({
		type: "get",
		url: `/Search/forums?kategorie=${selectKategorie.value}&target=${searchTarget}`,
		dataType: "text",
		success: function(data) {
			
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
		url: `Search/petitions?kategorie=${selectKategorie.value}&target=${searchTarget}`,
		dataType: "text",
		success: function(data) {
		
			
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