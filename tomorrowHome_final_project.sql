--create user tomorrow identified by house;
--grant connect, RESOURCE, dba to tomorrow;
--alter user tomorrow quota 2m on users;
--alter user tomorrow default tablespace users;

--drop table images_hastag CASCADE CONSTRAINTS ;
--drop table hastag CASCADE CONSTRAINTS ;
--drop table feed CASCADE CONSTRAINTS ;
--drop table relpy CASCADE CONSTRAINTS ;
--drop table coupon_product CASCADE CONSTRAINTS ;
--drop table scrapbook CASCADE CONSTRAINTS ;
--drop table coupon_member CASCADE CONSTRAINTS ;
--drop table point CASCADE CONSTRAINTS ;
--drop table like_member CASCADE CONSTRAINTS ;
--drop table store_order CASCADE CONSTRAINTS ;
--drop table shopping_cart CASCADE CONSTRAINTS ;
--drop table catagory CASCADE CONSTRAINTS ;
--drop table coupon CASCADE CONSTRAINTS ;
--drop table goods_category CASCADE CONSTRAINTS ;
--drop table member CASCADE CONSTRAINTS ;
--drop table product CASCADE CONSTRAINTS ;
--drop table board CASCADE CONSTRAINTS ;
--drop table main_category_images CASCADE CONSTRAINTS ;
--drop table adress_book CASCADE CONSTRAINTS ;
--drop table detail_images CASCADE CONSTRAINTS ;
--drop table guest_shopping_cart CASCADE CONSTRAINTS ;
--
--drop SEQUENCE goods_category_id_seq;
--drop SEQUENCE image_id_seq;
--drop SEQUENCE goods_id_seq;
--drop SEQUENCE order_id_seq;
--drop SEQUENCE member_id_seq;
--drop SEQUENCE coupon_id_seq;
--drop SEQUENCE point_id_seq;
--drop SEQUENCE images_id_seq;
--drop SEQUENCE board_id_seq;
--drop SEQUENCE category_id_seq;
--drop SEQUENCE hastag_id_seq;
--drop SEQUENCE reply_id_seq;
--drop SEQUENCE main_category_id_seq;
--drop SEQUENCE adress_book_seq;
--drop SEQUENCE store_order_seq;
--drop SEQUENCE guest_shopping_cart_seq;
--drop SEQUENCE shopping_cart_seq;

create SEQUENCE goods_category_id_seq;
create SEQUENCE image_id_seq;
create SEQUENCE goods_id_seq;
create SEQUENCE order_id_seq;
create SEQUENCE member_id_seq;
create SEQUENCE coupon_id_seq;
create SEQUENCE point_id_seq;
create SEQUENCE images_id_seq;
create SEQUENCE board_id_seq;
create SEQUENCE category_id_seq;
create SEQUENCE hastag_id_seq;
create SEQUENCE reply_id_seq;
create SEQUENCE main_category_id_seq;
create SEQUENCE adress_book_seq;
create SEQUENCE store_order_seq;
create SEQUENCE guest_shopping_cart_seq;
create SEQUENCE shopping_cart_seq;

/* 게시판 */
CREATE TABLE board (
	board_id NUMBER NOT NULL, /* 게시판 id */
	state CHAR(1), /* 저장상태 */
	title VARCHAR2(200), /* 제목 */
	description VARCHAR2(1500), /* 설명/내용 */
	housing_type VARCHAR2(200), /* 주거형태 */
	acreage VARCHAR2(200), /* 평수 */
	interior_style VARCHAR2(200), /* 스타일 */
	space VARCHAR2(200), /* 공간 */
	regist_date DATE DEFAULT sysdate, /* 글 작성한 날짜 */
	read_count INT, /* 조회수 */
	board_thumbnail VARCHAR2(100), /* 게시판 섬네일 */
	category_id INT, /* 카테고리ID */
	member_id NUMBER, /* 회원번호 */
	coupon_id NUMBER /* 쿠폰아이디 */
);

ALTER TABLE board
	ADD
		CONSTRAINT PK_board
		PRIMARY KEY (
			board_id
		);

/* 사진파일 */
CREATE TABLE detail_images (
	images_id NUMBER NOT NULL, /* 사진id */
	image_file_name VARCHAR2(200), /* 사진이름 */
	board_id NUMBER, /* 게시판 id */
	goods_id NUMBER /* 상품 번호 */
);

ALTER TABLE detail_images
	ADD
		CONSTRAINT PK_detail_images
		PRIMARY KEY (
			images_id
		);

/* 사진-해시태그 */
CREATE TABLE images_hastag (
	images_id NUMBER NOT NULL, /* 사진id */
	hastag_id NUMBER NOT NULL /* 해시태그_id */
);

