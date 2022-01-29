const searchBtn = document.querySelector('.search_btn');
const selectKategorie = document.querySelector('.select_kategorie');

const searchCheckBox = document.querySelectorAll('.searchTarget');
const periodBtn = document.querySelectorAll('.periodBtn');
const calenderBtn = document.querySelectorAll('.fromtxt');
const kategorieBtn = document.querySelectorAll('.kategorie_btn');

//jsp ul
const Main = document.querySelector('.search_result_top');


const searchQuery = document.querySelector('.colb');
const searchCount = document.querySelector('.totalCount');


// 통합검색 , 토론방 , 국민청원 및 제안
var kategorie = 0;
//검색대상 (전체 == 0, 제목 == 1, 내용 == 2)
var searchTarget = 0;

// 기간
var startPeriod = "1500-01-01";
// 오늘날짜 구하기
var endPeriod = todayDate();
var query = '';

var forumsTitle = ``;
var forumsItem = ``;
var petitionsTitle = ``;
var petitionsItem = ``;
var forumsCount = 0;
var petitionsCount = 0;
var totalCount = 0;
//메인 검색 돋보기 버튼 클릭
searchBtn.onclick = () => {
	var queryString = document.querySelector('.query');
	query = queryString.value;
	//ajax 둘다
	if (selectKategorie.value == 0) {
		SearchLoad();


	}

	// ajax 토론방
	else if (selectKategorie.value == 1) {
		SearchLoad();
	}

	// ajax 청원
	else if (selectKategorie.value == 2) {
		SearchLoad();
	}

}
selectKategorie.onchange = () => {
	kategorie = selectKategorie.value;
}

