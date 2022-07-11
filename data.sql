
SET DEFINE OFF;

update member set profile_image = '1.jpg' where member_id = 1;
update member set profile_image = '2.jpg' where member_id = 2;
update member set profile_image = '3.jpg' where member_id = 3;

-- 커뮤니티 시작---------------------------------------------------------- 

--category테이블 
insert into catagory (category_id, category_name) values (0, 'image');
insert into catagory (category_id, category_name) values (1, 'housewarming'); 
insert into catagory (category_id, category_name) values (2, 'reply'); 
--main_인테리어 리뷰(10000~10002)
insert into board(board_id, title, description, board_thumbnail, member_id) 
values(10000, '홈앤안목 인테리어', '홈앤안목 대표님의 손이 거쳐 가면 감쪽같이 사사삭 완벽해지는 마법(?)이 있습니다~~^^; 견적서부터 실측 시공완료까지 그야말로 꼼꼼하심 그 자체십니다. 하자랄 것도 없지만 수정사항이 있으면 미루시는 법이 없으셨어요~바로바로 착착! 원하는 디자인이나 시공(ex:조명 웨인스코팅 등등)을 말씀 드리면 그 부분에 대한 장단점을 넘넘 잘 알고 계셔서 자세히 설명해 주시고 선택하는데 큰 도움이 됐어요~ 무엇보다 우리 아파트 작업을 해보신 분이라 눈에 보이지 않는 내부 구조물까지 파악하고 계셔서 부차적으로 추가되는 작업이나 금액 없이 순조롭게 이루어져서 만족합니다~ 막막하기만 했던 집상황이었지만 원하는 인테리어를 맘껏하고 예쁜 집에 앉아 행복해 하고 있답니다~^^ 더운 여름날 땀 흘리신 홈앤안목업체에 다시 한 번 감사드립니다~~~', 'interior01.jpg', 1);
insert into board(board_id, title, description, board_thumbnail, member_id) 
values(10001, '지브로(JIBRO)', '부산에 사시는 부모님 댁을 리모델링 했었는데 상담 과정은 빠르고 친절하셨고 시공 기간도 리모델링을 위한 이사 일정에 맞춰서 정확하게 잘 지켜주셨습니다. 생각했던 부분 이상으로 다른 부분까지 꼼꼼하게 확인하고 챙겨주셔서 기대 이상의 퀄리티가 나온 것 같다고 부모님도 좋아하셨습니다. 예전에는 한샘 리하우스에서과 계약을 하고 진행했었는데 가격 대비 퀄리티를 보면 이제는 그냥 이렇게 진행하는게 가성비면에서 만족도가 더 높은 것 같다는 생각이 드네요. 어머니가 거의 매일 친구분들을 초대하셔서 집들이 중이시라 아파트에서 "구경하는 집"이 되어버렸다는 ^.^;', 'interior02.jpg', 2);
insert into board(board_id, title, description, board_thumbnail, member_id) 
values(10002, '현대L&C/리바트직영전시장', '공사기간도 정확히 지켜주시고 처음 상담할때 제시했던대로 잘 진행해주셨읍니다 오늘의 집에서 소개된 완공된 인테리어가 많은 도움이 되었고 사진을 보면서 서로 의논도 나누었읍니다 지금은 변화된 집에서 아주만족한 후기사진을 올립니다', 'interior03.jpg', 3);
--사진 카테고리 
--(main : 10003~10010)
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10003, 'main_data', 'main_data', 27,'popular01.jpg', 0, 1);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10004, 'main_data', 'main_data', 57,'popular02.jpg', 0, 2);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10005, 'main_data', 'main_data', 53,'popular03.jpg', 0, 3);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10006, 'main_data', 'main_data', 64,'popular04.jpg', 0, 1);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10007, 'main_data', 'main_data', 46,'popular05.jpg', 0, 2);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10008, 'main_data', 'main_data', 53,'popular06.jpg', 0, 3);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10009, 'main_data', 'main_data', 63,'popular07.jpg', 0, 1);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10010, 'main_data', 'main_data', 78,'popular08.jpg', 0, 2);