ALTER TABLE images_hastag
	ADD
		CONSTRAINT PK_images_hastag
		PRIMARY KEY (
			images_id,
			hastag_id
		);

/* 해시태그 */
CREATE TABLE hastag (
	hastag_id NUMBER NOT NULL, /* 해시태그_id */
	hastag VARCHAR2(100) /* 해시태그 */
);

ALTER TABLE hastag
	ADD
		CONSTRAINT PK_hastag
		PRIMARY KEY (
			hastag_id
		);

/* 피드_팔로잉 */
CREATE TABLE feed (
	member_id_follwer NUMBER NOT NULL, /* 팔로워 */
	member_id_follwing NUMBER NOT NULL /* 팔로잉 */
);

ALTER TABLE feed
	ADD
		CONSTRAINT PK_feed
		PRIMARY KEY (
			member_id_follwer,
			member_id_follwing
		);

/* 댓글 */
CREATE TABLE relpy (
	reply_id NUMBER NOT NULL, /* 댓글_id */
	content VARCHAR2(800), /* 댓글 내용 */
	reg_date DATE DEFAULT sysdate, /* 작성날짜 */
	board_id NUMBER, /* 게시판 id */
	member_id NUMBER, /* 회원번호 */
	coupon_id NUMBER /* 쿠폰아이디 */
);

ALTER TABLE relpy
	ADD
		CONSTRAINT PK_relpy
		PRIMARY KEY (
			reply_id
		);

/* 글카테고리 */
CREATE TABLE catagory (
	category_id INT NOT NULL, /* 카테고리ID */
	category_name VARCHAR(30) /* 카테고리명 */
);

ALTER TABLE catagory
	ADD
		CONSTRAINT PK_catagory
		PRIMARY KEY (
			category_id
		);

/* 쿠폰 */
CREATE TABLE coupon (
	coupon_id NUMBER NOT NULL, /* 쿠폰아이디 */
	coupon_name VARCHAR2(200), /* 쿠폰이름 */
	coupon_percent NUMBER, /* 쿠폰할인율 */
	maximum_price NUMBER, /* 최대할인금액 */
	end_date DATE /* 종료날짜 */
);

ALTER TABLE coupon
	ADD
		CONSTRAINT PK_coupon
		PRIMARY KEY (
			coupon_id
		);

/* 쿠폰상품 */
CREATE TABLE coupon_product (
	goods_id NUMBER NOT NULL, /* 상품 번호 */
	coupon_id NUMBER NOT NULL /* 쿠폰아이디 */
);

ALTER TABLE coupon_product
	ADD
		CONSTRAINT PK_coupon_product
		PRIMARY KEY (
			goods_id,
			coupon_id
		);

/* 스크랩북 */
CREATE TABLE scrapbook (
	board_id NUMBER NOT NULL, /* 게시판 id */
	member_id NUMBER NOT NULL /* 회원번호 */
);

ALTER TABLE scrapbook
	ADD
		CONSTRAINT PK_scrapbook
		PRIMARY KEY (
			board_id,
			member_id
		);

/* 쿠폰회원 */
CREATE TABLE coupon_member (
	member_id NUMBER NOT NULL, /* 회원번호 */
	coupon_id NUMBER NOT NULL /* 쿠폰아이디 */
);

ALTER TABLE coupon_member
	ADD
		CONSTRAINT PK_coupon_member
		PRIMARY KEY (
			member_id,
			coupon_id
		);

/* 회원 */
CREATE TABLE member (
	member_id NUMBER NOT NULL, /* 회원번호 */
	email1 VARCHAR2(50) NOT NULL, /* 이메일1 */
	email2 VARCHAR2(50), /* 이메일2 */
	password VARCHAR2(2000) NOT NULL, /* 비밀번호 */
	nickname VARCHAR2(50), /* 닉네임 */
	homepage VARCHAR2(100), /* 홈페이지 */
	birthday DATE, /* 생일 */
	profile_image VARCHAR2(200), /* 프로필사진 */
	line_introduction VARCHAR2(200) /* 한줄소개 */
);

ALTER TABLE member
	ADD
		CONSTRAINT PK_member
		PRIMARY KEY (
			member_id
		);

/* 포인트 */
CREATE TABLE point (
	point_id NUMBER NOT NULL, /* 포인트아이디 */
	member_id NUMBER, /* 회원번호 */
	point NUMBER, /* 포인트 */
	use_date DATE /* 사용가능날짜 */
);

ALTER TABLE point
	ADD
		CONSTRAINT PK_point
		PRIMARY KEY (
			point_id
		);

/* 좋아요 */
CREATE TABLE like_member (
	member_id NUMBER NOT NULL, /* 회원번호 */
	board_id NUMBER NOT NULL /* 게시판 id */
);

ALTER TABLE like_member
	ADD
		CONSTRAINT PK_like_member
		PRIMARY KEY (
			member_id,
			board_id
		);

