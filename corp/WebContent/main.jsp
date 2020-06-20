<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<!-- meta데이터 시작 -->
<meta name="Keywords" content="카카오, kakao" />
<meta content="website" />
<meta content='kakaocorp.com' />
<meta content='//localhost:8000/' />

<meta content='ko_KR' property='og:locale' />
<meta content='en_US' property='og:locale:alternate' />
<meta content="Kakao" property='og:title' />
<meta content='Connect Everything - 새로운 연결, 더 나은 세상'
	property='og:description' />
<meta content="//t1.kakaocdn.net/kakaocorp/corp_thumbnail/Kakao.png"
	property="og:image" />
<meta name="naver-site-verification"
	content="6171ab3d716f1b32969a13e4f5b9475b2f4dd42c" />
<!-- //meta데이터 끝 -->
<title>KAKAO</title>
<link rel="shortcut icon" href="static/img/titleIcon.png"type="image/x-icon" />

<link rel="stylesheet" type="text/css" href="css/main1.css">
<link rel="stylesheet" type="text/css" href="css/main2.css">
<link rel="stylesheet" type="text/css" href="css/main3.css">
<link rel="stylesheet" type="text/css" href="css/main4.css">

</head>
<body class="kakao_type">
	<div id="kakaoWrap">
		<header id="kakaoHead" class="head_type3" style="top: 0px;"
			aria-hidden="true">
			<!--head 동작 관련 클래스 추가 : head_type1(메인 black 타입), head_type3(메인 white 타입), head_type2(메인 제외 전부 기본)-->
			<div class="wrap_head">
				<div class="box_gnb" style="display: block;">
					<!--메뉴 에니메이션을 위해 class="box_gnb" 추가-->
					<h1 class="tit_logo">
						<a href="/corp/home?cmd=main" id="kakaoServiceLogo" class="link_kakao"> <span
							class="tit_service">kakao</span>
						</a>
					</h1>
					<nav id="kakaoGnb">
						<h2 class="screen_out">kakao 메인 메뉴</h2>
						<ul class="list_gnb" role="menu">
							<li class="fst">
								<!-- 1뎁스 메뉴 선택시 aria-expanded="false" true 값으로 변경필요 --> <a
								href="/kakao/introduce/vision" class="link_gnb"
								aria-haspopup="false" aria-expanded="false"> 카카오<span
									class="line"></span>
							</a>
								<div class="box_sub sub_type1">
									<ul class="list_sub" role="menu">
										<li><strong class="tit_sub"> <a
												href="/kakao/introduce/vision" class="link_sub"
												role="menuitem"> <span class="txt_g">카카오 소개</span>
											</a>
										</strong> <a href="/kakao/introduce/vision" class="link_sub"> <span
												class="txt_g">비전</span>
										</a> <!-- 현재 페이지일때 on 클래스 추가 및 aria-selected="false" true 로 변경필요 -->
											<a href="/kakao/introduce/kakaoCulture" class="link_sub">
												<span class="txt_g">카카오 문화</span>
										</a> <a href="/kakao/introduce/history" class="link_sub"> <span
												class="txt_g">걸어온 길</span>
										</a> <a href="/kakao/introduce/ci" class="link_sub"> <span
												class="txt_g">CI</span>
										</a> <a href="/kakao/introduce/codeOfBusinessEthics"
											class="link_sub"> <span class="txt_g">윤리규정</span>
										</a></li>
										<li><strong class="tit_sub"> <a href="/kakao/ai"
												class="link_sub" role="menuitem"> <span class="txt_g">카카오
														AI</span>
											</a>
										</strong> <a href="/kakao/ai" class="link_sub"> <span class="txt_g">소개</span>
										</a> <a href="/kakao/ai/algorithm" class="link_sub"> <span
												class="txt_g">알고리즘 윤리</span>
										</a></li>
										<li><strong class="tit_sub"> <a
												href="/kakao/subsidiaryCompany" class="link_sub"
												role="menuitem"> <span class="txt_g">자회사</span>
											</a>
										</strong></li>
										<li><strong class="tit_sub"> <a
												href="/kakao/advertisingAndAffiliation/advertisement"
												class="link_sub" role="menuitem"> <span class="txt_g">비즈니스</span>
											</a>
										</strong> <a href="/kakao/advertisingAndAffiliation/advertisement"
											class="link_sub"> <span class="txt_g">광고 안내</span>
										</a> <a href="/kakao/advertisingAndAffiliation/affiliationGuide"
											class="link_sub"> <span class="txt_g">제휴 안내</span>
										</a> <a href="https://business.kakao.com" target="_blank"
											class="link_sub"> <span class="txt_g">Kakao for
													Business<span class="ico_corp ico_arr"></span>
											</span>
										</a></li>
										<li><strong class="tit_sub"> <a
												href="/kakao/prChannel/pressReleases" class="link_sub"
												role="menuitem"> <span class="txt_g">홍보채널</span>
											</a>
										</strong> <a href="/kakao/prChannel/pressReleases" class="link_sub">
												<span class="txt_g">보도자료</span>
										</a> <a href="/kakao/prChannel/brandVideo" class="link_sub"> <span
												class="txt_g">브랜드 영상</span>
										</a> <a href="/kakao/prChannel/mediaEvent" class="link_sub"> <span
												class="txt_g">미디어 행사</span>
										</a> <a href="/kakao/travelDay" class="link_sub"> <span
												class="txt_g">Kakao Travel Day</span>
										</a></li>
										<li><strong class="tit_sub"> <a
												href="/kakao/wayToCome" class="link_sub" role="menuitem">
													<span class="txt_g">오시는 길</span>
											</a>
										</strong></li>
									</ul>
								</div>
							</li>
							<li><a
								href="/ir/managementInformation/shareholderComposition"
								class="link_gnb" aria-haspopup="false" aria-expanded="false">
									투자정보<span class="line"></span>
							</a>
								<div class="box_sub sub_type2">
									<ul class="list_sub" role="menu">
										<li><strong class="tit_sub"> <a
												href="/ir/managementInformation/shareholderComposition"
												class="link_sub" role="menuitem"> <span class="txt_g">경영정보</span>
											</a>
										</strong> <a href="/ir/managementInformation/shareholderComposition"
											class="link_sub"> <span class="txt_g">주주구성</span>
										</a> <a
											href="/ir/managementInformation/boardOfDirectors/configuration"
											class="link_sub"> <span class="txt_g">이사회</span>
										</a> <a href="/ir/managementInformation/constitution"
											class="link_sub"> <span class="txt_g">정관</span>
										</a> <a href="/ir/managementInformation/bestPractice"
											class="link_sub"> <span class="txt_g">기업지배구조</span>
										</a></li>
										<li><strong class="tit_sub"> <a
												href="/ir/disclosureInformation" class="link_sub"
												role="menuitem"> <span class="txt_g">공시정보</span>
											</a>
										</strong></li>
										<li><strong class="tit_sub"> <a
												href="/ir/stockInformation" class="link_sub" role="menuitem">
													<span class="txt_g">주가정보</span>
											</a>
										</strong></li>
										<li><strong class="tit_sub"> <a
												href="/ir/financialInformation/consolidatedFinancialStatements"
												class="link_sub" role="menuitem"> <span class="txt_g">재무정보</span>
											</a>
										</strong> <a
											href="/ir/financialInformation/consolidatedFinancialStatements"
											class="link_sub"> <span class="txt_g">연결재무제표</span>
										</a> <a
											href="/ir/financialInformation/separateFinancialStatements"
											class="link_sub"> <span class="txt_g">별도재무제표</span>
										</a> <a href="/ir/financialInformation/creditRating"
											class="link_sub"> <span class="txt_g">신용등급</span>
										</a></li>
										<li><strong class="tit_sub"> <a
												href="/ir/calendar/event" class="link_sub" role="menuitem">
													<span class="txt_g">IR 일정</span>
											</a>
										</strong> <a href="/ir/calendar/event" class="link_sub"> <span
												class="txt_g">IR 행사</span>
										</a> <a href="/ir/calendar/shareholdersMeeting" class="link_sub">
												<span class="txt_g">주주총회</span>
										</a> <a href="/ir/calendar/scheduleMeeting" class="link_sub">
												<span class="txt_g">IR 미팅예약</span>
										</a></li>
										<li><strong class="tit_sub"> <a
												href="/ir/referenceRoom/earningsAnnouncement"
												class="link_sub" role="menuitem"> <span class="txt_g">IR
														자료실</span>
											</a>
										</strong> <a href="/ir/referenceRoom/earningsAnnouncement"
											class="link_sub"> <span class="txt_g">실적발표</span>
										</a> <a href="/ir/referenceRoom/regularReports" class="link_sub">
												<span class="txt_g">정기보고서</span>
										</a> <a href="/ir/referenceRoom/faq" class="link_sub"> <span
												class="txt_g">IR FAQ</span>
										</a></li>

										<li><strong class="tit_sub"> <a
												href="/ir/securitiesCompanyCoverage" class="link_sub"
												role="menuitem"> <span class="txt_g">증권사커버리지</span>
											</a>
										</strong></li>
										<li><strong class="tit_sub"> <a
												href="/ir/dividendInformation" class="link_sub"
												role="menuitem"> <span class="txt_g">공고</span>
											</a>
										</strong> <a href="/ir/dividendInformation" class="link_sub"> <span
												class="txt_g">배당정보</span>
										</a> <a href="/ir/noticeList" class="link_sub"> <span
												class="txt_g">공고사항</span>
										</a> <a href="/ir/shareholderProposal" class="link_sub"> <span
												class="txt_g">주주제안권</span>
										</a></li>
									</ul>
								</div></li>
							<li><a href="/service" class="link_gnb"
								aria-haspopup="false" aria-expanded="false"> 서비스<span
									class="line"></span>
							</a>
								<div class="box_sub sub_type3">
									<ul class="list_sub" role="menu">
										<li><strong class="tit_sub"> <a class="link_sub"
												role="menuitem"><span class="txt_g">포털</span></a>
										</strong> <a href="/service/Daum" class="link_sub "> <span>Daum</span>
										</a> <a href="/service/DaumNews" class="link_sub "> <span>Daum
													뉴스</span>
										</a> <a href="/service/DaumSearch" class="link_sub "> <span>Daum
													검색</span>
										</a></li>
										<li><strong class="tit_sub"> <a class="link_sub"
												role="menuitem"><span class="txt_g">커뮤니케이션</span></a>
										</strong> <a href="/service/KakaoTalk" class="link_sub "> <span>카카오톡</span>
										</a> <a href="/service/KakaoStory" class="link_sub "> <span>카카오스토리</span>
										</a> <a href="/service/Cheez" class="link_sub "> <span>카카오톡
													치즈</span>
										</a> <a href="/service/DaumMail" class="link_sub "> <span>Daum
													메일</span>
										</a> <a href="/service/DaumCafe" class="link_sub "> <span>Daum
													카페</span>
										</a> <a href="/service/Agit" class="link_sub "> <span>아지트</span>
										</a> <a href="/service/Tistory" class="link_sub "> <span>티스토리</span>
										</a> <a href="/service/Brunch" class="link_sub "> <span>브런치</span>
										</a> <a href="/service/MelonAztalk" class="link_sub "> <span>멜론
													아지톡</span>
										</a> <a href="/service/Kakaomail" class="link_sub "> <span>카카오메일</span>
										</a></li>
										<li><strong class="tit_sub"> <a class="link_sub"
												role="menuitem"><span class="txt_g">콘텐츠</span></a>
										</strong> <a href="/service/KakaoPage" class="link_sub "> <span>카카오페이지</span>
										</a> <a href="/service/KakaoTV" class="link_sub "> <span>카카오TV</span>
										</a> <a href="/service/KakaoMusic" class="link_sub "> <span>카카오뮤직</span>
										</a> <a href="/service/KakaoFriends" class="link_sub "> <span>카카오프렌즈</span>
										</a> <a href="/service/DaumWebtoon" class="link_sub "> <span>Daum
													웹툰</span>
										</a> <a href="/service/1boon" class="link_sub "> <span>1boon</span>
										</a> <a href="/service/Melon" class="link_sub "> <span>멜론</span>
										</a> <a href="/service/MelonTicket" class="link_sub "> <span>멜론티켓</span>
										</a></li>
										<li><strong class="tit_sub"> <a class="link_sub"
												role="menuitem"><span class="txt_g">커머스</span></a>
										</strong> <a href="/service/KakaoTalkGift" class="link_sub "> <span>카카오톡
													선물하기</span>
										</a> <a href="/service/KakaoStyle" class="link_sub "> <span>카카오스타일</span>
										</a> <a href="/service/KakaoTalkShopping" class="link_sub "> <span>카카오톡
													쇼핑하기</span>
										</a> <a href="/service/ShoppingHow" class="link_sub "> <span>쇼핑하우</span>
										</a></li>
										<li><strong class="tit_sub"> <a class="link_sub"
												role="menuitem"><span class="txt_g">게임</span></a>
										</strong> <a href="/service/KakaoGames" class="link_sub "> <span>카카오게임즈</span>
										</a></li>
										<li><strong class="tit_sub"> <a class="link_sub"
												role="menuitem"><span class="txt_g">핀테크</span></a>
										</strong> <a href="/service/Kakaopay" class="link_sub "> <span>카카오페이</span>
										</a></li>
										<li><strong class="tit_sub"> <a class="link_sub"
												role="menuitem"><span class="txt_g">모빌리티&라이프</span></a>
										</strong> <a href="/service/KakaoT" class="link_sub "> <span>카카오
													T</span>
										</a> <a href="/service/kakaoTdriver" class="link_sub "> <span>카카오
													T 대리</span>
										</a> <a href="/service/KakaoNavi" class="link_sub "> <span>카카오내비</span>
										</a> <a href="/service/KakaoMap" class="link_sub "> <span>카카오맵</span>
										</a> <a href="/service/KakaoBus" class="link_sub "> <span>카카오버스</span>
										</a> <a href="/service/KakaoMetro" class="link_sub "> <span>카카오지하철</span>
										</a> <a href="/service/KakaoHairshop" class="link_sub "> <span>카카오헤어샵</span>
										</a></li>
										<li><strong class="tit_sub"> <a class="link_sub"
												role="menuitem"><span class="txt_g">소셜임팩트</span></a>
										</strong> <a href="/service/Together" class="link_sub "> <span>카카오같이가치</span>
										</a></li>
									</ul>
								</div></li>
							<li><a href="/socialImpact/socialImpactService"
								class="link_gnb" aria-haspopup="false" aria-expanded="false">
									소셜임팩트<span class="line"></span>
							</a>
								<div class="box_sub sub_type4">
									<ul class="list_sub" role="menu">
										<li><strong class="tit_sub"> <a
												href="/socialImpact/socialImpactService" class="link_sub"
												role="menuitem"> <span class="txt_g">소셜임팩트 서비스</span>
											</a>
										</strong> <a
											href="/socialImpact/withKakao/socialImpactService/Together"
											class="link_sub"> <span class="txt_g">카카오같이가치</span>
										</a> <a
											href="/socialImpact/withKakao/socialImpactService/kakaoMakers"
											class="link_sub"> <span class="txt_g">카카오메이커스</span>
										</a></li>
										<li><strong class="tit_sub"> <a
												href="/socialImpact/withKakao" class="link_sub"
												role="menuitem"> <span class="txt_g">사회공헌</span>
											</a>
										</strong> <a href="/socialImpact/withKakao/next" class="link_sub">
												<span class="txt_g">Next</span>
										</a> <a href="/socialImpact/withKakao/connect" class="link_sub">
												<span class="txt_g">Connect</span>
										</a> <a href="/socialImpact/withKakao/krew" class="link_sub">
												<span class="txt_g">Kakao Krew</span>
										</a></li>
										<li><strong class="tit_sub"> <a
												href="/socialImpact/withPartners" class="link_sub"
												role="menuitem"> <span class="txt_g">상생</span>
											</a>
										</strong> <a href="/socialImpact/withPartners/winWinCenter"
											class="link_sub"> <span class="txt_g">상생센터</span>
										</a> <a href="/socialImpact/withPartners/winWinSupporters"
											class="link_sub"> <span class="txt_g">상생서포터즈</span>
										</a> <a href="/socialImpact/withPartners/kakaoClass"
											class="link_sub"> <span class="txt_g">Kakao 클래스</span>
										</a></li>
										<li><strong class="tit_sub"> <a
												href="/socialImpact/withJeju" class="link_sub"
												role="menuitem"> <span class="txt_g">제주지역협력</span>
											</a>
										</strong> <a href="/socialImpact/withJeju/youthItEducation"
											class="link_sub"> <span class="txt_g">교육 산학</span>
										</a> <a href="/socialImpact/withJeju/communityCooperation"
											class="link_sub"> <span class="txt_g">지역 상생</span>
										</a> <a href="/socialImpact/withJeju/cultureAndExchange"
											class="link_sub"> <span class="txt_g">문화 교류</span>
										</a> <a
											href="/socialImpact/withPartners/jejuCreationEconomicInnovationCenter"
											class="link_sub"> <span class="txt_g">제주창조경제혁신센터</span>
										</a></li>
										<li><strong class="tit_sub"> <a
												href="/socialImpact/partnersWithKakao" class="link_sub"
												role="menuitem"> <span class="txt_g">Partners
														with Kakao</span>
											</a>
										</strong></li>
									</ul>
								</div></li>
							<li><a href="/customerSupport/" class="link_gnb"
								aria-haspopup="false" aria-expanded="false"> 고객지원<span
									class="line"></span>
							</a></li>
							<li><a href="https://careers.kakao.com" target="_blank"
								class="link_gnb link_talent" role="menuitem"> 인재영입<span
									class="ico_corp ico_arr"></span> <span class="line"></span>
							</a></li>
						</ul>
					</nav>

					<ul class="list_lang">
						<li><a href="/corp/user?cmd=login"> 로그인 </a></li>
						<li><a href="/corp/user?cmd=signup"> 회원가입 </a></li>
					</ul>
					
				</div>
			</div>
		</header>
		<!-- 헤더끝 -->

		<!-- 섹션시작 -->
		<hr class="hide">
		<div id="kakaoContent" class="cont_home" role="main"
			aria-hidden="true">
			<div id="cMain">
				<div id="mArticle">
					<h2 id="kakaoBody" class="screen_out">홈 본문</h2>

					<div class="main_cont">
						<div class="main_visual"
							style="min-height: 602px; max-height: 842px;">
							<h3 class="screen_out">메인 비주얼</h3>
							<div id="mainSlide" class="kSlide wrap_slide main_slide"></div>
							<input type="hidden" name="langtypeval" id="langtypeval"
								value="ko" />
							<ul id="bannerData">
								<li><input type="hidden" name="bannerContent"
									class="inp_txt"
									value="일상에 필요한 모든 것들을 연결해주는  <br> 당신과 가장 가까운 인공지능을 만나보세요." />
									<input type="hidden" name="bannerImage" class="inp_txt"
									value="static/img/logoMain.png" />
									<input type="hidden" name="bannerLink" class="inp_txt"
									value="/kakao/ai" /> <input type="hidden" name="bannerType"
									class="inp_txt" value="white" /> <input type="hidden"
									name="bannerMoreOpts" class="inp_txt" value="0" /> <input
									type="hidden" name="bannerButtonClassCode" class="inp_txt"
									value="btn1" /></li>
								<li><input type="hidden" name="bannerContent"
									class="inp_txt"
									value="카카오는 새로운 연결을 통해 <br> 더 편리하고 즐거운 세상을 꿈꿉니다." /> <input
									type="hidden" name="bannerImage" class="inp_txt"
									value="https://t1.kakaocdn.net/kakaocorp/admin/main-banner/1657" />
									<input type="hidden" name="bannerLink" class="inp_txt"
									value="/kakao/introduce/vision" /> <input type="hidden"
									name="bannerType" class="inp_txt" value="black" /> <input
									type="hidden" name="bannerMoreOpts" class="inp_txt" value="0" />
									<input type="hidden" name="bannerButtonClassCode"
									class="inp_txt" value="btn2" /></li>
								<li><input type="hidden" name="bannerContent"
									class="inp_txt"
									value="끊임없이 이동하는 우리의 삶 속 카카오는 어떤 모습일까요? <br> 이동에 대한 카카오의 모든 이야기들을 담았습니다." />
									<input type="hidden" name="bannerImage" class="inp_txt"
									value="https://t1.kakaocdn.net/kakaocorp/operating/co/main-banner/2928.png" />
									<input type="hidden" name="bannerLink" class="inp_txt"
									value="https://brunch.co.kr/magazine/moveandkakao" /> <input
									type="hidden" name="bannerType" class="inp_txt" value="white" />
									<input type="hidden" name="bannerMoreOpts" class="inp_txt"
									value="1" /> <input type="hidden" name="bannerButtonClassCode"
									class="inp_txt" value="btn1" /></li>
								<li><input type="hidden" name="bannerContent"
									class="inp_txt"
									value="카카오로 연결된 수많은 파트너들과,  <br> 그들과 함께 더 나은 세상을 만들어나가고자 하는 <br> 카카오의 진심을 전합니다." />
									<input type="hidden" name="bannerImage" class="inp_txt"
									value="https://t1.kakaocdn.net/kakaocorp/operating/co/main-banner/3189.png" />
									<input type="hidden" name="bannerLink" class="inp_txt"
									value="https://brunch.co.kr/@partnerswkakao" /> <input
									type="hidden" name="bannerType" class="inp_txt" value="black" />
									<input type="hidden" name="bannerMoreOpts" class="inp_txt"
									value="1" /> <input type="hidden" name="bannerButtonClassCode"
									class="inp_txt" value="btn2" /></li>
							</ul>
						</div>
						<div class="main_summary">
							<div class="summary_info">
								<h3 class="tit_main">PRESS RELEASE</h3>
								<a href="/kakao/prChannel/pressReleasesView?boardIdx=10146"
									class="link_newsfeed"> <strong class="tit_newsfeed">카카오,
										뉴스 댓글 개편 이후 악성 댓글 줄었다<!-- 참가 학교 모집 -->
								</strong>
									<p class="desc_newsfeed">- 이용자 신고 및 제재로 ‘삭제’ 조치된 댓글수 65%까지
										증가, 댓글 환경 클린해져- 욕설 및 비속어를 포함한 댓글도 개편 이전 대비 20% 이상 감소- 신설기능 ‘댓글
										덮어두기’-‘댓글 영역 덮...</p>
								</a>
							</div>
							<div class="summary_info">
								<h3 class="tit_main">STOCK</h3>
								<div class="main_stock">
									<!-- 상승일때 stock_up, 하락일때 stock_down 클래스 추가 (등락율없을때 클래스없음) -->
									<div class="now_stock">
										<strong class="screen_out">실시간 주식 현재가</strong> <span
											class="num_stock"> 263,500<span class="screen_out">원</span>
										</span> <span class="ico_corp">변동없음</span>
									</div>
									<div class="desc_stock">
										<span class="screen_out">전일대비</span><span class="num_stock">0<span
											class="screen_out">원</span></span>
									</div>
									<span class="txt_date">2020-06-20 08:21:35</span>
								</div>
							</div>
							<div class="summary_info">
								<h3 class="tit_main">PRIVACY POLICY</h3>
								<a href="https://privacy.kakao.com/main?lang=ko" target="_blank"
									class="link_newsfeed"> <strong class="tit_newsfeed">카카오는
										데이터의 연결과 보호의 균형을 위해<br>언제나 최선을 다 하겠습니다.
								</strong>
								</a>
							</div>
						</div>
						<div class="main_service">
							<div class="service_info">
								<a href="https://www.kakaocorp.com/service/KakaoTalk"
									class="link_newsfeed"} >
									<h3 class="tit_black">커뮤니케이션</h3> <img
									src="static/img/KakaoTalkMain.png" class="img_thumb" alt="" style="height: 22em;">
									<strong class="tit_newsfeed">언제 어디서나 무료로 간편하게! 사람과 세상,
										그 이상을 연결하는 카카오톡</strong>
									<p class="desc_newsfeed">채팅은 물론 일정 관리, 송금, #검색 등 다양한 기능을
										제공하는 카카오톡은 우리의 생활을 보다 편리하게 만들어 주고 있습니다. 카카오톡을 통해 세상의 정보와 즐길거리에
										보다 가까이 ...</p>
								</a>
							</div>
							<div class="service_info">
								<a href="https://tech.kakao.com" class="link_newsfeed"
									target="_blank"} >
									<h3 class="tit_white">모빌리티&라이프</h3> <img
									src="static/img/KakaoMapMain.png"
									class="img_thumb" alt="" style="height: 22em;"> <strong class="tit_newsfeed">
										새로워진 kakao Map을 소개합니다.</strong>
									<p class="desc_newsfeed">기술 행사와 오픈소스, 후원, 채용 등 카카오의 기술 관련
										종합적인 정보를 제공할 수 있도록 개편했습니다....</p>
								</a>
							</div>
							<div class="service_info">
								<a href="http://blog.kakaocorp.co.kr/679" class="link_newsfeed"
									target="_blank"} >
									<h3 class="tit_black">카카오게임즈</h3> <img
									src="static/img/KakaoGameMain.png"
									class="img_thumb" alt=""> <strong class="tit_newsfeed">세계
										행복의 날 기념, 같이가치 ‘안녕하세요’ 캠페인을 소개합니다!</strong>
									<p class="desc_newsfeed">'세계 행복의 날'이라는 기념일을 들어보신 적 있나요?
										2012년 국제연합(UN)이 모든 사람들이 행복하게 살 수 있도록 전 세계가 함께 노력하자는 취지로 매년 3월
										20일을 '세계 ...</p>
								</a>
							</div>
						</div>
					</div>
				</div>
				<!--// mArticle -->
			</div>
			<!-- // cMain -->
		</div>
		<!-- 섹션끝 -->

		<!-- 푸터시작 -->
		<footer id="kakaoFoot" class="foot_kakao" role="contentinfo"
			aria-hidden="true">
			<div class="wrap_copyright">
				<h2 class="screen_out">서비스 이용정보</h2>
				<div class="inner_copyright">
					<div class="info_copyright">
						<div class="info_svc">
							<!-- 2019-03-25 메뉴명 변경 시작 -->
							<a href="#none" class="dlnk_info" aria-haspopup="true"
								aria-expanded="false">이용약관<span class="ico_corp ico_arr"></span></a>
							<ul class="list_relation dummy" style="display: none">

								<li><a
									href="https://www.kakao.com/policy/terms?type=a&lang=ko"
									target="_blank" class="link_relation">카카오계정 서비스<span
										class="ico_corp ico_direct"></span></a></li>
								<li><a
									href="https://www.kakao.com/policy/terms?type=ts&lang=ko"
									target="_blank" class="link_relation">카카오 서비스<span
										class="ico_corp ico_direct"></span></a></li>
								<li><a href="http://policy.daum.net/info/info"
									target="_blank" class="link_relation">Daum 서비스<span
										class="ico_corp ico_direct"></span></a></li>
								<li><a
									href="https://info.melon.com/terms/web/terms1_1.html"
									target="_blank" class="link_relation">Melon 서비스<span
										class="ico_corp ico_direct"></span></a></li>
							</ul>
						</div>
						<div class="info_svc">
							<a href="#none" class="dlnk_info" aria-haspopup="true"
								aria-expanded="false">위치기반서비스이용약관<span
								class="ico_corp ico_arr"></span></a>
							<ul class="list_relation dummy" style="display: none">
								<li><a href="https://www.kakao.com/policy/location?lang=ko"
									target="_blank" class="link_relation">카카오 서비스<span
										class="ico_corp ico_direct"></span></a></li>
								<li><a
									href="http://policy.daum.net/mobile_info/mobile_info"
									target="_blank" class="link_relation">Daum 서비스<span
										class="ico_corp ico_direct"></span></a></li>
								<li><a
									href="https://info.melon.com/terms/web/terms1_3.html?termsType=&SOURCE="
									target="_blank" class="link_relation">Melon 서비스<span
										class="ico_corp ico_direct"></span></a></li>
							</ul>
						</div>
						<div class="info_svc">
							<a href="#none" class="dlnk_info" aria-haspopup="true"
								aria-expanded="false"><strong class="dlnk_txt">개인정보처리방침</strong><span
								class="ico_corp ico_arr"></span></a>
							<ul class="list_relation dummy" style="display: none">
								<li><a
									href="/policy/privacyPolicy/corporateSitePrivacyPolicy"
									class="link_relation">기업사이트</a></li>
								<li><a href="https://www.kakao.com/policy/privacy?lang=ko"
									target="_blank" class="link_relation">카카오 서비스<span
										class="ico_corp ico_direct"></span></a></li>
								<li><a
									href="http://policy.daum.net/info_protection/info_protection"
									target="_blank" class="link_relation">Daum 서비스<span
										class="ico_corp ico_direct"></span></a></li>
								<li><a
									href="https://info.melon.com/terms/web/terms3.html?termsType=&SOURCE="
									target="_blank" class="link_relation">Melon 서비스<span
										class="ico_corp ico_direct"></span></a></li>
							</ul>
						</div>
						<div class="info_svc">
							<a href="https://www.kakao.com/policy/oppolicy?lang=ko"
								class="dlnk_info" target="_blank">운영정책</a>
						</div>
						<div class="info_svc">
							<a href="#none" class="dlnk_info" aria-haspopup="true"
								aria-expanded="false">청소년보호정책<span class="ico_corp ico_arr"></span></a>
							<ul class="list_relation dummy" style="display: none">
								<li><a
									href="https://www.kakao.com/policy/safeguard?lang=ko"
									target="_blank" class="link_relation">카카오 서비스<span
										class="ico_corp ico_direct"></span></a></li>
								<li><a
									href="http://policy.daum.net/youthpolicy/youthpolicy"
									target="_blank" class="link_relation">Daum 서비스<span
										class="ico_corp ico_direct"></span></a></li>
								<li><a
									href="https://info.melon.com/terms/web/terms5_1.html?termsType=&SOURCE="
									target="_blank" class="link_relation">Melon 서비스<span
										class="ico_corp ico_direct"></span></a></li>
							</ul>
						</div>
						<div class="info_svc">
							<a href="https://www.kakao.com/policy/right?lang=ko"
								target="_blank" class="dlnk_info">권리침해신고안내</a>
						</div>
						<div class="info_svc">
							<a href="#none" class="dlnk_info" aria-haspopup="true"
								aria-expanded="false">공지사항<span class="ico_corp ico_arr"></span>
							</a>
							<ul class="list_relation dummy" style="display: none">
								<li><a href="/policy/notice/kakaocorp/list"
									class="link_relation">기업사이트</a></li>
								<li><a href="https://www.kakao.com/notices?lang=ko"
									target="_blank" class="link_relation">카카오 서비스<span
										class="ico_corp ico_direct"></span></a></li>
								<li><a href="https://m.daum.net/channel/new/notice"
									target="_blank" class="link_relation">Daum 서비스<span
										class="ico_corp ico_direct"></span></a></li>

								<li><a
									href="https://www.melon.com/customer/announce/index.htm"
									target="_blank" class="link_relation">Melon 서비스<span
										class="ico_corp ico_direct"></span></a></li>
							</ul>
						</div>
						<div class="info_svc">
							<a href="/policy/cyberEthics/info" class="dlnk_info">사이버윤리실</a>
						</div>
						<small class="txt_copyright">Copyright &copy; <a
							href="https://www.kakaocorp.com/main" class="link_kakao">Kakao
								Corp.</a> All rights reserved.
						</small>
					</div>
					<div class="relation_svc">
						<strong class="tit_relation"><a href="#none"
							class="link_tit" aria-haspopup="true" aria-expanded="false">관련사이트<span
								class="ico_corp ico_arr"></span></a></strong>
						<ul class="list_relation">
							<li><a href="https://kakao.ai/" target="_blank"
								class="link_relation">카카오 AI</a></li>
							<li><a href="https://privacy.kakao.com/main?lang=ko"
								target="_blank" class="link_relation">카카오 프라이버시</a></li>
							<li><a href="https://developers.kakao.com/" target="_blank"
								class="link_relation">카카오 디벨로퍼스</a></li>
							<li><a href="https://www.daum.net/" target="_blank"
								class="link_relation">다음 포털 사이트</a></li>
							<li><a href="https://winwin.kakao.com/index" target="_blank"
								class="link_relation">동반성장 사이트</a></li>
							<li><a href="https://jeju.kakao.com/" target="_blank"
								class="link_relation">제주 with kakao</a></li>
						</ul>
					</div>
				</div>
			</div>
		</footer>
		<!-- 푸터끝 -->
</body>
</html>