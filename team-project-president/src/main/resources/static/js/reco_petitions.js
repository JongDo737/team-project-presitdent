/**
 * 국민청원 메인칸
 */
const recoPetitioinlist = document.querySelector('.reco_full_board_list');
const waitPetitionlist = document.querySelector('.board_list');

let petitionItem = ``;

petitionLoad();

function petitionLoad() {
	$.ajax({
		type: "get",
		url: `/petitions/list`,
		dataType: "text",
		success: function (data) {
			petitionItem = ``;
			let petitionListObj = JSON.parse(data);
			petitionItem += getPetitions(petitionListObj.petitionsList);
			recoPetitioinlist.innerHTML = petitionItem;

		},
		error: function () {
			alert('비동기 처리오류');
		}
	});
}

function getPetitions(petitionList) {
	let petitionHtml = ``;
	for (let pet of petitionList) {
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
waitPetitionlist = ``;
watiPetitionLoad();
let waitPetitionItem = ``;
function watiPetitionLoad() {
	$.ajax({
		type: "get",
		url: `/petitions/list/wait`,
		dataType: "text",
		success: function (data) {
			waitPetitionItem = ``;
			let waitPetitionListObj = JSON.parse(data);
			waitPetitionItem += getWaitPetitions(waitPetitionListObj.petitionsList);
			waitPetitionlist.innerHTML = waitPetitionItem;
		},
		error: function () {
			alert('비동기 처리 오류');
		}
	})
}

function getWaitPetitions(petitionList) {
	let petitionHtml = ``;
	for (let Waitpet of petitionList) {
		petitionHtml += `
				 	<li>
                        <div class="list_wrap">
                            <div class="list_category">
                                ${Waitpet.kategorie}
                            </div>
                            <div class="list_subject">
                                <a href="#"> ${Waitpet.title} </a>
                            </div>
                            <div class="list_date">${Waitpet.end_date}</div>
                            <div class="list_agree">${Waitpet.agree_count}</div>
                        </div>
                    </li>
		`;
	}
	return petitionHtml;
}