// 검색대상 체크박스 클릭됐을 때
for (let i = 0; i < searchCheckBox.length; i++) {
	searchCheckBox[i].onclick = () => {
		NoMultiChk(searchCheckBox[i]);
		// 전체일때
		if ($('input:checkbox[id="searchAll"]').is(":checked") == true ||
			($('input:checkbox[id="searchTitle"]').is(":checked") == true &&
				$('input:checkbox[id="searchContent"]').is(":checked") == true)) {
			searchTarget = 0;
		}
		//제목만
		else if ($('input:checkbox[id="searchAll"]').is(":checked") == false &&
			($('input:checkbox[id="searchTitle"]').is(":checked") == true &&
				$('input:checkbox[id="searchContent"]').is(":checked") == false)) {
			searchTarget = 1;
		}
		// 내용만
		else if ($('input:checkbox[id="searchAll"]').is(":checked") == false &&
			($('input:checkbox[id="searchTitle"]').is(":checked") == false &&
				$('input:checkbox[id="searchContent"]').is(":checked") == true)) {
			searchTarget = 2;
		}

	}

}
for (let i = 0; i < periodBtn.length; i++) {
	periodBtn[i].onclick = () => {
		//전체 기간일 때
		if (i == 0) {
			startPeriod = "1500-01-01";
			endPeriod = todayDate();
		}
		else if (i == 1) {
			startPeriod = lastWeekDate();
			endPeriod = todayDate();
			calenderBtn[0].value = startPeriod;
			calenderBtn[1].value = endPeriod;
		}
		else if (i == 2) {
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
for (let i = 0; i < kategorieBtn.length; i++) {
	kategorieBtn[i].onclick = () => {
		const queryString = document.querySelector('.query');
		query = queryString.value;
		if (i == 0 || i == 1 || i == 2) {
			kategorie = 0;
			SearchLoad();

		}
		else if (i == 3) {
			kategorie = 1;
			SearchLoad();
		}
		else {
			kategorie = 2;
			SearchLoad();
		}
	}
}

// 토론방
function SearchLoad() {
	searchQuery.textContent = query;
	if (kategorie == 0) {
		$.ajax({
			type: "get",
			url: `/Search/forums?query=${query}&kategorie=${kategorie}&target=${searchTarget}&startPeriod=${startPeriod}&endPeriod=${endPeriod}`,
			dataType: "text",
			async: false,
			success: function(data) {
				forumsTitle = ``;
				forumsItem = ``;
				let forumsListObj = JSON.parse(data);
				if (forumsListObj.listTotalCount > 0) {
					forumsTitle += getForumsTitle(forumsListObj)
					forumsItem += getForums(forumsListObj.forumsList);
					forumsCount = 0;
					forumsCount = forumsListObj.listTotalCount;
				}
			},
			error: function() {
				alert('비동기 처리오류');
			}
		});
		$.ajax({
			type: "get",
			url: `/Search/petitions?query=${query}&kategorie=${kategorie}&target=${searchTarget}&startPeriod=${startPeriod}&endPeriod=${endPeriod}`,
			dataType: "text",
			async: false,
			success: function(data) {
				
				petitionsTitle = ``;
				petitionsItem = ``;
				let petitionsListObj = JSON.parse(data);
				if (petitionsListObj.listTotalCount > 0) {
					petitionsTitle += getpetitionsTitle(petitionsListObj)
					petitionsItem += getpetitions(petitionsListObj.petitionsList);
					petitionsCount = 0;
					petitionsCount = petitionsListObj.listTotalCount;
				}
			},
			error: function() {
				alert('비동기 처리오류');
			}
		});
		Main.innerHTML = forumsTitle + petitionsTitle;
		const forumsAdd = document.querySelector('.forums_add');
		const petitionsAdd = document.querySelector('.petitions_add');
		forumsAdd.innerHTML = forumsItem;
		petitionsAdd.innerHTML = petitionsItem;
		totalCount = forumsCount + petitionsCount;
		searchCount.textContent = totalCount;
	}
	//토론방 검색
	else if (kategorie == 1) {
		$.ajax({
			type: "get",
			url: `/Search/forums?query=${query}&kategorie=${kategorie}&target=${searchTarget}&startPeriod=${startPeriod}&endPeriod=${endPeriod}`,
			dataType: "text",
			async: false,
			success: function(data) {
				forumsTitle = ``;
				forumsItem = ``;

				let forumsListObj = JSON.parse(data);
				if (forumsListObj.listTotalCount > 0) {
					forumsTitle += getForumsTitle(forumsListObj)
					forumsItem += getForums(forumsListObj.forumsList);
					forumsCount = 0;
					forumsCount = forumsListObj.listTotalCount;
				}
			},
			error: function() {
				alert('비동기 처리오류');
			}
		});
		Main.innerHTML = forumsTitle;
		const forumsAdd = document.querySelector('.forums_add');
		forumsAdd.innerHTML = forumsItem;
		totalCount = forumsCount;
		searchCount.textContent = totalCount;
	}
	else {
		$.ajax({
			type: "get",
			url: `/Search/petitions?query=${query}&kategorie=${kategorie}&target=${searchTarget}&startPeriod=${startPeriod}&endPeriod=${endPeriod}`,
			dataType: "text",
			async: false,
			success: function(data) {
				petitionsTitle = ``;
				petitionsItem = ``;
				let petitionsListObj = JSON.parse(data);
				if (petitionsListObj.listTotalCount > 0) {
					petitionsTitle += getpetitionsTitle(petitionsListObj)
					petitionsItem += getpetitions(petitionsListObj.petitionsList);
					petitionsCount = 0;
					petitionsCount = petitionsListObj.listTotalCount;
				}
			},
			error: function() {
				alert('비동기 처리오류');
			}
		});
		Main.innerHTML = petitionsTitle;
		const petitionsAdd = document.querySelector('.petitions_add');
		petitionsAdd.innerHTML = petitionsItem;
		totalCount = petitionsCount;
		searchCount.textContent = totalCount;
	}






}








function getForumsTitle(forumsListObj) {
	let forumsHtml = `
		<li class="search_result_title">
            <div>토론방(${forumsListObj.listTotalCount})</div>
            <a class="more">
                <div>더보기 </div>
                <i class="fas fa-chevron-circle-right"></i>
            </a>
        </li>
        <li>
            <ul class="forums_add">
                
            </ul>

        </li>
	`;

	return forumsHtml;
}
function getForums(forumsList) {
	let forumsHtml = ``;
	for (let forums of forumsList) {
		forumsHtml += `
			<li >
	            <a class="search_result_detail" href="/forums/${forums.forums_id}">
	                <div class="search_result_detail_title">
	                    ${forums.topic}<span> [${forums.create_date}]</span>
	                </div>
	                <div class="search_result_detail_content">
	                    ${forums.content}
	                </div>
	            </a>
	            <div class="search_result_detail_kategorie">
	                HOME > 국민소통광장 > 토론방
	            </div>
	        </li>
		
		`;

	}
	return forumsHtml;

}
// 국민청원 및 제안 

function getpetitionsTitle(petitionsListObj) {
	let petitionsHtml = `
		<li class="search_result_title">
            <div>국민청원 및 제안(${petitionsListObj.listTotalCount})</div>
            <a class="more">
                <div>더보기 </div>
                <i class="fas fa-chevron-circle-right"></i>
            </a>
        </li>
        <li>
            <ul class="petitions_add">
                
            </ul>

        </li>
	`;

	return petitionsHtml;
}
function getpetitions(petitionsList) {
	let petitionsHtml = ``;
	for (let petitions of petitionsList) {
		petitionsHtml += `
			<li >
                <a class="search_result_detail" href="/petitions/${petitions.petition_id}">
                    <div class="search_result_detail_title">
                        ${petitions.title}
                    </div>
                    <div class="search_result_detail_petitions">
                        <div>[청원시작 : ${petitions.create_date}]</div>
                        <div>[청원마감 : ${petitions.end_date}]</div>
                        <div>[청원인원 : ${petitions.agree_count.toLocaleString()}]</div>
                    </div>
                    <div class="search_result_detail_content">
                        ${petitions.content}
                    </div>
                </a>
                <div class="search_result_detail_kategorie">
                    HOME > 국민소통광장 > 국민청원 및 제안
                </div>
            </li>
		
		`;

	}
	return petitionsHtml;

}
// 오늘 날짜 구하기
function todayDate() {
	var today = new Date();
	var year = today.getFullYear();
	var month = ('0' + (today.getMonth() + 1)).slice(-2);
	var day = ('0' + today.getDate()).slice(-2);
	var todayDate = year + '-' + month + '-' + day;
	return todayDate;
}

//지난 1주일 날짜
function lastWeekDate() {
	var today = new Date();

	// 오늘날의 년, 월, 일 데이터
	const day = today.getDate();

	// 일주일 전 구하기
	today = new Date(today.setDate(day - 7)).toLocaleDateString();
	today = today.replaceAll(" ", "");
	prime = today.split('.');
	prime[1] = ('0' + prime[1]).slice(-2);
	prime[2] = ('0' + prime[2]).slice(-2);
	today = prime[0] + "-" + prime[1] + '-' + prime[2];
	return today;


}
//지난 1년 날짜 
function lastYearDate() {
	var today = new Date();
	var year = today.getFullYear() - 1;
	var month = ('0' + (today.getMonth() + 1)).slice(-2);
	var day = ('0' + today.getDate()).slice(-2);
	var LYearDate = year + '-' + month + '-' + day;
	return LYearDate;
}

// 체크박스 중복 미허용
function NoMultiChk(chk) {
	var obj = document.getElementsByName("box");
	for (var i = 0; i < obj.length; i++) {
		if (obj[i] != chk) {
			obj[i].checked = false;
		}
	}
}















