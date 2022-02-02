/**
 * 
 */

const bestTop5 = document.querySelector(".best_top5_list");
const replyTop5 = document.querySelector(".reply_top5_list");
const weekBtn = document.querySelectorAll(".week_btn");

 let forumsItem = ``;
 var count = 1;
 var selection = 1;
 var number = 1;
 
let now = new Date();
let nowYear = now.getFullYear();
let nowMonth = now.getMonth() + 1;
let nowDay = now.getDate();
let today = nowYear + '-' + nowMonth + '-' + nowDay;



 
 for(let i = 0; i < weekBtn.length; i++){
	weekBtn[i].onclick = () => {
		for(let j = 0; j < weekBtn.length; j++){
			weekBtn[j].setAttribute("id","");
		}		
		weekBtn[i].setAttribute("id","weeklist_on");
		alert(nowDay);
		
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
