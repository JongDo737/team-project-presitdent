/**
 * 국민청원 메인칸
 */
const top5Petitioinlist = document.querySelector('.top5_board_list');
const kategorieBtn = document.querySelectorAll('.kategorie_select');
const Tbtn = document.querySelector('.Tbutton');
const kategorie = '';
let petitionItem = ``;

function petitionLoad(kategorie) {
	$.ajax({

		type: "get",
		url: `/petitions/board?kategorie=${kategorie}`,
		dataType: "text",
		success: function(data) {
			alert('ajax 요청성공');
			alert(data);
			petitionItem = ``;
			let petitionListObj = JSON.parse(data);
			petitionItem+= getPetitions(petitionListObj.petitionsList);
			top5Petitioinlist.innerHTML = petitionItem;
			
		},
		error: function() {
			alert('비동기 처리오류');
		}
	});
}
function getPetitions(petitionList) {
	let petitionHtml = ``;
	for(let pet of petitionList){
		petitionHtml += `
			<li>
	            <div class="top5_list_wrap">
	                <div class="top5_list_category">
	                    ${pet.kategorie}
	                </div>
	                <div class="top5_list_subject">
	                    <a href="#"> ${pet.content} </a>
	                </div>
	                <div class="top5_list_date">${pet.end_date}</div>
	                <div class="top5_list_agree">${pet.agree_count}</div>
	            </div>
	        </li>
		
		`;
		
	}
	return petitionHtml;

}