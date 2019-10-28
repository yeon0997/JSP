USE secretary;

CREATE TABLE todo (	
tno int primary key auto_increment,
content text,
tdate date,
checked bool
);

CREATE TABLE contacts (
cno int primary key auto_increment,
name text,
phone text,
memo text
);
insert into contacts values(1, "왱대앵", "0119945432", "예민함");
insert into contacts values(2, "이므냉", "0167878432", "에어팟잃어버림");


CREATE TABLE members (
mno int primary key auto_increment,
id text,
pw text
);
insert into members values(1, "admin", "admin");