/* 상품 */
CREATE TABLE product (
	goods_id NUMBER NOT NULL, /* 상품 번호 */
	goods_name VARCHAR2(300), /* 상품 이름 */
	goods_brand VARCHAR2(100), /* 상품 브랜드 */
	goods_price NUMBER, /* 상품 가격(원가) */
	discount_rate NUMBER, /* 상품 할인율 */
	point_rate NUMBER, /* 포인트 적립율 */
	regist_goods_date DATE DEFAULT sysdate, /* 등록 날짜 */
	product_thumbnail  VARCHAR2(50), /* 상품 섬네일 */
	goods_status VARCHAR2(100), /* 스토어 분류 */
	read_count INT, /* 조회수 */
	goods_category_id INT /* 카테고리ID */
);

ALTER TABLE product
	ADD
		CONSTRAINT PK_product
		PRIMARY KEY (
			goods_id
		);

/* 구매내역 */
CREATE TABLE store_order (
	order_id NUMBER NOT NULL, /* 주문번호 */
	member_id NUMBER, /* 회원번호 */
	goods_id NUMBER, /* 상품 번호 */
	order_name VARCHAR2(50), /* 주문자 이름 */
	order_count NUMBER, /* 주문수량 */
	goods_sales_price NUMBER, /* 결제 가격 */
	delivery_type VARCHAR2(10), /* 배송 타입 */
	delivery_message VARCHAR2(100), /* 배송 요청 사항 */
	delivery_state NUMBER, /* 배송 상태 */
	pay_type VARCHAR2(50), /* 결제 종류 */
	pay_order_time DATE /* 결제시간 */
);

ALTER TABLE store_order
	ADD
		CONSTRAINT PK_store_order
		PRIMARY KEY (
			order_id
		);

/* 장바구니 */
CREATE TABLE shopping_cart (
	cart_id NUMBER NOT NULL, /* 장바구니 번호 */
	cart_goods_qty NUMBER, /* 담은 수량 */
	goods_id NUMBER, /* 상품 번호 */
	member_id NUMBER /* 회원번호 */
);

ALTER TABLE shopping_cart
	ADD
		CONSTRAINT PK_shopping_cart
		PRIMARY KEY (
			cart_id
		);

/* 제품 카테고리 */
CREATE TABLE goods_category (
	goods_category_id INT NOT NULL, /* 카테고리ID */
	category_name VARCHAR2(100) NOT NULL, /* 상품_카테고리명 */
	high_level INT /* 상위카테고리ID */
);

ALTER TABLE goods_category
	ADD
		CONSTRAINT PK_goods_category
		PRIMARY KEY (
			goods_category_id
		);

/* 메인화면카테고리사진 */
CREATE TABLE main_category_images (
	category_id INT NOT NULL, /* 카테고리ID */
	category_image VARCHAR2(200), /* 카테고리 이미지 */
	category_title VARCHAR2(50) /* 카테고리 타이틀 */
);

ALTER TABLE main_category_images
	ADD
		CONSTRAINT PK_main_category_images
		PRIMARY KEY (
			category_id
		);

/* 배송주소록 */
CREATE TABLE adress_book (
	adress_book_id NUMBER NOT NULL, /* 주소록번호 */
	member_id NUMBER, /* 회원번호 */
	adress_type VARCHAR2(20), /* 기본배송지여부 */
	adress_name VARCHAR2(20), /* 배송지명 */
	recipient VARCHAR2(20), /* 받는사람 */
	tel NUMBER, /* 연락처 */
	adress VARCHAR2(2000) /* 주소 */
);

ALTER TABLE adress_book
	ADD
		CONSTRAINT PK_adress_book
		PRIMARY KEY (
			adress_book_id
		);

/* 비회원장바구니 */
CREATE TABLE guest_shopping_cart (
	cart_id NUMBER NOT NULL, /* 장바구니 번호 */
	cart_goods_qty NUMBER, /* 담은 수량 */
	goods_id NUMBER, /* 상품번호 */
	cookieValue VARCHAR2(50), /* 쿠키값 */
	regdate DATE DEFAULT sysdate /* 날짜 */
);

ALTER TABLE guest_shopping_cart
	ADD
		CONSTRAINT PK_guest_shopping_cart
		PRIMARY KEY (
			cart_id
		);

ALTER TABLE board
	ADD
		CONSTRAINT FK_catagory_TO_board
		FOREIGN KEY (
			category_id
		)
		REFERENCES catagory (
			category_id
		);

ALTER TABLE board
	ADD
		CONSTRAINT FK_member_TO_board
		FOREIGN KEY (
			member_id
		)
		REFERENCES member (
			member_id
		);

