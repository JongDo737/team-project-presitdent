/**
 * 
 */
 
const replyListView = document.querySelector('.reply_list_view');


const forumsId = document.querySelector('.forums_id');
// 동의 내용 페이지
const replyViewBtn = document.querySelector('.getlist');

const forumsAgreeBtn = document.querySelector('.handUp');
const forumsAgainstBtn = document.querySelector('.handDown');
page = 1;

var choose = 0;


for(let i = 0; i < 10; i++){
	replyViewBtn.onclick = () => {
		page++;
		replyLoad(page);
	}
}
replyLoad(page);

forumsAgreeBtn.onclick = () => {
	
	choose=1;
	forumsChoose();
}
forumsAgainstBtn.onclick = () => {
	choose=2;
	forumsChoose();
}


function replyLoad(pag){
	$.ajax({
		type: "get",
		url: `/forums/reply?forums_id=${forumsId.value}&page=${page}`,
		dataType: "text",
		success: function(data) {
			replyForumsItem = ``;
			let replyForumsListObj = JSON.parse(data);
			replyForumsItem+= getReplyForums(replyForumsListObj.replyList);
			replyListView.innerHTML = replyForumsItem;
			const replyReplyWriteBtn = document.querySelectorAll('.btn');
			const replyReplyWrite = document.querySelectorAll('.co_reply');
			for(let i = 0; i < replyReplyWriteBtn.length; i++){
				replyReplyWriteBtn[i].onclick = () => {
					replyReplyWrite[i].style.display = 'block';
				}
			}
		},
		error: function() {
			alert('비동기 처리오류');
		}
	});
	
	
	
	
}


function getReplyForums(replyList) {
	let replyHtml = ``;
	for(let pet of replyList){
		replyHtml += `
                        <li>
                                <div class="co_view">
                                    <span>${pet.create_date}</span>
                                    <div class="co_text">${pet.reply}</div>
                                    <ul class="co_number">
                                        <li class="co_n_co">
                                            <button class="re_re">
                                                답글 : <span>${pet.reply_reply_count}</span>개
                                            </button>
                                        </li>
                                        <li class="vote">
                                            <button class="re_gb">
                                                추천 : <span>${pet.agree_count}</span>
                                            </button>
                                        </li>
                                        <li class="vote">
                                            <button class="re_gb">
                                                반대 : <span>${pet.against_count}</span>
                                            </button>
                                        </li>
                                    </ul>
                                    <button type= "button" class="btn">답글등록</button>
                                </div>
                                <div class="co_reply">
                                    <div class="cs_comment">
                                        <form class="co_write">
                                            <div class="cw_wrap">
                                                <textarea name="commentbody" id=""
                                                    placeholder="댓글을 입력해주세요"></textarea>
                                            </div>
                                            <button type="button" class="comment_add">등록</button>
                                        </form>
                                    </div>
                                </div>
                            </li>
		`;
		
	}
	return replyHtml;

}

function forumsChoose(){
	$.ajax({
		type: 'get',
		url: `/forums/selection/board?forums_id=${forumsId.value}&choose=${choose}`,
		dataType: 'text',
		async: false,
		success: function(data){
			selectCode(data);
		},
		error: function(){
			alert('비동기 처리 오류.');
		}
		
	});
}
// 100번 > 로그인안됌 0번> 데이터 삽입 실패> 1번성공 2번 > 중복아이디
function selectCode(checkNum) {
	if(checkNum == 5) {
		alert('로그인 후 이용하실 수 있습니다.');
		location.href = '/auth/signin';
		
	}
	else if(checkNum == 0 ){
		alert('다시 시도해 주세요.');
	}
	else if(checkNum ==1){
		// 데이터 다시 불러오기 또는 새로고침
		location.reload();
	}
	else if(checkNum == 2) {
		alert('평가는 한번만 할 수 있습니다.');
	}
}



	
 