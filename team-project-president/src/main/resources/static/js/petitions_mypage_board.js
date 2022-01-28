/**
 * 내 청원 개별 페이지
 */

const replyList = document.querySelector(".reply_list_all");

// 청원 동의하기 댓글 
const logoutReplyBtn = document.querySelector('.logout_reply_submit_btn');
const principalDetail = document.querySelector('.principalDetail');

// 동의 내용보기
const replyViewBtn = document.querySelector('.reply_view_btn');
const replyListSep = document.querySelector('.reply_list_sep');
const petitionId = document.querySelector('.petition_id');
// 동의 내용 페이지
const pageTag = document.querySelectorAll(".pageBtn");
page = 1;



if(typeof(logoutReplyBtn) != undefined && logoutReplyBtn != null){
	logoutReplyBtn.onclick = () => {
		location.href = '/auth/signin';
	}
}

for(let i = 0; i < pageTag.length; i++){
	pageTag[i].onclick = () => {
		for(let j = 0; j < pageTag.length; j++){
			pageTag[j].setAttribute("id","");
			
		}
		pageTag[i].setAttribute("id","now-paging");
		page = pageTag[i].textContent;
		replyLoad(page);
	}
}


//동의 청원 보기버튼 누르면
replyViewBtn.onclick = () => {
	replyViewBtn.style.display = "none";
	replyList.style.display = "flex";
	replyLoad(page);
	
}
function replyLoad(page){
	$.ajax({
		type: "get",
		url: `/petitions/reply?petition_id=${petitionId.value}&page=${page}`,
		dataType: "text",
		success: function(data) {
			replyPetitionItem = ``;
			let replyPetitionListObj = JSON.parse(data);
			replyPetitionItem+= getReplyPetitions(replyPetitionListObj.replyList);
			replyListSep.innerHTML = replyPetitionItem;
			
		},
		error: function() {
			alert('비동기 처리오류');
		}
	});
	
}
	
	
	

function getReplyPetitions(replyList) {
	let replyHtml = ``;
	for(let rpet of replyList){
		replyHtml += `
			<li class="reply_list_reply">
                <div class="reply_list_contents">
                    <div class="reply_list_contents_head">
                        <h4>${rpet.provider} - ***</h4>
                    </div>
                    <div class="reply_list_text">
                        ${rpet.reply}
                    </div>
                </div>
            </li>
		`;
		
	}
	return replyHtml;

}







	
 