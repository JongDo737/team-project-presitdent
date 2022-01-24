
const searchString = document.querySelector('.petition_search');
const searchBtn = document.querySelector('.petition_search_bar_button');
var search = searchString.value;
let petitionItem = ``;
searchBtn.onclick = () =>{
	alert(search);
	$.ajax({
		type: "get",
		url: `/petitions/step1/search?searchString=${search}`,
		dataType: "text",
		success: function(data) {
			
		},
		error: function() {
			alert('비동기 처리오류');
		}
	});
}
