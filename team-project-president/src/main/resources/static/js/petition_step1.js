/**
 * 국민청원 메인칸
 */
const Petitioinlist = document.querySelector('.searchlist');
const kategorieBtn = document.querySelectorAll('.kategorie_select');
const Tbtn = document.querySelector('.Tbutton');
const kategorie = '전체';
let petitionItem = ``;
petitionLoad(kategorie);
function petitionLoad(kategorie) {
	$.ajax({

		type: "get",
		url: `/petitions/board?kategorie=${kategorie}`,
		dataType: "text",
		success: function(data) {
			petitionItem = ``;
			let petitionListObj = JSON.parse(data);
			petitionItem += getPetitions(petitionListObj.petitionsList);
			Petitioinlist.innerHTML = petitionItem;
			
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
                <div class="b1_wrap">
                    <div class="b1_category cs">
                        ${pet.kategorie}
                    </div>
                    <div class="b1_subject ca">
                        <a href="#">
                            ${pet.title}
                        </a>
                    </div>
                    <div class="b1_date cd">
                        ${pet.end_date}
                    </div>
                    <div class="b1_agree">
                        ${pet.agree_count}
                    </div>
                </div>
            </li>
		
		`;
		
	}
	return petitionHtml;

}