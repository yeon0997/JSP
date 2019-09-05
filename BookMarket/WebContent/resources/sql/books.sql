--book ��ǰ ���̺�

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

INSERT INTO books VALUES('B1234', '���ǰ���', 14000, '���� ���� ģ���� �Ҽ��� �а� 1977�� ���ڴ��� ����翡���� �Ѷ��� ���ø���','�ѱ��Ҽ�', '���а�������', 1000, 'new', 'B1234.jpg');
INSERT INTO books VALUES('B1235', '�츮�� ���� �ϴ�', 14000, '2013�� ���������� ������ ���� �ƹ������� ������ �� ���� ����ϰ� �ٷ� ���ȼ� ', '���̼Ҽ� ', '����', 1200, 'new', 'B1235.jpg');
INSERT INTO books VALUES('B1236', '����� ���', 15000, 'Ȳ�������л�, ��ȿ�����л�, ������ ���� ��������, �ѱ��Ϻ����л� ���� �����ϸ� ����� ���� �ǹ̸� �ٽñ� �߰��ϰ� �ϴ� ��ǰ', '�Ҽ�/��/���', 'â��', 1000, 'new', 'B1236.jpg');

commit;

select * from books;



commit;