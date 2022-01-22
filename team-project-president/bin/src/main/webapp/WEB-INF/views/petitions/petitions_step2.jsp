<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/petitions_step2.css">
</head>
<body>
    <section class="petitions_head">
        <div class="petitions_head_txt">
            <h2 class="head_text_title">
                국민청원
            </h2>
        </div>
    </section>
    <div class="cs_area">
        <div class="cs_head">
            <h3 class="cs_head_title">
                지금<span> 청원</span>하기
            </h3>
        </div>
        <div class="cs_body">
            <div class="cs_text_rule">
                <strong>청와대 국민청원 게시판 운영 원칙</strong>
                
                <ul>
                    <li>청와대는 사상과 표현의 다양성을 존중합니다. 동시에 타인의 권리를 침해하거나 명예를 훼손하는 내용은 제한합니다. 
                        방송통신심의위원회의 '정보통신에 관한 심의 규정', 한국인터넷자율정책기구의 '정책규정' 등을 기반으로 문제 게시물은 삭제될 수 있습니다. 
                        자극적이고 혐오스러운 내용, 비속어, 폭력적 내용, 특정 대상을 비하하거나 차별을 조장하는 내용, 개인정보 유출을 비롯해 타인의 권리를 침해하는 내용, 
                        반복되는 내용, 허위사실 등은 <strong>삭제</strong>나 <strong>숨김</strong>처리될 수 있습니다.</li>
                    <li>청원글 게시 후 30일 동안 100명의 사전동의를 받은 청원에 한해 국민청원 게시판에 공개됩니
                        청원이 공개된 날로부터 30일 동안 20만 명 이상의 동의를 받은 청원에 대해 답변합니다.</li>
                    <li>한 번 작성된 청원은 <strong>수정</strong> 및 <strong>삭제</strong>가 <strong>불가능</strong>합니다. 
                        최초 청원 취지와 다른 내용으로 변경되는 것을 방지하여 청원 참여자의 의견을 보호하기 위한 조치이니 신중하게 작성하여 주시기 바랍니다.</li>
                </ul>
            </div>
            <div class="cs_text_info">
                <strong>청원 작성 요령 안내</strong>
                <ul>
                    <li>새 청원글 작성 시, 내용을 대표하는 제목 및 관련 분야를 선택하신 후 내용을 입력해주시면 됩니다.</li>
                    <li>청원 내용과 관련 있는 웹사이트 또는 영상 URL이 있다면 첨부해주시기 바랍니다.</li>
                    <li>청원 내용의 주요 키워드를 태그란에 입력해주시면 다른 참여자들이 여러분들의 청원을 쉽게 찾는 데 도움이 됩니다.</li>
                </ul>
            </div>
            <form action="/petitions/Step2/write" method="post" id="cs_form">
                <div class="cs_form_area">
                    <!-- 청원제목 -->
                    <div class="cs_form_title">
                        청원제목
                        <input type="text" class="cs_title_ip" name="title" placeholder="청원제목을 입력해주세요.">
                    </div>
                    <!-- 카테고리 -->
                    <div class="cs_form_category">
                        카테고리
                        <select name="kategorie" id="cs_sel_category" >
                            <option value selected disabled>카테고리를 선택해주세요.</option>
                            <option value="정치개혁" >정치개혁</option>
                            <option value="외교/통일/국방" >외교/통일/국방</option>
                            <option value="일자리" >일자리</option>
                            <option value="미래" >미래</option>
                            <option value="성장동력" >성장동력</option>
                            <option value="농산어촌" >농산어촌</option>
                            <option value="보건복지" >보건복지</option>
                            <option value="육아/교육" >육아/교육</option>
                            <option value="안전/환경" >안전/환경</option>
                            <option value="저출산/고령화대책" >저출산/고령화대책</option>
                            <option value="행정" >행정</option>
                            <option value="반려동물" >반려동물</option>
                            <option value="교통/건축/국토" >교통/건축/국토</option>
                            <option value="경제민주화" >경제민주화</option>
                            <option value="인권/성평등">인권/성평등</option>
                            <option value="문화/예술/체육/언론">문화/예술/체육/언론</option>
                            <option value="기타" >기타</option>
                        </select>
                    </div>
                    <!-- 청원내용 -->
                    <div class="cs_form_text">
                        청원내용
                        <div class="cs_form_main">
                            <textarea class="cs_textarea" name="content" cols="80" rows="10" minlength="1"></textarea>
                        </div>
                    </div>
                    <!-- 관련링크 -->
                    <div class="cs_form_link">
                        관련링크
                        <div class="cs_link_wrap">
                            <input type="text" class="cs_link_ip" name="link" placeholder="http://example.com">
                            <button type="button" id="cs_link_btn">링크추가</button>
                        </div>
                        
                    </div>
                    <!-- 검색태그 -->
                    <div class="cs_form_tag">
                        검색태그
                        <div class="cs_tag_container">
                            <input type="text" class="cs_tag_ip" name="tag1" placeholder="태그1">
                            <input type="text" class="cs_tag_ip" name="tag2" placeholder="태그2">
                            <input type="text" class="cs_tag_ip" name="tag3" placeholder="태그3">
                        </div>
                        
                    </div>
                </div>
                <div class="cs_form_btn">
                    <div class="cs_btn_wrap">
                        <button type="submit" class="cs_submit_btn">작성 완료</button>
                        <a href="#" class="cs_redirect_btn">
                           <p> 작성 취소</p>
                        </a>
                    </div>
                    
                </div>
            </form>
            
        </div>
    </div>
</body>
</html>