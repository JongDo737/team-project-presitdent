
// 답변 대기중인 청원
const waitPetitionList = document.querySelector('.board_list');
waitpPetitionItem = ``;
const top5Petitioinlist = document.querySelector('.top5_board_list');
const kategorieBtn = document.querySelectorAll('.kategorieBtn');


// 분류별 청원 top 5부분 + 목록
kategorie = '전체';
petitionItem = ``;


// 전체 목록 불러오기
const totalPetitioinlist = document.querySelector(".full_board_list");
const pageTag = document.querySelectorAll(".pageBtn");
const orderSel = document.querySelector('.orderSelect');

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
		alert('kategorie : '+kategorie+'\n'+"page : "+page+'\n'+'order : '+order);
		petitionLoad(kategorie);
		totalPetitionLoad(kategorie,page,order);
	}
}


for(let i = 0; i < pageTag.length; i++){
	pageTag[i].onclick = () => {
		
		for(let j = 0; j < pageTag.length; j++){
			pageTag[j].setAttribute("id","");
			
		}
		pageTag[i].setAttribute("id","now-paging");
		page = pageTag[i].textContent;
		alert('kategorie : '+kategorie+'\n'+"page : "+page+'\n'+'order : '+order);
		totalPetitionLoad(kategorie,page,order);
	}
}
orderSel.onchange = () => {
	order = orderSel.value;
	alert('kategorie : '+kategorie+'\n'+"page : "+page+'\n'+'order : '+order);
	totalPetitionLoad(kategorie,page,order);
}



waitPetitionLoad();
petitionLoad(kategorie);
totalPetitionLoad(kategorie,page,order);



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
	                    <a href="#"> ${petW.title} </a>
	                </div>
	                <div class="list_date">${petW.end_date}</div>
	                <div class="list_agree">${petW.agree_count}명</div>
	            </div>
	        </li>
		
		`;
		
	}
	return petitionHtml;

}






function petitionLoad(kategorie) {
	$.ajax({

		type: "get",
		url: `/petitions/board?kategorie=${kategorie}`,
		dataType: "text",
		success: function(data) {
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
	                    <a href="#"> ${pet.title} </a>
	                </div>
	                <div class="top5_list_date">${pet.end_date}</div>
	                <div class="top5_list_agree">${pet.agree_count}</div>
	            </div>
	        </li>
		
		`;
		
	}
	return petitionHtml;

}




function totalPetitionLoad(kategorie,page,order) {
	$.ajax({

		type: "get",
		url: `/petitions/total?kategorie=${kategorie}&page=${page}&order=${order}`,
		dataType: "text",
		success: function(data) {
			petitionTotalItem = ``;
			let totalPetitionListObj = JSON.parse(data);
			petitionTotalItem+= getTotalPetitions(totalPetitionListObj.petitionsList);
			totalPetitioinlist.innerHTML = petitionTotalItem;
			
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
                    <a href="#"> ${totalPet.title} </a>
                </div>
                <div class="full_list_date">${totalPet.create_date}</div>
                <div class="full_list_agree">${totalPet.agree_count}명</div>
            </div>
        </li>
			
		
		`;
		
	}
	return totalPetitionHtml;

}
