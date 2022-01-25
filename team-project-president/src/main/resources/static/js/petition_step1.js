const searchString = document.querySelector('.petition_search');
const searchBtn = document.querySelector('.petition_search_bar_button');
const searchList = document.querySelector('.searchlist');
searchPetitionItem = ``;

let petitionItem = ``;
searchBtn.onclick = () =>{
	$.ajax({
		type: "get",
		url: `/petitions/step1/search?searchString=${searchString.value}`,
		dataType: "text",
		success: function(data) {
			searchPetitionItem = ``;
			let searchPetitionListObj = JSON.parse(data);
			searchPetitionItem+= getSearchPetitions(searchPetitionListObj.petitionsList);
			searchList.innerHTML = searchPetitionItem;
		},
		error: function() {
			alert('비동기 처리오류');
		}
	});
}
function getSearchPetitions(petitionList) {
	let petitionHtml = ``;
	for(let sPet of petitionList){
		petitionHtml += `
			<li>
                <div class="b1_wrap">
                    <div class="b1_category cs">
                        ${sPet.kategorie}
                    </div>
                    <div class="b1_subject ca">
                        <a href="/petitions/${sPet.petition_id}">
                            ${sPet.title}
                        </a>
                    </div>
                    <div class="b1_date cd">
                        ${sPet.end_date}
                    </div>
                    <div class="b1_agree">
                        ${sPet.agree_count.toLocaleString()}명
                    </div>
                </div>
            </li>
		
		`;
		
	}
	return petitionHtml;

}
