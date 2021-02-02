drop table template_join;
create table template_join(
    id          varchar2(20) primary key,
    password    varchar2(20),
    jumin       varchar2(14),
    email       varchar2(30),
    gender      char(1) check(gender in ('m', 'f')),
    hobby       varchar2(40),
    post        varchar2(5),
    address     varchar2(150),
    intro       varchar2(100),
    register_date   date default sysdate
);

insert into template_join
(id, password, jumin, email, gender, hobby, post, address, intro)
values('admin', '1234', '900909-1234567', 'admin@naver.com', 'm',
       '공부,운동', '12345', '서울시 종로구', '좋아요');


select * from template_join;