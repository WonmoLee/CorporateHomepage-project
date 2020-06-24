<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>    


<!DOCTYPE html>
<html lang="ko" xml:lang="ko">
    <head>
        <meta charset="utf-8">
        <!-- 메타데이터 -->
        
        <!-- //meta -->
        
        <title>카카오</title>
            <link rel="shortcut icon" href="static/img/titleIcon.png" type="image/x-icon" />
        	
        	<link rel="stylesheet" type="text/css" href="css/kakao.css">
        	<link rel="stylesheet" type="text/css" href="css/kakaoTest.css">
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  
  			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </head>
    <body class="kakao_type">
        <div id="kakaoWrap">
            <a href="#contents" class="skip">본문바로가기</a>
            
            	<!-- 헤더시작 -->
				<header>
					<h1><a href="static/img/logo.png">Kakao</a></h1>
					<h2 class="hide">대메뉴</h2>
					<nav class="lnb">
						<ul>
						<li><a href="#a"><span>카카오</span></a></li>
						<li><a href="#a"><span>투자정보</span></a></li>
						<li><a href="#a"><span>서비스</span></a></li>
						<li><a href="#a"><span>소셜임팩트</span></a></li>
						<li><a href="#a"><span>고객지원</span></a></li>
						<li><a href="#a"><span>인재영입</span></a></li>
						</ul>
					</nav>
					<h2 class="hide"></h2>
					<nav class="unb">
						<ul>
						<li><a href="/corp/user?cmd=login">로그인</a></li>
						<li><a href="/corp/user?cmd=signup">회원가입</a></li>
						</ul>
					</nav>
				</header>
				<!-- 헤더끝 -->	
	

			    <!-- 섹션시작 -->
			    <hr class="hide">
			    <div id="kakaoContent" class="cont_home" role="main" aria-hidden="true">
			        <div id="cMain">
			            <div id="mArticle">
			                <h2 id="kakaoBody" class="screen_out">홈 본문</h2>
			
			                <div class="main_cont">
			                    <div class="main_visual" style="min-height: 602px; max-height: 842px;">
			                        <h3 class="screen_out">메인 비주얼</h3>
			                       <div id="demo" class="carousel slide" data-ride="carousel">
			
									  <!-- Indicators -->
									  <ul class="carousel-indicators">
									    <li data-target="#demo" data-slide-to="0" class="active"></li>
									    <li data-target="#demo" data-slide-to="1"></li>
									    <li data-target="#demo" data-slide-to="2"></li>
									  </ul>
									  
									  <!-- The slideshow -->
									  <div class="carousel-inner">
									    <div class="carousel-item active">
									      <img src="static/img/slide1.png" width="1910" height="700">
									    </div>
									    <div class="carousel-item">
									      <img src="static/img/slide2.png" width="1910" height="700">
									    </div>
									    <div class="carousel-item">
									      <img src="static/img/slide1.png" width="1910" height="700">
									    </div>
									  </div>
									  
									  <!-- Left and right controls -->
									  <a class="carousel-control-prev" href="#demo" data-slide="prev">
									    <span class="carousel-control-prev-icon"></span>
									  </a>
									  <a class="carousel-control-next" href="#demo" data-slide="next">
									    <span class="carousel-control-next-icon"></span>
									  </a>
								   </div>
								   
			                    <div class="main_summary">
			                        <div class="summary_info">
			                            <h3 class="tit_main">...</h3>
			                            <a href="" class="link_newsfeed">
			                                <strong class="tit_newsfeed">...</strong>
			                                <p class="desc_newsfeed">...</p>
			                            </a>
			                        </div>
			                        <div class="summary_info">
			                        
			                            <h3 class="tit_main">...</h3>
			                            <div class="main_stock stock_up">
			                                <div class="now_stock">
			                                    <strong class="screen_out">...</strong>
			                                    <span class="">...</span>
			                                    <span class="">...</span>
			                                </div>
			                                <div class="desc_stock">
			                                    <span class="screen_out">...</span>
			                                </div>
			                                <span class="txt_date">...</span>
			                            </div>
			                            </div>
			                            
			                        <div class="summary_info">
			                            <h3 class="tit_main">...</h3>
			                            <a href="https://privacy.kakao.com/main?lang=ko" target="_blank" class="link_newsfeed">
			                                <strong class="tit_newsfeed">...<br>...</strong>
			                            </a>
			                        </div>
			                    </div>
			                    
			                    <div class="main_service" style="margin-bottom: 100px;">
			                        <div class="service_info">
			                                    <a href="https://www.kakaocorp.com/service/KakaoTalk" class="link_newsfeed" } >
			                                        <h3 class="tit_black">SERVICE</h3>
			                                        <img src="https://t1.kakaocdn.net/kakaocorp/admin/co/main-content/4518.jpg" class="img_thumb" alt="">
			                                        <strong class="tit_newsfeed">언제 어디서나 무료로 간편하게! 사람과 세상, 그 이상을 연결하는 카카오톡</strong>
			                                        <p class="desc_newsfeed">
			                                            채팅은 물론 일정 관리, 송금, #검색 등 다양한 기능을 제공하는 카카오톡은 우리의 생활을 보다 편리하게 만들어 주고 있습니다. 카카오톡을 통해 세상의 정보와 즐길거리에 보다 가까이 ...</p>
			                                    </a>
			                                </div>
			                            <div class="service_info">
			                                    <a href="https://tech.kakao.com" class="link_newsfeed" target="_blank"} >
			                                        <h3 class="tit_white">TECH</h3>
			                                        <img src="https://t1.kakaocdn.net/kakaocorp/admin/co/main-content/4540.jpg" class="img_thumb" alt="">
			                                        <strong class="tit_newsfeed">새로워진 kakao Tech를 소개합니다.</strong>
			                                        <p class="desc_newsfeed">
			                                            기술 행사와 오픈소스, 후원, 채용 등 카카오의 기술 관련 종합적인 정보를 제공할 수 있도록 개편했습니다....</p>
			                                    </a>
			                                </div>
			                            <div class="service_info">
			                                    <a href="http://blog.kakaocorp.co.kr/679" class="link_newsfeed" target="_blank"} >
			                                        <h3 class="tit_black">SOCIAL IMPACT</h3>
			                                        <img src="https://t1.kakaocdn.net/kakaocorp/operating/co/main-content/3254.png" class="img_thumb" alt="">
			                                        <strong class="tit_newsfeed">세계 행복의 날 기념, 같이가치 ‘안녕하세요’ 캠페인을 소개합니다!</strong>
			                                        <p class="desc_newsfeed">
			                                            '세계 행복의 날'이라는 기념일을 들어보신 적 있나요? 2012년 국제연합(UN)이 모든 사람들이 행복하게 살 수 있도록 전 세계가 함께 노력하자는 취지로 매년 3월 20일을 '세계 ...</p>
			                                    </a>
			                                </div>
			                            </div>
                            
        		<!-- 푸터시작 -->
		        <footer id="kakaoFoot" class="foot_kakao" role="contentinfo" aria-hidden="true">
			    <div class="wrap_copyright">
			        <h2 class="screen_out">서비스 이용정보</h2>
			        <div class="inner_copyright">
			            <div class="info_copyright">
			                        <div class="info_svc">
			                            <!-- 2019-03-25 메뉴명 변경 시작 -->
			                            <a href="#none" class="dlnk_info" aria-haspopup="true" aria-expanded="false">이용약관<span class="ico_corp ico_arr"></span></a>
			                            <ul class="list_relation dummy" style="display:none">
			
			                                <li><a href="https://www.kakao.com/policy/terms?type=a&lang=ko" target="_blank" class="link_relation">카카오계정 서비스<span class="ico_corp ico_direct"></span></a></li>
			                                <li><a href="https://www.kakao.com/policy/terms?type=ts&lang=ko" target="_blank" class="link_relation">카카오 서비스<span class="ico_corp ico_direct"></span></a></li>
			                                <li><a href="http://policy.daum.net/info/info" target="_blank" class="link_relation">Daum 서비스<span class="ico_corp ico_direct"></span></a></li>
			                                <li><a href="https://info.melon.com/terms/web/terms1_1.html" target="_blank" class="link_relation">Melon 서비스<span class="ico_corp ico_direct"></span></a></li>
			                            </ul>
			                        </div>
			                        <div class="info_svc">
			                            <a href="#none" class="dlnk_info" aria-haspopup="true" aria-expanded="false">위치기반서비스이용약관<span class="ico_corp ico_arr"></span></a>
			                            <ul class="list_relation dummy" style="display:none">
			                                <li><a href="https://www.kakao.com/policy/location?lang=ko" target="_blank" class="link_relation">카카오 서비스<span class="ico_corp ico_direct"></span></a></li>
			                                <li><a href="http://policy.daum.net/mobile_info/mobile_info" target="_blank" class="link_relation">Daum 서비스<span class="ico_corp ico_direct"></span></a></li>
			                                <li><a href="https://info.melon.com/terms/web/terms1_3.html?termsType=&SOURCE=" target="_blank" class="link_relation">Melon 서비스<span class="ico_corp ico_direct"></span></a></li>
			                            </ul>
			                        </div>
			                        <div class="info_svc">
			                            <a href="#none" class="dlnk_info" aria-haspopup="true" aria-expanded="false"><strong class="dlnk_txt">개인정보처리방침</strong><span class="ico_corp ico_arr"></span></a>
			                            <ul class="list_relation dummy" style="display:none">
			                                <li><a href="/policy/privacyPolicy/corporateSitePrivacyPolicy" class="link_relation">기업사이트</a></li>
			                                <li><a href="https://www.kakao.com/policy/privacy?lang=ko" target="_blank" class="link_relation">카카오 서비스<span class="ico_corp ico_direct"></span></a></li>
			                                <li><a href="http://policy.daum.net/info_protection/info_protection" target="_blank" class="link_relation">Daum 서비스<span class="ico_corp ico_direct"></span></a></li>
			                                <li><a href="https://info.melon.com/terms/web/terms3.html?termsType=&SOURCE=" target="_blank" class="link_relation">Melon 서비스<span class="ico_corp ico_direct"></span></a></li>
			                            </ul>
			                        </div>
			                        <div class="info_svc">
			                            <a href="https://www.kakao.com/policy/oppolicy?lang=ko" class="dlnk_info" target="_blank" >운영정책</a>
			                        </div>
			                        <div class="info_svc">
			                            <a href="#none" class="dlnk_info" aria-haspopup="true" aria-expanded="false">청소년보호정책<span class="ico_corp ico_arr"></span></a>
			                            <ul class="list_relation dummy" style="display:none">
			                                <li><a href="https://www.kakao.com/policy/safeguard?lang=ko" target="_blank" class="link_relation">카카오 서비스<span class="ico_corp ico_direct"></span></a></li>
			                                <li><a href="http://policy.daum.net/youthpolicy/youthpolicy" target="_blank" class="link_relation">Daum 서비스<span class="ico_corp ico_direct"></span></a></li>
			                                <li><a href="https://info.melon.com/terms/web/terms5_1.html?termsType=&SOURCE=" target="_blank" class="link_relation">Melon 서비스<span class="ico_corp ico_direct"></span></a></li>
			                            </ul>
			                        </div>
			                        <div class="info_svc">
			                            <a href="https://www.kakao.com/policy/right?lang=ko" target="_blank" class="dlnk_info">권리침해신고안내</a>
			                        </div>
			                        <div class="info_svc">
			                            <a href="#none" class="dlnk_info" aria-haspopup="true" aria-expanded="false">공지사항<span class="ico_corp ico_new">공지사항 새로운 업데이트가 있습니다 링크</span>
			                                <span class="ico_corp ico_arr"></span>
			                            </a>
			                            <ul class="list_relation dummy" style="display:none">
			                                <li><a href="/policy/notice/kakaocorp/list" class="link_relation">기업사이트</a></li>
			                                <li><a href="https://www.kakao.com/notices?lang=ko" target="_blank" class="link_relation">카카오 서비스<span class="ico_corp ico_direct"></span></a></li>
			                                <li><a href="https://m.daum.net/channel/new/notice" target="_blank" class="link_relation">Daum 서비스<span class="ico_corp ico_direct"></span></a></li>
			
			                                <li><a href="https://www.melon.com/customer/announce/index.htm" target="_blank" class="link_relation">Melon 서비스<span class="ico_corp ico_direct"></span></a></li>
			                            </ul>
			                        </div>
			                        <div class="info_svc">
			                            <a href="/policy/cyberEthics/info" class="dlnk_info">사이버윤리실</a>
			                        </div>
			                        <small class="txt_copyright">Copyright &copy; <a href="https://www.kakaocorp.com/main" class="link_kakao">Kakao Corp.</a> All rights reserved.</small>
			                    </div>
				    	</div>
				</footer>
				<!-- 푸터끝 -->
	
                      </div>   
                </div>
            </div>
            <!--// mArticle -->
        </div>
        <!-- // cMain -->
    </div>
    <!-- // kakaoContent -->
    <hr class="hide">
    <!-- // main meta-->
  </div>
</body>

<script type="text/javascript" src="/resources/common/pc/common.js?t=202006231413"></script>

</html>
