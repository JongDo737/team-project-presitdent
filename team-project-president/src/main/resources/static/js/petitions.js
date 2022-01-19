/**
 * 국민청원 메인칸
 */
 
 const kategorieBtn = document.querySelectorAll('.kategorie_select');
 const kategorie = '';
 const Tbtn = document.querySelector('.Tbutton');
 
 
 function petitionLoad(kategorie){
	alert(kategorie);
	$.ajax({
		type:"get",
		url:`/petition?kategorie=${kategorie}`,
		dateType: "text",
		success: function(data){
			
		},
		error: function(){
			alert('비동기 처리오류');
		}
	});	
}
function getPetitions(petitionList){
	let petitionHtml = ``;
	
}