--집들이 카테고리
--(main : 10011~10014)
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10011, '전형적인 구조를 색다르게!', 'main_data',45,'mainThumbnail.jpg', 1, 1);
insert into board(board_id, title, description, read_count ,board_thumbnail, category_id, member_id)
values(10012, '통통 튀는 레트로 키치 하우스', 'main_data',59, 'story01.jpg', 1, 2);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10013, '다락방이 있는 화이트 하우스!', 'main_data', 25,'story02.jpg', 1, 3);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10014, '40년된 빌라의 변신!', 'main_data', 89,'story03.jpg', 1, 1);
--(집들이 페이지 : 10015~10040)
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10015, '심플하지만 무드있게, 건축 전공 부부의 셀프 인테리어', 'main_data', 27,'story04.jpg', 1, 1);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10016, '작은 집 넓게 쓰기: 공간은 비우고 가치를 채운 집', 'main_data', 57,'story05.jpg', 1, 2);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10017, '공간의 선과 면이 흐르듯 이어지는 단정한 우리 집', 'main_data', 53,'story06.jpg', 1, 3);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10018, '혹시 유럽인가요? 평범한 아파트를 우아한 스윗홈으로', 'main_data', 64,'story07.jpg', 1, 1);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10019, '24평 아파트에서 써 내려가는 두 자매의 독립일기', 'main_data', 46,'story08.jpg', 1, 2);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10020, '소소하지만 눈에 띄는✨ 시공 포인트가 들어간 신혼집', 'main_data', 53,'story09.jpg', 1, 3);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10021, '공간마다 조명 포인트! 따뜻함이 감도는 30평대 신혼집', 'main_data', 63,'story10.jpg', 1, 1);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10022, '파란 바다와 요트가 보이는 뷰맛집 마린 하우스🚤', 'main_data', 78,'story11.jpg', 1, 2);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10023, '확장&구조 변경으로 새롭게, 스타일링은 정겹고 따뜻하게', 'main_data', 27,'story12.jpg', 1, 3);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10024, '두 가지 컨셉을 담은 그림쟁이의 쉼터이자 작업실', 'main_data', 57,'story13.jpg', 1, 1);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10025, '비용은 적게 만족은 크게! 소소하지만 확실한 집 꾸미기', 'main_data', 53,'story14.jpg', 1, 2);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10026, '나이테처럼 층층이 쌓여가는 부부의 삶이 담긴 집', 'main_data', 64,'story15.jpg', 1, 3);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10027, '리빙 브랜드 디렉터 논디의 기록하는 생활 🖊', 'main_data', 46,'story16.jpg', 1, 1);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10028, '피톤치드 듬뿍🌲 꿈꾸던 로망을 실현한 전원주택 라이프', 'main_data', 53,'story17.jpg', 1, 2);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10029, '각 공간마다 다른 빛이 맺히는 내추럴 우드 하우스', 'main_data', 63,'story18.jpg', 1, 3);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10030, '도전의 연속인 구축 리모델링, 우드 포인트가 예쁜 집', 'main_data', 78,'story19.jpg', 1, 1);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10031, '고양이 세 마리와 함께해도 깔끔하고 슬기롭게 사는 법', 'main_data', 63,'story20.jpg', 1, 2);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10032, '부모님과 함께 사는 집, 내 취향을 담아 거실&주방까지', 'main_data', 78,'story21.jpg', 1, 3);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10033, '체리몰딩 싹 걷어내고 3가지 로망 실현한 화이트하우스', 'main_data', 27,'story22.jpg', 1, 1);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10034, '딱 세 군데만! 최소시공으로 완성한 모던그레이 하우스', 'main_data', 57,'story23.jpg', 1, 2);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10035, '무채색 모던에 새벽의 푸르스름한 분위기를 더한 방', 'main_data', 53,'story24.jpg', 1, 3);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10036, '셀프 아치 시공으로 공간 분리 성공한 아파트 방 한 칸', 'main_data', 64,'story25.jpg', 1, 1);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10037, '다채로운 취미와 취향으로 아기자기하게 꾸민 작은 방', 'main_data', 46,'story26.jpg', 1, 2);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10038, '쿨화이트와 메탈 소재로 완성한 미드센추리 모던 하우스', 'main_data', 53,'story27.jpg', 1, 3);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10039, '일랑일랑- 머무르는 것만으로도 쉼이 되는 나만의 도피처', 'main_data', 63,'story28.jpg', 1, 1);
insert into board(board_id, title, description, read_count, board_thumbnail, category_id, member_id)
values(10040, '5평 원룸에서 영글어가는 패션회사 VMD의 싱글라이프', 'main_data', 78,'story29.jpg', 1, 2);

