
// 답변 대기중인 청원
const waitPetitionList = document.querySelector('.board_list');
waitpPetitionItem = ``;


// 분류별 청원 top 5부분 + 목록
const top5Petitioinlist = document.querySelector('.top5_board_list');
const kategorieBtn = document.querySelectorAll('.kategorieBtn');
const choochenList = document.querySelector('.choochen');
const chenchaeList = document.querySelector('.chenchaeList');
kategorie = '전체';
petitionItem = ``;


// 전체 목록 불러오기
const totalPetitioinlist = document.querySelector(".full_board_list");
const pageTag = document.querySelectorAll(".pageBtn");
const orderSel = document.querySelector('.orderSelect');
const kategorieTab = document.querySelectorAll('.kategorie_tab_select');

only=1;
page = 1;
order = 1;

petitionTotalItem = ``;

for(let i = 0; i < kategorieBtn.length; i++){
	kategorieBtn[i].onclick = () => {
		for(let j = 0; j < kategorieBtn.length; j++){
			kategorieBtn[j].setAttribute("id","");
		}
		kategorie = kategorieBtn[i].textContent;
		kategorieBtn[i].setAttribute("id","category_sel");
		petitionLoad(kategorie,only);
		totalPetitionLoad(kategorie,only,page,order);
	}
}


for(let i = 0; i < pageTag.length; i++){
	pageTag[i].onclick = () => {
		
		for(let j = 0; j < pageTag.length; j++){
			pageTag[j].setAttribute("id","");
			
		}
		pageTag[i].setAttribute("id","now-paging");
		page = pageTag[i].textContent;
		totalPetitionLoad(kategorie,only,page,order);
	}
}
orderSel.onchange = () => {
	order = orderSel.value;
	totalPetitionLoad(kategorie,only,page,order);
}

//진행중 청원
kategorieTab[0].onclick = () => {
	kategorieTab[1].setAttribute("id","");
		
	kategorieTab[0].setAttribute("id","category_tab_sel");
	only = 1;
	petitionLoad(kategorie,only);
	totalPetitionLoad(kategorie,only,page,order);
}

kategorieTab[1].onclick = () => {
	kategorieTab[0].setAttribute("id","");

	kategorieTab[1].setAttribute("id","category_tab_sel");
	only = 2;
	petitionLoad(kategorie,only);
	totalPetitionLoad(kategorie,only,page,order);
}



waitPetitionLoad();
petitionLoad(kategorie,only);
totalPetitionLoad(kategorie,only,page,order);

/************************************************************************************************************************ */

function waitPetitionLoad() {
	$.ajax({

		type: "get",
		url: `/petitions/wait`,
		dataType: "text",
		success: function(data) {
			waitpPetitionItem = ``;
			let waitPetitionListObj = JSON.parse(data);
			waitpPetitionItem+= getWaitPetitions(waitPetitionListObj.petitionsList);
			waitPetitionList.innerHTML = waitpPetitionItem;
			
		},
		error: function() {
			alert('비동기 처리오류');
		}
	});
}
function getWaitPetitions(petitionList) {
	let petitionHtml = ``;
	for(let petW of petitionList){
		petitionHtml += `
			<li>
	            <div class="list_wrap">
	                <div class="list_category">
	                    ${petW.kategorie}
	                </div>
	                <div class="list_subject">
	                    <a href="petitions/${petW.petition_id}"> ${petW.title} </a>
	                </div>
	                <div class="list_date">${petW.end_date}</div>
	                <div class="list_agree">${petW.agree_count}명</div>
	            </div>
	        </li>
		
		`;
		
	}
	return petitionHtml;

}


/************************************************************************************************************************ */



function petitionLoad(kategorie) {
	$.ajax({

		type: "get",
		url: `/petitions/board?kategorie=${kategorie}&only=${only}`,
		dataType: "text",
		success: function(data) {
			petitionItem = ``;
			let petitionListObj = JSON.parse(data);
			petitionItem+= getPetitions(petitionListObj.petitionsList);
			top5Petitioinlist.innerHTML = petitionItem;
			choochenList.innerText=kategorie+" 추천순 TOP5";
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
	                    <a href="petitions/${pet.petition_id}"> ${pet.title} </a>
	                </div>
	                <div class="top5_list_date">${pet.end_date}</div>
	                <div class="top5_list_agree">${pet.agree_count}</div>
	            </div>
	        </li>
		
		`;
		
	}
	return petitionHtml;

}

/************************************************************************************************************************ */


function totalPetitionLoad(kategorie,only,page,order) {
	$.ajax({

		type: "get",
		url: `/petitions/total?kategorie=${kategorie}&only=${only}&page=${page}&order=${order}`,
		dataType: "text",
		success: function(data) {
			petitionTotalItem = ``;
			let totalPetitionListObj = JSON.parse(data);
			petitionTotalItem+= getTotalPetitions(totalPetitionListObj.petitionsList);
			totalPetitioinlist.innerHTML = petitionTotalItem;
			chenchaeList.innerText=kategorie+" 목록";
		},
		error: function() {
			alert('비동기 처리오류');
		}
	});
}
function getTotalPetitions(petitionList) {
	let totalPetitionHtml = ``;
	for(let totalPet of petitionList){
		totalPetitionHtml += `
		<li>
            <div class="full_list_wrap">
                <div class="full_list_category">
                    ${totalPet.kategorie}
                </div>
                <div class="full_list_subject">
                    <a href="petitions/${totalPet.petition_id}"> ${totalPet.title} </a>
                </div>
                <div class="full_list_date">${totalPet.end_date}</div>
                <div class="full_list_agree">${totalPet.agree_count}명</div>
            </div>
        </li>
			
		
		`;
		
	}
	return totalPetitionHtml;

}

/************************************************************************************************************************ */
