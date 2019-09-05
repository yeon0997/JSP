--book 상품 테이블

create table books(
b_id VARCHAR2(20) not null,
b_name VARCHAR2(100),
b_unitPrice INT,
b_description VARCHAR2(1000),
b_category VARCHAR2(20),
b_manufacturer VARCHAR2(20),
b_unitsInStock INT,
b_condition VARCHAR2(20),
b_fileName VARCHAR2(20),
PRIMARY KEY(b_id));

commit;

DROP TABLE books;

INSERT INTO books VALUES('B1234', '빛의감각', 14000, '나는 오랜 친구의 소설을 읽고 1977년 여자대학 기숙사에서의 한때를 떠올린다','한국소설', '문학과지성사', 1000, 'new', 'B1234.jpg');
INSERT INTO books VALUES('B1235', '우리가 가진 하늘', 14000, '2013년 뇌종양으로 세상을 떠난 아버지와의 마지막 몇 달을 담담하게 다룬 논픽션 ', '영미소설 ', '구픽', 1200, 'new', 'B1235.jpg');
INSERT INTO books VALUES('B1236', '상냥한 사람', 15000, '황순원문학상, 이효석문학상, 오늘의 젊은 예술가상, 한국일보문학상 등을 수상하며 평범한 삶의 의미를 다시금 발견하게 하는 작품', '소설/시/희곡', '창비', 1000, 'new', 'B1236.jpg');

commit;

select * from books;



commit;