-- ----------------------------------------------여기까지 커뮤니티

insert into coupon values(coupon_id_seq.nextval, '피죤 25% 쿠폰', 25, 5000, '20220821'); 
insert into coupon values(coupon_id_seq.nextval, '삼성전자 5% 할인쿠폰', 5, 10000, '20220801'); 
insert into coupon values(coupon_id_seq.nextval, '6월 리버퍼니쳐 키즈페어 5% 할인 쿠폰', 5, 5000, '20220821'); 
insert into coupon values(coupon_id_seq.nextval, '깃든 주말특가 10% 추가할인쿠폰', 10, 5000, '20220801'); 
insert into coupon values(coupon_id_seq.nextval, '삼익가구 10% 할인쿠폰', 10, 20000, '20220830'); 

insert into coupon_member values(1, 1);
insert into coupon_member values(1, 2);
insert into coupon_member values(1, 3);
insert into coupon_member values(1, 4);
insert into coupon_member values(1, 5);

insert into coupon_member values(2, 1);
insert into coupon_member values(2, 2);
insert into coupon_member values(2, 3);
insert into coupon_member values(2, 4);
insert into coupon_member values(2, 5);

insert into coupon_member values(3, 1);
insert into coupon_member values(3, 2);
insert into coupon_member values(3, 3);
insert into coupon_member values(3, 4);
insert into coupon_member values(3, 5);

insert into point values(point_id_seq.nextval, 1, 200, '20220906');
insert into point values(point_id_seq.nextval, 1, 100, '20220704');
insert into point values(point_id_seq.nextval, 1, 300, '20221010');
insert into point values(point_id_seq.nextval, 1, 400, '20221212');


-- ----------------스토어 시작 ----------------------------------------------------------
-- goods_category dummy data
insert into goods_category values (101, '가구', null);
insert into goods_category values (201, '침대', 101);
insert into goods_category values (301, '침대프레임', 201);
insert into goods_category values (302, '침대+매트리스', 201);
insert into goods_category values (303, '침대부속가구', 201);
insert into goods_category values (202, '소파', 101);
insert into goods_category values (304, '일반소파', 202);
insert into goods_category values (305, '리클라이너', 202);
insert into goods_category values (306, '소파베드', 202);
insert into goods_category values (203, '테이블·식탁·책상', 101);
insert into goods_category values (307, '거실·소파테이블', 203);
insert into goods_category values (308, '사이드테이블', 203);
insert into goods_category values (309, '식탁', 203);

insert into goods_category values (102, '패브릭', null);
insert into goods_category values (204, '여름패브릭', 102);
insert into goods_category values (310, '침구', 204);
insert into goods_category values (311, '러그·카페트', 204);
insert into goods_category values (312, '커튼', 204);
insert into goods_category values (205, '침구세트', 102);
insert into goods_category values (206, '이불·이불솜', 102);
insert into goods_category values (313, '이불', 206);
insert into goods_category values (314, '이불솜·구스', 206);

