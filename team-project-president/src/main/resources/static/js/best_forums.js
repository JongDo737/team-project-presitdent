/**
 * 
 */

const bestTop5 = document.querySelector(".best_top5_list");
const replyTop5 = document.querySelector(".reply_top5_list");
const weekBtn = document.querySelectorAll(".week_btn");
const dateSel = document.querySelectorAll(".date_selection");

for(let i =0;i<dateSel.length; i++) {
	dateSel[i].onclick = () => {
		alert();
	}
	
}
 let forumsItem = ``;

var today = new Date();
var year = today.getFullYear();
var month = (today.getMonth()+1);
var day = ('0' + today.getDate()).slice(-2);
var todayDate = year + '-' + month + '-' + day;
var num = 0;
var startDates = [];
var endDates = [];

var startDate = todayDate;
var endDate = makeDate(7);
 // 주간, 월간을 고르는 변수
 var selection = 1;
 var lastDay = [31, 28,31,30,31,30,31,31,30,31,30,31];
function makeDate(num) {
	var today = new Date();

	// 오늘날의 년, 월, 일 데이터
	const day = today.getDate();
	// 일주일 전 구하기
	today = new Date(today.setDate(day - num)).toLocaleDateString();
	today = today.replaceAll(" ", "");
	prime = today.split('.');
	prime[1] = ('0' + prime[1]).slice(-2);
	prime[2] = ('0' + prime[2]).slice(-2);
	today = prime[0] + "-" + prime[1] + '-' + prime[2];
	return today;
}

function getWeekNo(v_date_str) {
 var date = new Date();
 if(v_date_str){
  date = new Date(v_date_str);
 }
 return Math.ceil(date.getDate() / 7);
}

// 주간베스트 주차
for(let i = 0; i< 5; i++){
		
		weekBtn[i].textContent = `${month}월 ${getWeekNo(makeDate(num))}주차`;
		startDates[i] = makeDate(num+today.getDate()-7);
		
		if(getWeekNo(makeDate(num))==1){
			month = (today.getMonth());
		}
		num+=7;
		endDates[i] = makeDate(num+today.getDate()-7);
	}
forumsLoad();
forumsByReplyLoad();
 /////////////////////////////////////////////////////////////////////

 // 주간 / 월간
dateSel[0].onclick = () => {
	dateSel[1].setAttribute("id","");
	dateSel[0].setAttribute("id","active");
	selection = 1;
	startDate = todayDate;
	endDate = makeDate(7);	
	for(let i = 0; i< 5; i++){
		
		weekBtn[i].textContent = `${month}월 ${getWeekNo(makeDate(num))}주차`;
		startDates[i] = makeDate(num+today.getDate()-7);
		
		if(getWeekNo(makeDate(num))==1){
			month = (today.getMonth());
		}
		num+=7;
		endDates[i] = makeDate(num+today.getDate()-7);
	}
	forumsLoad();
	forumsByReplyLoad();
	
}

dateSel[1].onclick = () => {
	dateSel[0].setAttribute("id","");
	dateSel[1].setAttribute("id","active");
	selection = 2;
	year = today.getFullYear();
	month = (today.getMonth()+1);
	endDate = year+"-"+month+"-"+"01";
	startDate =  year+"-"+month+"-"+lastDay[month-1];
	
	for(let i = 0; i< 5; i++){
		endDate = year+"-"+month+"-"+"01";
		startDate =  year+"-"+month+"-"+lastDay[month-1];
		weekBtn[i].textContent = `${year}년 ${month}월`;
		month -= 1;
		if(month == 0){
			year-=1;
			month = 12;
		}
		
		endDates[i] = endDate;
		startDates[i] = startDate;
		
	}
	endDate = endDates[0];
	startDate =  startDates[0];
	forumsLoad();
	forumsByReplyLoad();
}



 // 주간 데이터
for(let i = 0; i < weekBtn.length; i++){
	weekBtn[i].onclick = () => {
		startDate = startDates[i];
		endDate = endDates[i];
		for(let j = 0; j < weekBtn.length; j++){
			weekBtn[j].setAttribute("id","");
		}		
		weekBtn[i].setAttribute("id","weeklist_on");
		forumsLoad();
		forumsByReplyLoad();
	}
	
}







///////////////////////////////////////////////////////////////////////////////

function forumsLoad() {
	$.ajax({
		type: "get",
		url: `/best_forums/list?startDate=${startDate}&endDate=${endDate}`,
		dataType: "text",
		success: function (data) {
			forumsItem = ``;
			let forumsListObj = JSON.parse(data);
			forumsItem += getForums(forumsListObj.forumsList);
			bestTop5.innerHTML = forumsItem;
		},
		error: function () {
			alert('비동기 처리 오류');
		}
	})
}

function getForums(forumsList) {
	let forumsHtml = ``;
	let count = 1;
	for (let pet of forumsList) {
		forumsHtml += `
				 	 		<tr>
                                <td class="td1">${count}</td>
                                <td class="td2">${pet.topic}</td>
                                <td class="td3"><span class="good">${pet.good_count}</span> / <span class="bad">${pet.bad_count}</span></td>
                                <td class="td4">${pet.create_date}</td>
                            </tr>
		`;
		count++;
	}
	return forumsHtml;
}
/////////////////////////////////////////////////////

function forumsByReplyLoad() {
	$.ajax({
		type: "get",
		url: `/best_forums/reply?startDate=${startDate}&endDate=${endDate}`,
		dataType: "text",
		success: function (data) {
			forumsItem = ``;
			let forumsListObj = JSON.parse(data);
			forumsItem += getForumsByReply(forumsListObj.forumsList);
			replyTop5.innerHTML = forumsItem;
		},
		error: function () {
			alert('비동기 처리 오류');
		}
	})
}

function getForumsByReply(forumsList) {
	let forumsReplyHtml = ``;
	let countR = 1;
	for (let petR of forumsList) {
		forumsReplyHtml += `
				 	 		<tr>
                                <td class="td1">${countR}</td>
                                <td class="td2">${petR.topic}</td>
                                <td class="td3"><span class="comment_count">${petR.reply_count}</span></td>
                                <td class="td4">${petR.create_date}</td>
                            </tr>
		`;
		countR++;
	}
	return forumsReplyHtml;
}
