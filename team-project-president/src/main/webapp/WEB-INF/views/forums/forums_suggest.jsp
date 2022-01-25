<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>suggest</title>
    <link rel="stylesheet" href="/css/forums_suggest.css">
    <link rel="stylesheet" href="/css/style.css">
    <script src="https://kit.fontawesome.com/fab8e6b94b.js"></script>
    
</head>
<body>
        <nav>
            <jsp:include page="../include/nav.jsp"></jsp:include>
        </nav>
    <div class="sgt_wrap">
        <div class="top_img">
            <h2>토론방</h2>
        </div>
        <div class="sgt_fc">
            <h2 class="sgt_txt">제<span class="bar1">안하</span>기</h2>
        </div>
        <div class="box_wrap">
            <div class="txt_box">
                <strong>청와대 홈페이지 운영 원칙</strong>
                <br><br>
                <p>
                    청와대는 사상과 표현의 다양성을 존중합니다. 
                    동시에 타인의 권리를 침해하거나 명예를 훼손하는 내용은 제한합니다. 
                    방송통신심의위원회의 '정보통신에 관한 심의 규정', 한국인터넷자율정책기구의 
                    '정책규정' 등을 기반으로 문제 게시물은 삭제될 수 있습니다. 
                    자극적이고 혐오스러운 내용, 비속어, 폭력적 내용, 특정 대상을 비하하거나 차별을 조장하는 내용, 
                    개인정보 유출을 비롯해 타인의 권리를 침해하는 내용, 반복되는 내용 등은 제재될 수 있습니다.
                </p>
            </div>
            <span class="bar2"></span>
        	<form action="/forums/suggest/write" method="post">
	        	<div class="sgt_subject">
	                <p>토론주제</p>
	                <input type="text" name="topic" class="input" placeholder="토론주제를 입력해주세요." >
	                <p>내용</p>
	            </div>
	            <div class="sgt_content">
	                <textarea name="content" rows="10" cols="80" class="textarea text" 
	                 required="" style="width: 742px; height: 297px;"></textarea>
	                 <span class="bar3"></span>
	            </div>
	            <div class="btn-wrap">
	               <a href="#"><button type="submit" class="btn" >작성</button></a>
	            </div>
        	</form>
            
        </div>
    </div>

    <nav>
    	<jsp:include page="../include/footer.jsp"></jsp:include>
    </nav>
</body>
</html>