insert into goods_category values (103, '조명', null);
insert into goods_category values (207, '공간별조명', 103);
insert into goods_category values (315, '거실조명', 207);
insert into goods_category values (316, '방조명', 207);
insert into goods_category values (317, '주방조명', 207);
insert into goods_category values (208, 'LED평판등', 103);
insert into goods_category values (318, 'LED거실등', 208);
insert into goods_category values (319, 'LED방등', 208);
insert into goods_category values (320, 'LED주방등', 208);
insert into goods_category values (209, '천장등', 103);
insert into goods_category values (321, '직부조명', 209);
insert into goods_category values (322, '펜던트조명', 209);
insert into goods_category values (323, '센서등', 209);

insert into goods_category values (104, '가전', null);
insert into goods_category values (210, '냉장고', 104);
insert into goods_category values (324, '일반냉장고', 210);
insert into goods_category values (325, '양문형냉장고', 210);
insert into goods_category values (326, '미니냉장고', 210);
insert into goods_category values (211, 'TV', 104);
insert into goods_category values (327, '~109cm(~43")', 211);
insert into goods_category values (328, '110~123cm(44~49")', 211);
insert into goods_category values (329, '124~163cm(50~64")', 211);
insert into goods_category values (212, '세탁기·건조기', 104);
insert into goods_category values (330, '일반세탁기', 212);
insert into goods_category values (331, '드럼세탁기', 212);
insert into goods_category values (332, '건조기·탈수기', 212);


insert into main_category_images values(100, '100.png', '쇼핑하기');
insert into main_category_images values(101, '101.png', '빠른가구배송');
insert into main_category_images values(102, '102.png', '평수별집구경');
insert into main_category_images values(103, '103.png', '공간별사진');
insert into main_category_images values(104, '104.png', '빠른시공상담');
insert into main_category_images values(105, '105.png', '오늘의집이사');
insert into main_category_images values(106, '106.png', '오늘의딜');
insert into main_category_images values(107, '107.png', '22년신년운세');

insert into main_category_images values(200, '200.png', '가구');
insert into main_category_images values(201, '201.png', '페브릭');
insert into main_category_images values(202, '202.png', '조명');
insert into main_category_images values(203, '203.png', '가전');
insert into main_category_images values(204, '204.png', '주방용품');
insert into main_category_images values(205, '205.png', '데코/식물');
insert into main_category_images values(206, '206.png', '수납/정리');
insert into main_category_images values(207, '207.png', '생활용품');
insert into main_category_images values(208, '208.png', '서랍/수납장');
insert into main_category_images values(209, '209.png', '생필품');




