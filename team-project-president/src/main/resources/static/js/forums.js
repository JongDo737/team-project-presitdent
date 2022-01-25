/**
 * 
 */
 
 const forumsList = document.querySelector('.forum_lists_all');
 
 let forumsItem = ``;
forumsLoad();
function forumsLoad() {
	alert('포럼');
	$.ajax({
		type: "get",
		url: `/forums/list`,
		dataType: "text",
		success: function (data) {
			forumsItem = ``;
			let forumsListObj = JSON.parse(data);
			forumsItem += getForums(forumsListObj.forumsList);
			forumslist.innerHTML = forumsItem;
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
                                <div class="forums_list_img_agree">
                                    <p class="forums_list_img_title_argee">추천</p>
                                    <img src="/image/forums/agree.png" alt="">
                                    <p class="forums_list_img_num_argee">${pet.good_count}</p>
                                </div>
                                <div class="forums_list_img_aginst">
                                    <p class="forums_list_img_title_aginst">비추천</p>
                                    <img src="/image/forums/against.png" alt="">
                                    <p class="forums_list_img_num_aginst">${pet.bad_count}</p>
                                </div>
                            </div>
                            <div class="forums_list_textbox">
                                <h1 class="forums_list_text_title">${pet.topic}</h1>
                                <span>${pet.provider}-***</span>
                                <p class="forums_list_text_">
                                    ${pet.content}
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
