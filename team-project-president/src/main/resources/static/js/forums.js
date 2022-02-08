/**
 * 
 */
 
const forumsList = document.querySelector('.forum_lists_all');
const pageTag = document.querySelectorAll(".pageBtn");
const agree = document.querySelectorAll(".forums_list_img_agree");
const against = document.querySelectorAll(".forums_list_img_aginst");
const agreeCount = document.querySelectorAll(".forums_list_img_num_argee");
const againstCount = document.querySelectorAll(".forums_list_img_num_aginst");
const barValue = document.querySelector(".bar_navigation");


page = 1;

 let forumsItem = ``;
forumsLoad();





for(let i = 0; i < pageTag.length; i++){
	pageTag[i].onclick = () => {
		
		for(let j = 0; j < pageTag.length; j++){
			pageTag[j].setAttribute("id","");
			
		}
		pageTag[i].setAttribute("id","now-paging");
		page = pageTag[i].textContent;
		forumsLoad(page);
		
	}
}

function forumsLoad() {
	$.ajax({
		type: "get",
		url: `/forums/list?page=${page}`,
		dataType: "text",
		success: function (data) {
			forumsItem = ``;
			let forumsListObj = JSON.parse(data);
			forumsItem += getForums(forumsListObj.forumsList);
			forumsList.innerHTML = forumsItem;
		},
		error: function () {
			alert('비동기 처리 오류');
		}
	})
}

function getForums(forumsList) {
	let forumsHtml = ``;
	for (let pet of forumsList) {
		forumsHtml += `
				 	
                          <li class="forums_list">
                            <div class="forums_list_img_box">
                                <div class="forums_list_img_wrap">
                                    <div class="forums_list_img_agree">
                                        <p class="forums_list_img_title_argee">추천</p>
                                        <img src="/image/forums/agree.png" alt="">
    
                                    </div>
                                    <div class="forums_list_img_aginst">
                                        <p class="forums_list_img_title_aginst">비추천</p>
                                        <img src="/image/forums/against.png" alt="">
                                        
                                    </div>
                                </div>
                               
                                <div class="count_bar">
                                    <p class="forums_list_img_num_argee">${pet.good_count}</p>
                                    <progress class="bar_navigation" value="${pet.good_count + 1}" max="${pet.good_count + pet.bad_count + 2}"></progress>
                                    <p class="forums_list_img_num_aginst">${pet.bad_count}</p>
                                </div>
                                
                            </div>
                            <div class="forums_list_textbox">
                                <h1 class="forums_list_text_title"> 
                                	<a class="forums_text_a" href="forums/${pet.forums_id}">
                                		${pet.topic}
                                	</a>
                                </h1>
                                <span> ${pet.provider}-***</span>
                                <p class="forums_list_text_">
                                	<a class="forums_text_a" id="forums_text_detail" href="forums/${pet.forums_id}">
                                    	${pet.content}
                                    </a>
                                </p>
                                <p class="forums_list_text_bottom">
                                    0건
                                </p>
                            </div>
                        </li>
		`;
	}
	return forumsHtml;
}