--product dummy data
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10000, '1+1 마이크로화이바/에어로쿨 항균 일반/경추형 베개솜 6종 모음전', '오토엔알로', 23000, 55,'deal01.jpg',234234,102 ); 
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10001, '9존 인생 매트리스토퍼 3color(MS/S/Q)', '하벤홈', 69900 , 56,'deal02.jpg',1421432, null);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10002, '[해외] 귀여운 댕댕이 삼형제 소프트 러그 발매트 댕댕이 삼형젬 3size', '집드리',17900, 33,'deal03.jpg',34241,311);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10003, '삼성 드럼+건조기', '삼성전자',3150000, 11,'deal04.jpg',54234, 212);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10004, 'LED 바이브폴 무드등_6colors', '바이브라이프(VIBE LIFE)', 31000, 22,'deal05.jpg',3424124, 103);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10005, '라탄 패턴 햄퍼(60L/80L) 3colors', '홈앤하우스', 46000, 36,'deal06.jpg',2123213, null );
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10006, '협탁겸 원목스툴 2종 택1', '홈앤하우스', 35900, 16,'deal07.jpg',6574, 203);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10007, '(25%쿠폰) 울트라슬림 날개/입는 오버나이트/팬티라이너 모음', '좋은느낌',32000, 29,'deal08.jpg',241224, null);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10008, '빈티지 베어 밀크 머그컵 340ml', '히츠키코보', 11900, 21,'deal09.jpg',86555, null);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10009, '양면 시어서커 프릴 여름차렵이불 세트 5colors 3size', '레시앙뜨', 69900, 53,'deal10.jpg',658574, 205);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10010, '22년 최신형 비아01x르젠 조용한 BLDC 앱 AI기능 서큘레이터 선풍기', '르젠', 99000, 22,'deal11.jpg',23477, 104);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10011, '위니 인테리어 포인트체어 6colors_SL084', '끌레오', 98000, 80,'deal12.jpg',45235, null);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10012, 'NEW향출시! (3+1) 천연디퓨저 200ml 27가지 향기 드라이플라워 증정', '에이센트', 19900, 50,'deal13.jpg',47898, null);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10013, '여름맞이 청량한 유리그릇! 드 모네 홈세트 모음 (2년 품질보증)', '보에나', 95000, 45,'deal14.jpg', 95453, null);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10014, '무선형 충전식 무선 LED 크리스탈 인테리어 무드등 감성 조명 (3가지색 변환)', '레나에너지',19900, 74,'deal15.jpg',864565, 103);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10015, '시원한 바람길 디어썸머 시어서커 여름차렵이불(세트)체크 3colors', '마틸라', 49900, 48,'deal16.jpg',53423, 205);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10016, '접어서 보관하는 3세대 큐브 규조토 발매트 4종', '딜라이트홈', 19900, 50,'deal17.jpg',24121, 311);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10017, '상반기 최대할인! 인기 종합가구 BIG SALE', '먼데이하우스', 29900, 61,'deal18.jpg',532423, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10018, '인기캠핑템 총집합! 다니고 캠핑테이블/캠핑의자/감성랜턴 외 11종 모음', '다니고', 21000 ,'deal19.jpg',3456, 203);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10019, 'MASS 아쿠아텍스 2인소파 2colors', '먼데이하우스', 358000, 47,'deal20.jpg',846456,202);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10020, '토미 헤드리스 4단 멀티 수납 침대 (매트포함) SS/Q', '오트밀하우스',439000, 16,'deal21.jpg',3467, 302);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10021, 'NEW 로맨틱1 신혼 원목침대 프레임 슈퍼싱글/퀸 (매트리스포함)', '레이디가구', 799000,  52,'deal22.jpg',84563, 302);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10022, '(무료배송) 선데이 사계절 러그 카페트 7size 4colors', '바이빔', 28000, 48,'deal23.jpg', 21555, 311);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10023, '당일출고 순수원목 선반장 3colors (가로2단)', '먼데이하우스', 23900, 54,'deal24.jpg',63423, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10024, '당일출고 순수원목 A사이드테이블 3colors', '먼데이하우스', 38000, 50,'deal25.jpg',5234, 308);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10025, '키드니빈즈 접이식 좌식테이블 3colors 2size (보호캡증정)', '에꼬드에꼬', 38000, 45,'deal26.jpg',1121, 203);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10026, '오로라 단스탠드(전구 증정 이벤트)', '올루미', 55000, 67,'deal27.jpg',2666, 103);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10027, 'WP워터쉴드 방수매트리스커버(S/SS/SD/D/Q/K/LK/SK/EK/패밀리)', '타카타카', 23900, 62,'deal28.jpg',3253, 102);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10028, '40수 코마사 호텔수건 200g 10장', '코튼리빙', 79900, 62,'deal29.jpg',2535, 102);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10029, '[오늘의딜]닿자마자 시원한 프리미엄 아이스쿨링 신소재 냉감패드 SS/Q', '리브맘', 119000, 66,'deal30.jpg',3424130, 102 );
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10030, '드디어 재입고! 모노 논슬립 라운딩 옷걸이 40개', '홈앤하우스', 22900, 39,'deal31.jpg',346453, null);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10031, '[해외] 프란시스 Y3.3 커피머신 4color +웰컴캡슐팩', '일리', 198000, 51,'deal32.jpg',435243, 104);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10032, '(사은품)비타퓨어썸 샤워기+퓨어필터 1box(3ea)+비타필터2ea 외', '바디럽', 49000, 66,'deal33.jpg',324224, null);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10033, '더매직 단단한 포켓스프링 매트리스 S/SS/Q/K/SK', '웰퍼니쳐', 438000, 47,'deal34.jpg',59932, 302);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10034, '[최종 24.7만]삼성 스마트모니터 M5 S32BM501 32인치 IoT 화이트', '삼성전자', 422400,  26,'deal35.jpg',59933, 104);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10035, '1+1 실내공기정화식물 38종 자유선택 고급 테라코타 바소 토분 미니울타리증정', '아침향기', 17800,  10, 'deal36.jpg', 59342, null);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10036, '숨쉬는 습기차단 옷커버 - 완벽 의류보관 실속템 4size', '코드86', 1800,  55,'deal37.jpg',59342, 102);

insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10037, '에이스침대 BEST 침대 / 매트리스 모음 (DS,SS,DD,LQ,K,K3)', '에이스침대',336150, 17,'deal38.jpg',3523, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10038, '상반기 최대할인! 인기 원목침대 5종 BIG SALE', '올쏘퍼니처', 347000, 64,'deal39.jpg',3524, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10039, '반짝특가! 지누스 매트리스/토퍼/프레임 특가전', '지누스', 94000, 36,'deal40.jpg',3525, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10040, '[드레스룸BEST] 맞춤제작 시스템 드레스룸 (시공무료) 9colors', '큐브', 13900, 41,'deal41.jpg',3526, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10041, '60T 고밀도 필로우탑 하이브리드 침대 매트리스 (S/SS/Q/K)', '레이디가구',289000, 35,'deal42.jpg',3527, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10042, '[오늘의딜] 프라제르 아쿠아텍스 4인용 소파 (스툴증정) 2colors', '보니애가구',1949000, 74,'deal43.jpg',3528, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10043, '레벨업 속깊은 확장 틈새맞춤 철제 커튼형 드레스룸 행거 시스템옷장', '골든스트릿',43000,  18,'deal44.jpg',3529, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10044, '엘리 라운드 스탠드 전신거울 2size', '오트밀하우스',89000,  22,'deal45.jpg',3530, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10045, '베가 폴라 투명 접이식의자 17colors(대량구매 추가할인)', '영가구', 250000, 87,'deal46.jpg',3531, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10046, '콰트로 데스크 시리즈 19size (400~2000mm)', '두닷', 103000, 20,'deal47.jpg',3532, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10047, '시니컬W 강화 유리 거실테이블/타원형 소파테이블 /3size', '아늑', 249000, 65,'deal48.jpg',3533, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10048, '[헤드레스트 증정] 바움 천연면피가죽 3인 소파 2colors', '시스디자인',1248000, 35,'deal49.jpg',3534, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10049, 'T20 TAB+ TNA200HF 메쉬의자 2types', '시디즈', 258000, 22,'deal50.jpg',3535, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10050, '이안빅 1200 옷장 슬라이딩 수납장 (행거/선반형) 3colors', '레이디가구',439000, 52,'deal51.jpg',3536, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10051, '노아 반타원 테이블 1000 2size', '오트밀하우스', 229000, 43,'deal52.jpg',3537, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10052, '모듈가구 003(3단) 6colors', 'yeyecompany', 215000, 59,'deal53.jpg',3538, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10053, '블랑 좌식 접이식 거실테이블 3size(보호캡 증정)', '우드레이', 68900, 74,'deal54.jpg',3539, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10054, '데일리 LED 수납 서랍 화장대세트 (스툴포함) 2colors', '리샘', 259000, 27,'deal55.jpg',3540, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10055, '노프레임 비정형 전신거울 A-4 (원목 받침대 포함) 2Size', '어글리어블리', 189000, 52,'deal56.jpg',3541, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10056, '베니4인용 아쿠아매직텍스 패브릭 소파 3colors스 ', '브리엔츠가구', 1430000, 70,'deal57.jpg',3542, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10057, '멀티 드레스룸 행거 1+1 SET', '까사마루', 139000, 35,'deal58.jpg',3543, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10058, '폰드 리프트업 타원형 라운드 거실 소파테이블 2size 2colors', '레이디가구',299000, 46,'deal59.jpg',3544, 101);
insert into product(goods_id, goods_name, goods_brand, goods_price, discount_rate, product_thumbnail, READ_COUNT, GOODS_CATEGORY_ID)
values(10059, '페이톤 체어 식탁 카페 인테리어 의자', '로엠가구', 40700, 26,'deal60.jpg',3545, 101);






