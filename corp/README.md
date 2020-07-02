#기업사이트 만들기 프로젝트



###오라클 사용자 생성

```sql
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;  
CREATE USER Corp IDENTIFIED BY bitc5600;

GRANT CREATE SESSION TO Corp;
GRANT CREATE TABLESPACE TO Corp;
GRANT CREATE TABLE TO Corp;
GRANT CREATE SEQUENCE TO Corp;
GRANT CREATE VIEW TO Corp;
GRANT CREATE SYNONYM TO Corp;

GRANT RESOURCE, CONNECT, UNLIMITED TABLESPACE TO Corp;
GRANT DBA TO Corp;
ALTER USER Corp DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;
```

###테이블 및 시퀀스 삭제

```sql
DROP TABLE USERS;
DROP TABLE VOCBOARD;
DROP TABLE VOCREPLY;
DROP TABLE CORPINTRO;
DROP TABLE CORPSERVICETITLE;
DROP TABLE CORPSERVICECONTENT;

DROP SEQUENCE USERS_SEQ;
DROP SEQUENCE VOCBOARD_SEQ;
DROP SEQUENCE VOCREPLY_SEQ;
DROP SEQUENCE CORPINTRO_SEQ;
DROP SEQUENCE SERVICETITLE_SEQ;
DROP SEQUENCE SERVICECONTENT_SEQ;
```


###테이블 생성

```sql
CREATE TABLE USERS(
	ID NUMBER PRIMARY KEY,
    USERNAME VARCHAR2(100) NOT NULL UNIQUE,
    PASSWORD VARCHAR2(100) NOT NULL,c
    CARRIER VARCHAR2(20) NOT NULL,
    PHONENUMBER VARCHAR2(100) NOT NULL,
    EMAIL VARCHAR2(100) NOT NULL,
    ADDRESS VARCHAR2(100),
    USERPROFILE VARCHAR2(200),
    USERBIRTH TIMESTAMP,
    USERROLE VARCHAR2(20),
    CREATEDATE TIMESTAMP
);

CREATE TABLE CORPINTRO(

    TITLE VARCHAR2(200),
    IMG VARCHAR2(300),
    CONTENTTITLE VARCHAR2(100),
    CONTENT CLOB
    
);

CREATE TABLE VOCBOARD(
	ID NUMBER PRIMARY KEY,
    USERID NUMBER,
    TITLE VARCHAR2(300) NOT NULL,
    CONTENT CLOB,
    READCOUNT NUMBER DEFAULT 0,
    CREATEDATE TIMESTAMP,
    FOREIGN KEY (USERID) REFERENCES USERS (ID)
);

CREATE TABLE VOCREPLY(
	ID NUMBER PRIMARY KEY,
    USERID NUMBER,
    BOARDID NUMBER,
    CONTENT VARCHAR2(300) NOT NULL,
    CREATEDATE TIMESTAMP,
    FOREIGN KEY (USERID) REFERENCES USERS (ID) ON DELETE SET NULL,
    FOREIGN KEY (BOARDID) REFERENCES VOCBOARD (ID) ON DELETE CASCADE
);

CREATE TABLE CORPSERVICECONTENT(
    ID NUMBER PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL,
    TEXT VARCHAR(100) NOT NULL,
    CATEGORY VARCHAR(50) NOT NULL,
    IMG VARCHAR2(100)
);

CREATE TABLE CORPSERVICETITLE(
	IMG VARCHAR2(300),
    TITLE VARCHAR(200) NOT NULL,
    CONTENT CLOB
);

CREATE TABLE CORPSOCIAL(
	TITLE VARCHAR(100) NOT NULL,
	IMG VARCHAR(300),
	CONTENT CLOB,
	TYPE VARCHAR(50)
);

CREATE TABLE HOMETEXT(
    ID NUMBER PRIMARY KEY,
    TITLE VARCHAR2(300),
    CONTENT CLOB,
    IMG VARCHAR2(300)
);
```



###시퀀스 생성

```sql
CREATE SEQUENCE USERS_SEQ
START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE VOCBOARD_SEQ
START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE VOCREPLY_SEQ
START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE SERVICETITLE_SEQ
START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE SERVICECONTENT_SEQ
START WITH 1 INCREMENT BY 1;
```



###더미데이터

