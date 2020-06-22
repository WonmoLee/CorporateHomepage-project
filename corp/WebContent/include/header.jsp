<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<link rel="stylesheet" type="text/css" href="css/main1.css">


<header id="kakaoHead" class="head_type3" style="top: 0px;"
	aria-hidden="true">
	<!--head 동작 관련 클래스 추가 : head_type1(메인 black 타입), head_type3(메인 white 타입), head_type2(메인 제외 전부 기본)-->
	<div class="wrap_head">
		<div class="box_gnb" style="display: block;">
			<!--메뉴 에니메이션을 위해 class="box_gnb" 추가-->
			<h1 class="tit_logo">
				<a href="/corp/home?cmd=main" id="kakaoServiceLogo"
					class="link_kakao"> <span class="tit_service">kakao</span>
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
									<a href="/kakao/introduce/kakaoCulture" class="link_sub"> <span
										class="txt_g">카카오 문화</span>
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
					<li><a href="/ir/managementInformation/shareholderComposition"
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
								</a> <a href="/ir/financialInformation/separateFinancialStatements"
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
								</a> <a href="/ir/calendar/scheduleMeeting" class="link_sub"> <span
										class="txt_g">IR 미팅예약</span>
								</a></li>
								<li><strong class="tit_sub"> <a
										href="/ir/referenceRoom/earningsAnnouncement" class="link_sub"
										role="menuitem"> <span class="txt_g">IR 자료실</span>
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
					<li><a href="/service" class="link_gnb" aria-haspopup="false"
						aria-expanded="false"> 서비스<span class="line"></span>
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
								</strong> <a href="/socialImpact/withKakao/socialImpactService/Together"
									class="link_sub"> <span class="txt_g">카카오같이가치</span>
								</a> <a
									href="/socialImpact/withKakao/socialImpactService/kakaoMakers"
									class="link_sub"> <span class="txt_g">카카오메이커스</span>
								</a></li>
								<li><strong class="tit_sub"> <a
										href="/socialImpact/withKakao" class="link_sub"
										role="menuitem"> <span class="txt_g">사회공헌</span>
									</a>
								</strong> <a href="/socialImpact/withKakao/next" class="link_sub"> <span
										class="txt_g">Next</span>
								</a> <a href="/socialImpact/withKakao/connect" class="link_sub">
										<span class="txt_g">Connect</span>
								</a> <a href="/socialImpact/withKakao/krew" class="link_sub"> <span
										class="txt_g">Kakao Krew</span>
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
										href="/socialImpact/withJeju" class="link_sub" role="menuitem">
											<span class="txt_g">제주지역협력</span>
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
										role="menuitem"> <span class="txt_g">Partners with
												Kakao</span>
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