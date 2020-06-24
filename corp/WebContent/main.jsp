<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>    


<!DOCTYPE html>
<html lang="ko" xml:lang="ko">
    <head>
        <meta charset="utf-8">
        <!-- 메타데이터 -->
        <meta content="website" property="og:type"  />
        <meta content='kakaocorp.com' property='og:site_name'/>
        <meta content='//www.kakaocorp.com/' property='og:url'/>

        <meta content='ko_KR' property='og:locale'/>
        <meta content='en_US' property='og:locale:alternate'/>
        <meta content="Kakao" property='og:title'/>
        <meta content='Connect Everything - 새로운 연결, 더 나은 세상' property='og:description'/>
        <meta content="//t1.kakaocdn.net/kakaocorp/corp_thumbnail/Kakao.png" property="og:image"/>
        <meta name="naver-site-verification" content="6171ab3d716f1b32969a13e4f5b9475b2f4dd42c"/>
        <!-- //meta -->
        
        <title>카카오</title>
            <link rel="shortcut icon" href="static/img/titleIcon.png" type="image/x-icon" />
        	
        	<link rel="stylesheet" type="text/css" href="css/kakao.css">
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  
  			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </head>
    <body class="kakao_type">
        
        <div id="kakaoWrap">
        
        	<!-- 헤더시작 -->
            <header id="kakaoHead" class="head_type3" style="top: 0px;" aria-hidden="true">
			  <div class="wrap_head">
			    <div class="box_gnb" style="display: block;">
			      <h1 class="tit_logo">
			        <a href="/" id="kakaoServiceLogo" class="link_kakao"><span class="tit_service">kakao</span></a>
			      </h1>
			      <nav id="kakaoGnb">
			        <h2 class="screen_out">kakao 메인 메뉴</h2>
			        <ul class="list_gnb" role="menu">
			          
					  <!-- nav list1 -->
			          <li class="fst">
			            <a href="" class="link_gnb" aria-haspopup="false" aria-expanded="false">카카오<span class="line"></span></a>
			            <div class="box_sub sub_type1">
			              <ul class="list_sub" role="menu">
			                <li>
			                  <strong class="tit_sub">
			                  <a href="" class="link_sub" role="menuitem"><span class="txt_g">카카오 소개</span></a>
			                  </strong>
			                  <a href="" class="link_sub"><span class="txt_g">비전</span></a><!-- 현재 페이지일때 on 클래스 추가 및 aria-selected="false" true 로 변경필요 -->
			                  <a href="" class="link_sub"><span class="txt_g">카카오 문화</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">걸어온 길</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">CI</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">윤리규정</span></a>
			                </li>
			                <li>
			                  <strong class="tit_sub">
			                  <a href="" class="link_sub" role="menuitem"><span class="txt_g">카카오 AI</span></a>
			                  </strong>
			                  <a href="" class="link_sub"><span class="txt_g">소개</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">알고리즘 윤리</span></a>
			                </li>
			                <li>
			                  <strong class="tit_sub">
			                  <a href="" class="link_sub" role="menuitem"><span class="txt_g">자회사</span></a>
			                  </strong>
			                </li>
			                <li>
			                  <strong class="tit_sub">
			                  <a href="" class="link_sub" role="menuitem"><span class="txt_g">비즈니스</span></a>
			                  </strong>
			                  <a href="" class="link_sub"><span class="txt_g">광고 안내</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">제휴 안내</span></a>
			                  <a href="" target="_blank" class="link_sub"><span class="txt_g">Kakao for Business<span class="ico_corp ico_arr"></span></span></a>
			                </li>
			                <li>
			                  <strong class="tit_sub">
			                  <a href="" class="link_sub" role="menuitem"><span class="txt_g">홍보채널</span></a>
			                  </strong>
			                  <a href="" class="link_sub"><span class="txt_g">보도자료</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">브랜드 영상</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">미디어 행사</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">Kakao Travel Day</span></a>
			                </li>
			                <li>
			                  <strong class="tit_sub">
			                  <a href="" class="link_sub" role="menuitem"><span class="txt_g">오시는 길</span></a>
			                  </strong>
			                </li>
			              </ul>
			            </div>
			          </li>
			          
			          <!-- nav list2 -->
			          <li >
			            <a href="" class="link_gnb" aria-haspopup="false" aria-expanded="false">투자정보<span class="line"></span></a>
			            <div class="box_sub sub_type2">
			              <ul class="list_sub" role="menu">
			                <li>
			                  <strong class="tit_sub">
			                  <a href="" class="link_sub" role="menuitem"><span class="txt_g">경영정보</span></a>
			                  </strong>
			                  <a href="" class="link_sub"><span class="txt_g">주주구성</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">이사회</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">정관</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">기업지배구조</span></a>
			                </li>
			                <li>
			                  <strong class="tit_sub">
			                  <a href="" class="link_sub" role="menuitem"><span class="txt_g">공시정보</span></a>
			                  </strong>
			                </li>
			                <li>
			                  <strong class="tit_sub">
			                  <a href="" class="link_sub" role="menuitem"><span class="txt_g">주가정보</span></a>
			                  </strong>
			                </li>
			                <li>
			                  <strong class="tit_sub">
			                  <a href="" class="link_sub" role="menuitem"><span class="txt_g">재무정보</span></a>
			                  </strong>
			                  <a href="" class="link_sub"><span class="txt_g">연결재무제표</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">별도재무제표</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">신용등급</span></a>
			                </li>
			                <li>
			                  <strong class="tit_sub">
			                  <a href="" class="link_sub" role="menuitem"><span class="txt_g">IR 일정</span></a>
			                  </strong>
			                  <a href="" class="link_sub"><span class="txt_g">IR 행사</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">주주총회</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">IR 미팅예약</span></a>
			                </li>
			                <li>
			                  <strong class="tit_sub">
			                  <a href="" class="link_sub" role="menuitem"><span class="txt_g">IR 자료실</span></a>
			                  </strong>
			                  <a href="" class="link_sub"><span class="txt_g">실적발표</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">정기보고서</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">IR FAQ</span>
			                  </a>
			                </li>
			                <li>
			                  <strong class="tit_sub">
			                  <a href="" class="link_sub" role="menuitem"><span class="txt_g">증권사커버리지</span></a>
			                  </strong>
			                </li>
			                <li>
			                  <strong class="tit_sub">
			                  <a href="" class="link_sub" role="menuitem"><span class="txt_g">공고</span></a>
			                  </strong>
			                  <a href="" class="link_sub"><span class="txt_g">배당정보</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">공고사항</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">주주제안권</span></a>
			                </li>
			              </ul>
			            </div>
			          </li>
			          
			          <!-- nav list3 -->
			          <li >
			            <a href="/service" class="link_gnb" aria-haspopup="false" aria-expanded="false">서비스<span class="line"></span></a>
			            <div class="box_sub sub_type3">
			              <ul class="list_sub" role="menu">
			                <li>
			                   <strong class="tit_sub">
			                   <a class="link_sub" role="menuitem"><span class="txt_g">포털</span></a>
			                   </strong>
			                   <a href="" class="link_sub "><span>Daum</span></a>
			                   <a href="" class="link_sub "><span>Daum 뉴스</span></a>
			                   <a href="" class="link_sub "><span>Daum 검색</span></a>
			                </li>
			                <li>
			                   <strong class="tit_sub">
			                   <a class="link_sub" role="menuitem"><span class="txt_g">커뮤니케이션</span></a>
			                   </strong>
							   <a href="" class="link_sub "><span>카카오톡</span></a>
			                   <a href="" class="link_sub "><span>카카오스토리</span></a>
			                   <a href="" class="link_sub "><span>카카오톡 치즈</span></a>
			                   <a href="" class="link_sub "><span>Daum 메일</span></a>
			                   <a href="" class="link_sub "><span>Daum 카페</span></a>
			                   <a href="" class="link_sub "><span>아지트</span></a>
			                   <a href="" class="link_sub "><span>티스토리</span></a>
			                   <a href="" class="link_sub "><span>브런치</span></a>
			                   <a href="" class="link_sub "><span>멜론 아지톡</span></a>
			                   <a href="" class="link_sub "><span>카카오메일</span></a>
			                </li>
			                <li>
			                   <strong class="tit_sub">
			                   <a class="link_sub" role="menuitem"><span class="txt_g">콘텐츠</span></a>
			                   </strong>
			                   <a href="" class="link_sub "><span>카카오페이지</span></a>
			                   <a href="" class="link_sub "><span>카카오TV</span></a>
			                   <a href="" class="link_sub "><span>카카오뮤직</span></a>
			                   <a href="" class="link_sub "><span>카카오프렌즈</span></a>
			                   <a href="" class="link_sub "><span>Daum 웹툰</span></a>
			                   <a href="" class="link_sub "><span>1boon</span></a>
			                   <a href="" class="link_sub "><span>멜론</span></a>
			                   <a href="" class="link_sub "><span>멜론티켓</span></a>
			                 </li>
			                 <li>
			                   <strong class="tit_sub">
			                   <a class="link_sub" role="menuitem"><span class="txt_g">커머스</span></a>
			                   </strong>
			                   <a href="" class="link_sub "><span>카카오톡 선물하기</span></a>
			                   <a href="" class="link_sub "><span>카카오스타일</span></a>
			                   <a href="" class="link_sub "><span>카카오톡 쇼핑하기</span></a>
			                   <a href="" class="link_sub "><span>쇼핑하우</span></a>
			                  </li>
			                  <li>
			                    <strong class="tit_sub">
			                    <a class="link_sub" role="menuitem"><span class="txt_g">게임</span></a>
			                    </strong>
			                    <a href="" class="link_sub "><span>카카오게임즈</span></a>
			                  </li>
			                  <li>
			                    <strong class="tit_sub">
			                    <a class="link_sub" role="menuitem"><span class="txt_g">핀테크</span></a></strong>
			                    <a href="" class="link_sub "><span>카카오페이</span></a>
			                  </li>
			                  <li>
			                    <strong class="tit_sub">
			                    <a class="link_sub" role="menuitem"><span class="txt_g">모빌리티&라이프</span></a>
			                    </strong>
			                    <a href="" class="link_sub "><span>카카오 T</span></a>
			                    <a href="" class="link_sub "><span>카카오 T 대리</span></a>
			                    <a href="" class="link_sub "><span>카카오내비</span></a>
			                    <a href="" class="link_sub "><span>카카오맵</span></a>
			                    <a href="" class="link_sub "><span>카카오버스</span></a>
			                    <a href="" class="link_sub "><span>카카오지하철</span></a>
			                    <a href="" class="link_sub "><span>카카오헤어샵</span></a>
			                  </li>
			                  <li>
			                    <strong class="tit_sub">
			                    <a class="link_sub" role="menuitem"><span class="txt_g">소셜임팩트</span></a>
			                    </strong>
			                    <a href="" class="link_sub "><span>카카오같이가치</span></a>
			                  </li>
			                </ul>
			            </div>
			          </li>
			          
			          <!-- nav list4 -->
			          <li >
			            <a href="" class="link_gnb" aria-haspopup="false" aria-expanded="false">소셜임팩트<span class="line"></span></a>
			            <div class="box_sub sub_type4">
			              <ul class="list_sub" role="menu">
			                <li>
			                  <strong class="tit_sub">
			                  <a href="" class="link_sub" role="menuitem"><span class="txt_g">소셜임팩트 서비스</span></a>
			                  </strong>
			                  <a href="" class="link_sub"><span class="txt_g">카카오같이가치</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">카카오메이커스</span></a>
			                </li>
			                <li>
			                  <strong class="tit_sub">
			                  <a href="" class="link_sub" role="menuitem"><span class="txt_g">사회공헌</span></a>
			                  </strong>
			                  <a href="" class="link_sub"><span class="txt_g">Next</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">Connect</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">Kakao Krew</span></a>
			                </li>
			                <li>
			                  <strong class="tit_sub">
			                  <a href="" class="link_sub" role="menuitem"><span class="txt_g">상생</span></a>
			                  </strong>
			                  <a href="" class="link_sub"><span class="txt_g">상생센터</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">상생서포터즈</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">Kakao 클래스</span></a>
			                </li>
			                <li>
			                  <strong class="tit_sub">
			                  <a href="" class="link_sub" role="menuitem"><span class="txt_g">제주지역협력</span></a>
			                  </strong>
			                  <a href="" class="link_sub"><span class="txt_g">교육 산학</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">지역 상생</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">문화 교류</span></a>
			                  <a href="" class="link_sub"><span class="txt_g">제주창조경제혁신센터</span></a>
			                </li>
			                <li>
			                  <strong class="tit_sub">
			                  <a href="" class="link_sub" role="menuitem"><span class="txt_g">Partners with Kakao</span></a>
			                  </strong>
			                </li>
			              </ul>
			            </div>
			          </li>
			          
			          <!-- nav list5 -->
			          <li >
			            <a href="" class="link_gnb" aria-haspopup="false" aria-expanded="false">고객지원<span class="line"></span></a>
			          </li>
			          
			          <!-- nav list6 -->
			          <li>
			            <a href="" target="_blank" class="link_gnb link_talent" role="menuitem">인재영입<span class="ico_corp ico_arr"></span><span class="line"></span></a>
			          </li>
			        </ul>
			      </nav>
			
					<c:choose>
						<c:when test="${empty sessionScope.principal }">
						<ul class="list_lang">
							<li><a href="/corp/user?cmd=login"> 로그인 </a></li>
							<li><a href="/corp/user?cmd=signup"> 회원가입 </a></li>
						</ul>
						</c:when>
						<c:otherwise>
						<ul class="list_lang">
							<li><a href="/corp/user?cmd="> 글쓰기 </a></li>
							<li><a href="/corp/user?cmd=update"> 회원정보 수정 </a></li>
							<li><a href="/corp/user?cmd=logout"> 로그아웃 </a></li>
						</ul>
						</c:otherwise>
					</c:choose>
			    </div>
			  </div>
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
						      <img src="static/img/main1.png" width="1910" height="600">
						    </div>
						    <div class="carousel-item">
						      <img src="static/img/main2.png" width="1910" height="600">
						    </div>
						    <div class="carousel-item">
						      <img src="static/img/main3.png" width="1910" height="600">
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
                    
                    <div class="main_service"">
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