```sql
DAUM	검색 포털 서비스,DAUM	포털	https://t1.kakaocdn.net/kakaocorp/admin/main-banner/114
DAUM 뉴스	세상을 가장 빠르게 만나는 공간, 다음뉴스	포털	https://t1.kakaocdn.net/kakaocorp/admin/main-banner/118
DAUM 검색	세상의 모든 정보를 연결하는,DAUM 검색	포털	https://t1.kakaocdn.net/kakaocorp/operating/se/service-info/icon/2934.png
카카오톡	사람과 세상,그 이상을 연결하는 카카오톡	커뮤니케이션	https://t1.kakaocdn.net/kakaocorp/admin/main-banner/123
카카오스토리	나의 이야기가 빛나는 공간, 카카오스토리	커뮤니케이션	https://t1.kakaocdn.net/kakaocorp/admin/main-banner/136
카카오톡치즈	친구와 함께 노는 카톡 카메라, 카카오톡 치즈	커뮤니케이션	https://t1.kakaocdn.net/kakaocorp/admin/main-banner/181
daum메일	내 하루의 시작, DAUM 메일	커뮤니케이션	https://t1.kakaocdn.net/kakaocorp/operating/se/service-info/icon/2306.png
daum 카페	모든 이야기의 시작, DAUM 카페	커뮤니케이션	https://t1.kakaocdn.net/kakaocorp/admin/se/service-info/icon/4033.png
아지트	팀의 오픈 커뮤니케이션을 위한 카카오의 협업툴, 아지트	커뮤니케이션	https://t1.kakaocdn.net/kakaocorp/operating/se/service-info/icon/2444.png
티스토리	나를 표현하는 블로그, 티스토리	커뮤니케이션	https://t1.kakaocdn.net/kakaocorp/operating/se/service-info/icon/3693.png
브런치	글이 작품이 되는 공간, 브런치	커뮤니케이션	https://t1.kakaocdn.net/kakaocorp/admin/main-banner/161
멜론 아지톡	우리 모두는 누군가의 팬이다, 멜론 아지톡	커뮤니케이션	https://t1.kakaocdn.net/kakaocorp/admin/se/service-info/icon/4355.png
카카오메일	카카오톡의 편리함을 더한 메일, 카카오메일	커뮤니케이션	https://t1.kakaocdn.net/kakaocorp/admin/se/service-info/icon/4476.png
카카오페이지	이야기를 보는 완전 새로운 방식, 카카오페이지	콘텐츠	https://t1.kakaocdn.net/kakaocorp/admin/main-banner/165
카카오TV	카톡에서 친구하고, 카톡에서 바로보는, 카카오 TV	콘텐츠	https://t1.kakaocdn.net/kakaocorp/admin/main-banner/173
카카오뮤직	친구와 함께 듣는 음악, 카카오 뮤직	콘텐츠	https://t1.kakaocdn.net/kakaocorp/admin/main-banner/171
카카오프렌즈	일상 속 즐거움, 카카오프렌즈!	콘텐츠	https://t1.kakaocdn.net/kakaocorp/admin/main-banner/177
daum웹툰	꿈이 현실이 되는 크리에이터들의 집합소,DAUM웹툰	콘텐츠	https://t1.kakaocdn.net/kakaocorp/operating/se/service-info/icon/2957.png
1bonn	당신의 1분을 더 재미있게, 1BOON	콘텐츠	https://t1.kakaocdn.net/kakaocorp/admin/se/service-info/icon/4263.png
멜론	음악이 필요한 순간, 멜론	콘텐츠	https://t1.kakaocdn.net/kakaocorp/admin/se/service-info/icon/4353.png
멜론티켓	듣다 보다 만나다, 멜론티켓	콘텐츠	https://t1.kakaocdn.net/kakaocorp/admin/se/service-info/icon/4383.png
카카오톡 선물하기	쉽게 마음을 전하는 방법, 카카오톡 선물하기	커머스	https://t1.kakaocdn.net/kakaocorp/admin/se/service-info/icon/4514.png
카카오스타일	내일은 또 뭐입지? 카카오스타일	커머스	https://t1.kakaocdn.net/kakaocorp/admin/main-banner/207
카카오톡 쇼핑하기	쇼핑을 톡하다, 카카오톡 쇼핑하기	커머스	https://t1.kakaocdn.net/kakaocorp/operating/se/service-info/icon/3660.icon_shopping
쇼핑하우	쉽고 빠른 쇼핑, 스마트한 가격비교, 쇼핑하우	커머스	https://t1.kakaocdn.net/kakaocorp/admin/se/service-info/icon/4166.png
카카오게임즈	함께해요! 카카오게임즈	게임	https://t1.kakaocdn.net/kakaocorp/admin/se/service-info/icon/4145.png
카카오페이	마음 놓고 금융하다 카카오페이	핀테크	https://t1.kakaocdn.net/kakaocorp/admin/main-banner/223
카카오 T	모두의 이동을 위한 카카오 T	모빌리티_라이프	https://t1.kakaocdn.net/kakaocorp/operating/se/service-info/icon/2913.png
카카오 T대리	빠르고 안전한 귀가를 책임지는, 카카오 T대리	모빌리티_라이프	https://t1.kakaocdn.net/kakaocorp/admin/main-banner/232
카카오내비	내비게이션의 새로운 진화, 카카오내비	모빌리티_라이프	https://t1.kakaocdn.net/kakaocorp/admin/main-banner/236
카카오맵	언제 어디서나 믿고쓰는, 카카오맵	모빌리티_라이프	https://t1.kakaocdn.net/kakaocorp/admin/main-banner/240
카카오버스	전국 어디서나 기다리지말고, 카카오버스	모빌리티_라이프	https://t1.kakaocdn.net/kakaocorp/admin/main-banner/244
카카오지하철	지하철타는 똑똑한 습관, 카카오 지하철	모빌리티_라이프	https://t1.kakaocdn.net/kakaocorp/admin/main-banner/248
카카오헤어샵	내주변 머리잘하는 미용실 예약, 카카오 헤어샵	모빌리티_라이프	https://t1.kakaocdn.net/kakaocorp/admin/main-banner/252
카카오같아가치	카카오의 사회공헌 플랫폼 카카오같이가치	소셜임팩트	https://t1.kakaocdn.net/kakaocorp/admin/main-banner/260
```