ALTER TABLE detail_images
	ADD
		CONSTRAINT FK_board_TO_detail_images
		FOREIGN KEY (
			board_id
		)
		REFERENCES board (
			board_id
		);

ALTER TABLE detail_images
	ADD
		CONSTRAINT FK_product_TO_detail_images
		FOREIGN KEY (
			goods_id
		)
		REFERENCES product (
			goods_id
		);

ALTER TABLE images_hastag
	ADD
		CONSTRAINT FK_hastag_TO_images_hastag
		FOREIGN KEY (
			hastag_id
		)
		REFERENCES hastag (
			hastag_id
		);

ALTER TABLE images_hastag
	ADD
		CONSTRAINT FK_detail_img_TO_img_hastag
		FOREIGN KEY (
			images_id
		)
		REFERENCES detail_images (
			images_id
		);

ALTER TABLE feed
	ADD
		CONSTRAINT FK_member_TO_feed
		FOREIGN KEY (
			member_id_follwer
		)
		REFERENCES member (
			member_id
		);

ALTER TABLE feed
	ADD
		CONSTRAINT FK_member_TO_feed2
		FOREIGN KEY (
			member_id_follwing
		)
		REFERENCES member (
			member_id
		);

ALTER TABLE relpy
	ADD
		CONSTRAINT FK_board_TO_relpy
		FOREIGN KEY (
			board_id
		)
		REFERENCES board (
			board_id
		);

ALTER TABLE relpy
	ADD
		CONSTRAINT FK_member_TO_relpy
		FOREIGN KEY (
			member_id
		)
		REFERENCES member (
			member_id
		);

ALTER TABLE coupon_product
	ADD
		CONSTRAINT FK_product_TO_coupon_product
		FOREIGN KEY (
			goods_id
		)
		REFERENCES product (
			goods_id
		);

ALTER TABLE coupon_product
	ADD
		CONSTRAINT FK_coupon_TO_coupon_product
		FOREIGN KEY (
			coupon_id
		)
		REFERENCES coupon (
			coupon_id
		);

ALTER TABLE scrapbook
	ADD
		CONSTRAINT FK_board_TO_scrapbook
		FOREIGN KEY (
			board_id
		)
		REFERENCES board (
			board_id
		);

ALTER TABLE scrapbook
	ADD
		CONSTRAINT FK_member_TO_scrapbook
		FOREIGN KEY (
			member_id
		)
		REFERENCES member (
			member_id
		);

ALTER TABLE coupon_member
	ADD
		CONSTRAINT FK_member_TO_coupon_member
		FOREIGN KEY (
			member_id
		)
		REFERENCES member (
			member_id
		);

ALTER TABLE coupon_member
	ADD
		CONSTRAINT FK_coupon_TO_coupon_member
		FOREIGN KEY (
			coupon_id
		)
		REFERENCES coupon (
			coupon_id
		);

ALTER TABLE point
	ADD
		CONSTRAINT FK_member_TO_point
		FOREIGN KEY (
			member_id
		)
		REFERENCES member (
			member_id
		);

ALTER TABLE like_member
	ADD
		CONSTRAINT FK_member_TO_like_member
		FOREIGN KEY (
			member_id
		)
		REFERENCES member (
			member_id
		);

ALTER TABLE like_member
	ADD
		CONSTRAINT FK_board_TO_like_member
		FOREIGN KEY (
			board_id
		)
		REFERENCES board (
			board_id
		);

ALTER TABLE product
	ADD
		CONSTRAINT FK_goods_category_TO_product
		FOREIGN KEY (
			goods_category_id
		)
		REFERENCES goods_category (
			goods_category_id
		);

ALTER TABLE store_order
	ADD
		CONSTRAINT FK_product_TO_store_order
		FOREIGN KEY (
			goods_id
		)
		REFERENCES product (
			goods_id
		);

ALTER TABLE store_order
	ADD
		CONSTRAINT FK_member_TO_store_order
		FOREIGN KEY (
			member_id
		)
		REFERENCES member (
			member_id
		);

ALTER TABLE shopping_cart
	ADD
		CONSTRAINT FK_product_TO_shopping_cart
		FOREIGN KEY (
			goods_id
		)
		REFERENCES product (
			goods_id
		);

ALTER TABLE shopping_cart
	ADD
		CONSTRAINT FK_member_TO_shopping_cart
		FOREIGN KEY (
			member_id
		)
		REFERENCES member (
			member_id
		);

ALTER TABLE adress_book
	ADD
		CONSTRAINT FK_member_TO_adress_book
		FOREIGN KEY (
			member_id
		)
		REFERENCES member (
			member_id
		);

ALTER TABLE guest_shopping_cart
	ADD
		CONSTRAINT FK_pro_TO_guest_shop_cart
		FOREIGN KEY (
			goods_id
		)
		REFERENCES product (
			goods_id
		);