insert into coupon_product values(10000, 1);
insert into coupon_product values(10001, 1);
insert into coupon_product values(10002, 1);

insert into coupon_product values(10003, 2);
insert into coupon_product values(10004, 2);
insert into coupon_product values(10005, 2);

insert into coupon_product values(10006, 3);
insert into coupon_product values(10007, 3);
insert into coupon_product values(10008, 3);

insert into coupon_product values(10009, 4);
insert into coupon_product values(10010, 4);
insert into coupon_product values(10011, 4);

insert into coupon_product values(10012, 5);
insert into coupon_product values(10013, 5);
insert into coupon_product values(10014, 5);

insert into store_order(order_id, member_id, goods_id, order_count, delivery_state, pay_order_time)
values(store_order_seq.nextval, 1, 10000, 1, 6, '20220506');
insert into store_order(order_id, member_id, goods_id, order_count, delivery_state, pay_order_time)
values(store_order_seq.nextval, 1, 10001, 2, 6, '20220528');
insert into store_order(order_id, member_id, goods_id, order_count, delivery_state, pay_order_time)
values(store_order_seq.nextval, 1, 10002, 1, 5, '20220620');
insert into store_order(order_id, member_id, goods_id, order_count, delivery_state, pay_order_time)
values(store_order_seq.nextval, 1, 10003, 3, 4, '20220701');


insert into like_member values(1, 10000);
insert into like_member values(1, 10001);
insert into like_member values(1, 10002);
insert into scrapbook values(10003, 1);
insert into scrapbook values(10004, 1);
insert into scrapbook values(10005, 1);

insert into like_member values(2, 10000);
insert into like_member values(2, 10001);
insert into like_member values(2, 10002);
insert into scrapbook values(10003, 2);
insert into scrapbook values(10004, 2);
insert into scrapbook values(10005, 2);

insert into like_member values(3, 10000);
insert into like_member values(3, 10001);
insert into like_member values(3, 10002);
insert into scrapbook values(10003, 3);
insert into scrapbook values(10004, 3);
insert into scrapbook values(10005, 3);

insert into feed values(1, 2);
insert into feed values(1, 3);

insert into feed values(2, 1);
insert into feed values(2, 3);

insert into feed values(3, 1);
insert into feed values(3, 2);

--select so.order_id, so.pay_order_time, p.product_thumbnail, p.goods_brand, p.goods_name, p.goods_price, so.order_count
--from store_order so, member m, product p
--where so.member_id = m.member_id
--and so.goods_id = p.goods_id
--and m.member_id = 1;


--select * from coupon
--where coupon_id in (select coupon_id from coupon_member cm, member m
--where cm.member_id = m.member_id
--and m.member_id = 1);

--select * from product
--where goods_id in (select goods_id from coupon_product cp, coupon c
--where cp.coupon_id = c.coupon_id
--and c.coupon_id in(select coupon_id from coupon_member cm, member m
--where cm.member_id = m.member_id
--and m.member_id = 1));


--select * from member 
--where member_id in (select member_id_follwing from member m, feed f
--where m.member_id = f.member_id_follwer and m.member_id = 1);
--
--select * from member 
--where member_id in (select member_id_follwer from member m, feed f
--where m.member_id = f.member_id_follwing and m.member_id = 2);
--
--select member_id_follwing from member m, feed f
--where m.member_id = f.member_id_follwer
--and m.member_id = 1;
--
--select member_id_follwer from member m, feed f
--where m.member_id = f.member_id_follwing
--and m.member_id = 2;

--select * from member;

--alter table member modify password varchar(2000);
--delete from main_category_images;
--select * from main_category_images;
--select * from member;
--rollback;
commit;
--select * from board;
--select * from product;



--delete from product;