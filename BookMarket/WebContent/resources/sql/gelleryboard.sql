--게시판 테이블(2개입니다)

CREATE TABLE galleryboard (
       num int not null,
       id varchar2(10) ,
       name varchar2(10) not null,
       subject varchar2(100) not null,
       content varchar2(1000) not null,
       regist_day varchar2(30),
       hit int,
       ip varchar2(20),
       filename VARCHAR2(50),
       filesize long,
       PRIMARY KEY(num)
);

CREATE sequence galleryboard_seq;

CREATE TABLE galleryripple (
       num int not null,
       parent int not null,
       id varchar2(20) not null,
       name varchar2(20) not null,
       content varchar2(1000) not null,
       regist_day varchar2(30),
       ip varchar2(20),
       PRIMARY KEY(num)
);

CREATE sequence galleryripple_seq;

commit;

CREATE sequence galleryboard_seq;

commit;

INSERT into galleryboard(num,id,name,subject,content,regist_day,hit,ip,filename,filesize)
values(galleryboard_board_seq.nextval,'zzzz','zzzz','zzzz','zzzz','11',0,'192.168.0.1','asd.txt',100);

INSERT into galleryboard(num,id,name,subject,content,regist_day,hit,ip,filename,filesize)
values(mvc_board_seq.nextval,'asdffg','강감찬','aaa','bbb','20190101',0,'192.168.0.1','asd.txt',100);


commit;

select * from galleryboard;

drop table galleryboard;

