<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/signin.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/footer.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://kit.fontawesome.com/fab8e6b94b.js" crossorigin="anonymous"></script>
    
</head>

<body>
    <div class="container">
        <nav>
            <jsp:include page="../include/nav.jsp"></jsp:include>
        </nav>
        <section class="area">
            <div class="head">
                <h3 class="login_text">로그인</h3>
            </div>
            <div class="body">
                <div class="wrap">
                    <div class="login">
                        <div class="login_box">
                            <h4>SNS 간편로그인</h4>
                            <ul class="text_box">
                                <li><span class="list_style">·</span> 청와대에서는 SNS로 로그인하여 간편하게 서비스를 이용하실 수 있습니다.</li>
                                <li><span class="list_style">·</span> 원하시는 SNS를 선택하시고 로그인해주세요.</li>
                                <li><span class="list_style">·</span> 학교·사무실·도서관 등에서 다중이용 PC로 소셜로그인을 하신 경우 청원 작성 및 동의 완료
                                    후 반드시 <span class="logout_text">로그아웃</span> 해주시기
                                    바랍니다.</li>
                            </ul>
                        </div>
                        <div class="sns_login_wrap">
                            <ul class="sns_login">
                                <li>
                                    <a href="/oauth2/authorization/naver" class="naver" alt="네이버 로그인 페이지 바로가기">
                                        <div class="login_link">
                                            <i class="fab fa-google"></i><span class="bar">|</span><mark>네이버</mark>
                                            계정으로 로그인
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="/oauth2/authorization/google" class="twitter" alt="구글 로그인 페이지 바로가기">
                                        <div class="login_link">
                                            <i class="fab fa-twitter"></i><span class="bar">|</span><mark>구글</mark>
                                            계정으로 로그인
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="/oauth2/authorization/kakao" class="kakao" alt="카카오 로그인 페이지 바로가기">
                                        <div class="login_link">
                                            <i class="fas fa-comment"></i><span class="bar">|</span><mark>카카오</mark>
                                            계정으로 로그인
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="/oauth2/authorization/facebook" class="facebook" alt="페이스북 로그인 페이지 바로가기">
                                        <div class="login_link">
                                            <i class="fab fa-facebook-square"></i><span
                                                class="bar">|</span><mark>페이스북</mark> 계정으로 로그인
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <jsp:include page="../include/footer.jsp"></jsp:include>
</body>

</html>