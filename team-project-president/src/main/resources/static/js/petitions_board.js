/**
 * 국민청원 메인칸
 */
const boardStatusTitle = document.querySelectorAll(".board_status_title");
const boardDot = document.querySelectorAll(".dot");
const boardGrapyStatus = document.querySelectorAll(".board_grapy_status");
const boardCategory = document.querySelectorAll(".board_list_info_date");
const replyBtn = document.querySelector(".reply_view_btn");
const replyList = document.querySelector(".reply_list_all");

CurrentStatus();
function CurrentStatus(){
	
			var today = new Date();
			var month = '' + (today.getMonth() + 1);
			var day = '' + (today.getDate());
			var year = today.getFullYear();
			if(month.length < 2)  month = '0' + month;
			if(day.length < 2) day = '0' + day;
			var todayParse = year + "-" + month + "-" + day;			
			console.log(todayParse);
			if(todayParse > boardCategory[0].textContent && todayParse < boardCategory[1].textContent){
				boardStatusTitle[0].id = "";
				boardStatusTitle[1].id = "board_status_sel";
				boardDot[0].id = "";
				boardDot[1].id = "point_box";
				boardGrapyStatus[0].id = "";
				boardGrapyStatus[1].id = "current_status";
			} else if(todayParse > boardCategory[1].textContent) {
				boardStatusTitle[0].id = "";
				boardStatusTitle[2].id = "board_status_sel";
				boardDot[0].id = "";
				boardDot[2].id = "point_box";
				boardGrapyStatus[0].id = "";
				boardGrapyStatus[2].id = "current_status";
			}
		
}

replyBtn.onclick = () => {
	replyBtn.style.display = "none";
	replyList.style.display = "flex";
}







	
 