/**
 * 
 */

const bestTop5 = document.querySelector(".best_top5_list");
const replyTop5 = document.querySelector(".reply_top5_list");
const weekBtn = document.querySelectorAll(".week_btn");
const dateSel = document.querySelectorAll(".dateSelection");

 let forumsItem = ``;
 var count = 1;
 var selection = 1;
 var number = 1;
 


function getWeekNo(v_date_str) {
 var date = new Date();
 if(v_date_str){
  date = new Date(v_date_str);
 }
 return Math.ceil(date.getDate() / 7);
};


// 주간 / 월간 
 for(let i = 0; i < dateSel.length; i++){
	dateSel[i].onclick = () => {
		for(let j = 0; j < dateSel.length; j++){
			dateSel[j].setAttribute("id","");
		}		
		dateSel[i].setAttribute("id","active");	
	}
}

let today = new Date();
// 몇 주차 / 몇 개월차 
 for(let i = 0; i < weekBtn.length; i++){
	weekBtn[i].onclick = () => {
		for(let j = 0; j < weekBtn.length; j++){
			weekBtn[j].setAttribute("id","");
		}		
		weekBtn[i].setAttribute("id","weeklist_on");
		alert(getWeekNo(today));
	}
}



forumsLoad();
forumsByReplyLoad();

///////////////////////////////////////////////////////////////////////////////

function forumsLoad() {
	$.ajax({
		type: "get",
		url: `/best_forums/list`,
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
		url: `/best_forums/reply`,
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
var countR = 1;
function getForumsByReply(forumsList) {
	let forumsReplyHtml = ``;
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
