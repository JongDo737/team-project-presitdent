/**
 * 국민청원 메인칸
 */
 
 const kategoryBtn = document.querySelectorAll('.kategory_select');
 const kategory = '';
 const Tbtn = document.querySelector('.Tbutton');
 


 /*for(let i =0; i<kategoryBtn.length;i++){
	if(kategoryBtn[i].onclick()){
		alert('클릭');
		kategory = kategoryBtn[i].textContent;
		alert('kategory : '+kategory);
	}
}*/

 
 function petitionLoad(kategory){
	alert(kategory);
	$.ajax({
		type:"get",
		url:`/petition?kategory=${kategory}`
		
		
	});	
}