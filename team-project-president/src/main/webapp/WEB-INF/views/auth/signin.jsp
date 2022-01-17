<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/nav.css">
    <link rel="stylesheet" href="/css/signin.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/footer.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://kit.fontawesome.com/fab8e6b94b.js" crossorigin="anonymous"></script>
</head>

<body>
    <div class="container">
        <nav>
            <div class="head_navi">
                <div id="head">
                    <a href="#" title="메인페이지로 이동">
                        <img src="/image/logo.png">
                    </a>
                </div>
            </div>
            <div id="navigator_menu" class="nav">
                <ul class="menu">
                    <h1 class="nav_logo">
                        <img src="/image/logo.png" alt="">
                    </h1>
                    <li class="menu_list">
                        <a href="#" class="menu_list_title">
                            문재인 대통령
                        </a>
                        <ul class="menu_sub" style="display: none;">
                            <li>
                                <a href="#">
                                    공개일정
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    걸어온길
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    대통령의 말과 글
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    김정숙 여사 소식
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="menu_list">
                        <a href="#" class="menu_list_title">
                            청와대 뉴스룸
                        </a>
                        <ul class="menu_sub" style="display: none;">
                            <li>
                                <a href="#">
                                    한국판 뉴딜
                                    <span>스페셜</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    청와대가 전합니다
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    청와대 이야기
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    영상
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    카드뉴스
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    세계의 시선
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    청와대 일기
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="menu_list">
                        <a href="#" class="menu_list_title">
                            정책정보
                        </a>
                        <ul class="menu_sub" style="display: none;">
                            <li>
                                <a href="#">
                                    정책 브리핑
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    국정과제
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    정부부처 업무보고
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="menu_list">
                        <a href="#" class="menu_list_title">
                            국민소통광장
                        </a>
                        <ul class="menu_sub" style="display: none;">
                            <li>
                                <a href="#">
                                    문재인 대통령 4주년
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    국민청원
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    국민과의 대화
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    토론방
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    국민신문고
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    열린참여
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="menu_list">
                        <a href="#" class="menu_list_title">
                            청와대 알림판
                        </a>
                        <ul class="menu_sub" style="display: none;">
                            <li>
                                <a href="#">
                                    정보공개
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    일자리 상황판
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    청와대 조직도
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    세입·세출예산 운용상황
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    대통령 기록관
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    오시는길
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="menu_list">
                        <a href="#" class="menu_list_title">
                            청와대 관람 신청
                        </a>

                    </li>
                    <li class="menu_list_search">
                        <a href="" class="main_search_icon">
                            <img src="/image/nav/search_icon.png" alt="">
                        </a>
                    </li>
                </ul>

            </div>
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
    <!-- <div class="footer">
        <div class="footer-container">
            <div class="footer-top">
                <ul class="footer-top-box">
                    <h1 class="footer-top-title">문재인 대통령</h1>
                    <li class="footer-top-text">
                        <a href="#">공개일정</a>
                    </li>
                    <li class="footer-top-text">
                        <a href="#">걸어온길</a>
                    </li>
                    <li class="footer-top-text">
                        <a href="#">대통령의 말과 글</a>
                    </li>
                    <li class="footer-top-text">
                        <a href="#">김정숙 여사 소식</a>
                    </li>
                </ul>
                <ul class="footer-top-box">
                    <h1 class="footer-top-title">청와대 뉴스룸</h1>
                    <li class="footer-top-text">
                        <a href="#">한국판 뉴딜 스페셜</a>
                    </li>
                    <li class="footer-top-text">
                        <a href="#">청와대 이야기</a>
                    </li>
                    <li class="footer-top-text">
                        <a href="#">영상</a>
                    </li>
                    <li class="footer-top-text">
                        <a href="#">카드뉴스</a>
                    </li>
                    <li class="footer-top-text">
                        <a href="#">세계의 시선</a>
                    </li>
                    <li class="footer-top-text">
                        <a href="#">청와대 일기</a>
                    </li>
                </ul>
                <ul class="footer-top-box">
                    <h1 class="footer-top-title">정책정보</h1>
                    <li class="footer-top-text">
                        <a href="#">정책브리핑</a>
                    </li>
                    <li class="footer-top-text">
                        <a href="#">국정과제</a>
                    </li>
                    <li class="footer-top-text">
                        <a href="#">정부부처 업무보고</a>
                    </li>
                </ul>
                <ul class="footer-top-box">
                    <h1 class="footer-top-title">국민소통 광장</h1>
                    <li class="footer-top-text">
                        <a href="#">문재인 대통령 4주년</a>
                    </li>
                    <li class="footer-top-text">
                        <a href="#">국민청원</a>
                    </li>
                    <li class="footer-top-text">
                        <a href="#">국민과의 대화</a>
                    </li>
                    <li class="footer-top-text">
                        <a href="#">토론방</a>
                    </li>
                    <li class="footer-top-text">
                        <a href="#">국민신문고</a>
                    </li>
                    <li class="footer-top-text">
                        <a href="#">열린참여</a>
                    </li>
                </ul>
                <ul class="footer-top-box">
                    <h1 class="footer-top-title">청와대 알림판</h1>
                    <li class="footer-top-text">
                        <a href="#">정보공개</a>
                    </li>
                    <li class="footer-top-text">
                        <a href="#">일자리 상황판</a>
                    </li>
                    <li class="footer-top-text">
                        <a href="#">세입·세출예산 운용상황</a>
                    </li>
                    <li class="footer-top-text">
                        <a href="#">대통령 기록관</a>
                    </li>
                    <li class="footer-top-text">
                        <a href="#">오시는 길</a>
                    </li>
                    <h1 class="footer-top-subtitle">청와대 관람신청</h1>
                    <h1 class="footer-top-subtitle">어린이 홈페이지</h1>
                </ul>
            </div>
            <div class="footer-bottom">
                <div class="footer-contact-info">
                    <div class="footer-contact-info-1">
                        <div>
                            <img src="/image/logo.png" alt="">
                        </div>
                        <div class="footer-contact-info-1-sns">
                            <i class="fab fa-facebook-square"></i>
                            <i class="fab fa-twitter-square"></i>
                            <i class="fab fa-instagram"></i>
                            <i class="fab fa-youtube"></i>
                        </div>
                    </div>
                    <div class="footer-contact-info-2">
                        <h1>CONTACT INFO</h1>
                        <div class="footer-contact-info-2-bottom">
                            <div class="footer-contact-info-2-icons">
                                <div class="footer-contact-info-2-icons-detail">
                                    <i class="fas fa-phone-alt"></i>
                                    <span>(+82) 02-730-5800</span>

                                </div>
                                <div class="footer-contact-info-2-icons-detail">
                                    <i class="fas fa-envelope"></i>
                                    <span>담당자 메일 : 메일보내기</span><br>

                                </div>
                                <div class="footer-contact-info-2-icons-detail">
                                    <i class="fas fa-map-marker-alt"></i>
                                    <span>03048 서울특별시 종로구 청와대로 1 대통령 비서실</span>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="footer-contact-info-3">
                        <div class="footer-contact-info-3-top">
                            <a href="#">개인정보처리방침</a> |
                            <a href="#">저작권 정책</a> |
                            <a href="#">사이트맵</a> |
                            <a href="#">오시는 길</a>

                        </div>
                        <div class="footer-contact-info-3-middle">
                            해당 메일은 기능 장애 등 홈페이지 관련 문의만 접수합니다.<br>
                            청와대 및 정부에 대한 민원·제안 및 공익신고·고발 등은
                            국민신문고(www.epeople.go.kr)로 접수해주시길 부탁드립니다.
                        </div>
                        <div class="footer-contact-info-3-bottom">
                            <img src="/image/footer/footer_mark4.png" alt="">
                            <img src="/image/footer/footer_wa_mark.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom-text">
                <div>
                    © Office of the President. All rights reserved.

                </div>
            </div>
        </div>
    </div> -->
    <script src="./js/nav.js"></script>
</body>

</html>