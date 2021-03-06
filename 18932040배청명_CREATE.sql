REM   Script: db_lesson12_CREATE
REM   Generated by Quick SQL Sunday May 1st, 2022 9:5:9

create table create_table_newbook (
    id                             number not null constraint create_table_newbo_id_pk primary key,
    bookid                         number,
    bookname                       varchar2(20),
    publisher                      varchar2(20),
    price                          number
);

create table create_table_newcustomer (
    id                             number not null constraint create_table_newcu_id_pk primary key,
    create_table_newbook_id        number
                                   constraint create_table_create_table_fk
                                   references create_table_newbook on delete cascade,
    custid_number_primary_key      number,
    name                           varchar2(40),
    address                        varchar2(40),
    phone                          varchar2(30)
);

create table create_table_neworders (
    id                             number not null constraint create_table_newor_id_pk primary key,
    create_table_newbook_id        number
                                   constraint create_table_create_table_fk
                                   references create_table_newbook on delete cascade,
    orderid                        number,
    custid_number_not_null         number,
    bookid_number_not_null         number,
    saleprice                      number,
    orderdate                      date,
    primary_keyorderid             varchar2(4000),
    foreign_keycustid_references_n varchar2(4000)
);

create or replace trigger create_table_newbook_biu
    before insert or update 
    on create_table_newbook
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
end create_table_newbook_biu;
/

create or replace trigger create_table_newcustomer_biu
    before insert or update 
    on create_table_newcustomer
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
end create_table_newcustomer_biu;
/

create or replace trigger create_table_neworders_biu
    before insert or update 
    on create_table_neworders
    for each row
begin
    if :new.id is null then
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
end create_table_neworders_biu;
/

create index create_table_newcustomer_i1 on create_table_newcustomer (create_table_newbook_id);

create index create_table_neworders_i1 on create_table_neworders (create_table_newbook_id);

