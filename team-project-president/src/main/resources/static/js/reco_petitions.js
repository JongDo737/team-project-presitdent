/**
 * 국민청원 메인칸
 */
const recoPetitioinlist = document.querySelector('.reco_full_board_list');
const waitPetitionlist = document.querySelector('.board_list');
const pageTag = document.querySelectorAll(".pageBtn");
page = 1;

let petitionItem = ``;


for(let i = 0; i < pageTag.length; i++){
	pageTag[i].onclick = () => {
		
		for(let j = 0; j < pageTag.length; j++){
			pageTag[j].setAttribute("id","");
			
		}
		pageTag[i].setAttribute("id","now-paging");
		page = pageTag[i].textContent;
		petitionLoad(page);
	}
}

function petitionLoad() {
	$.ajax({
		type: "get",
		url: `/petitions/list?page=${page}`,
		dataType: "text",
		success: function(data) {
			petitionItem = ``;
			let petitionListObj = JSON.parse(data);
			petitionItem+= getPetitions(petitionListObj.petitionsList);
			recoPetitioinlist.innerHTML = petitionItem;
			
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
                            <div class="reco_full_list_wrap">
                                <div class="reco_full_list_category">
                                    ${pet.kategorie}
                                </div>
                                <div class="reco_full_list_subject">
                                    <a href="${pet.petition_id}"> ${pet.title} </a>
                                </div>
                                <div class="reco_full_list_date">${pet.end_date}</div>
                                <div class="reco_full_list_agree">${pet.agree_count}명</div>
                            </div>
                        </li>
		
		`;
		
	}
	return petitionHtml;
}

/////////////////////////////////////////////////////////////////////////////////////

let waitPetitionItem=``;
watiPetitionLoad();
function watiPetitionLoad(page) {
	$.ajax({
		type:"get",
		url: `/petitions/wait`,
		dataType: "text",
		success: function(data) {
			waitPetitionItem = ``;
			let waitPetitionListObj = JSON.parse(data);
			waitPetitionItem += getWaitPetitions(waitPetitionListObj.petitionsList);
			waitPetitionlist.innerHTML = waitPetitionItem;
		},
		error : function() {
			alert('비동기 처리 오류');
		}
	})
}

function getWaitPetitions(petitionList) {
	let petitionHtml = ``;
	for(let Waitpet of petitionList){
		petitionHtml += `
				 	<li>
                        <div class="list_wrap">
                            <div class="list_category">
                                ${Waitpet.kategorie}
                            </div>
                            <div class="list_subject">
                                <a href="${Waitpet.petition_id}"> ${Waitpet.title} </a>
                            </div>
                            <div class="list_date">${Waitpet.end_date}</div>
                            <div class="list_agree">${Waitpet.agree_count}</div>
                        </div>
                    </li>
		`;
	}
	return petitionHtml;
}


////////////////////////////////////////////////////////////




petitionLoad(page);
