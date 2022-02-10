/**
 * 국민청원 메인칸
 */
const mypageContens = document.querySelector('.mypage_contents_main_ul');
let petitionItem = ``;
petitionLoad();

function petitionLoad() {		
	$.ajax({
		type: "get",
		url: `/petitions/Mypage/List`,
		dataType: "text",
		success: function(data) {
			let petitionListObj = JSON.parse(data);
			petitionItem+= getPetitions(petitionListObj.petitionsList);
			mypageContens.innerHTML = petitionItem;
			
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
                <div class="mypage_mylist" id="mylist_status"> <span>사전동의 진행중</span></div>
                <div class="mypage_mylist" id="mylist_classification"><span>${pet.kategorie}</span></div>
                <div class="mypage_mylist" id="mylist_title">
                    <a href="/petitions/Temp/${pet.petition_id}">
                        <span>${pet.title}</span>
                    </a>
                </div>
                <div class="mypage_mylist" id="mylist_date">
                    <span>${pet.create_date} ~ ${pet.end_date}</span>

                </div>
                <div class="mypage_mylist" id="mylist_participants">
                    <span>${pet.agree_count.toLocaleString()}</span>
                </div>
                <div class="mypage_mylist" id="mylist_url">
                    <a href="/petitions/Temp/${pet.petition_id}">URL 보기</a>
                </div>
            </li>
		
		`;
		
	}
	return petitionHtml;

}