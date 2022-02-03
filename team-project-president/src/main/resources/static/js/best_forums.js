/**
 * 
 */

const bestTop5 = document.querySelector(".best_top5_list");
const replyTop5 = document.querySelector(".reply_top5_list");
const weekBtn = document.querySelectorAll(".week_btn");

 let forumsItem = ``;

 var selection = 1;
 
 var number = 1;
 


var today = new Date();
var year = today.getFullYear();
var month = (today.getMonth()+1);
var day = ('0' + today.getDate()).slice(-2);
var todayDate = year + '-' + month + '-' + day;
var num = 0;
var startDates = [];
var endDates = [];

for(let i = 0; i< 5; i++){
	weekBtn[i].textContent = `${month}월 ${getWeekNo(makeDate(num))}주차`;
	startDates[i] = makeDate(num+today.getDate()-7);
	if(getWeekNo(makeDate(num))==1){
		month = (today.getMonth());
	}
	num+=7;
	endDates[i] = makeDate(num+today.getDate()-7);
	
	
}
var startDate = startDates[0];
var endDate = endDates[0];
function newFunction() {
    5;
}

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


forumsLoad();
forumsByReplyLoad();

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
	 var count = 1;
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
	var countR = 1;
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
