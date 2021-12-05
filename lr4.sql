--Завдання 1
insert into TransportType values (1, 'Маршрутка');
insert into TransportType values (2, 'Автобу');
insert into TransportType values (3, 'Тролейбус');
insert into TransportType values (4, 'Поїзд');

--Завдання 2
create or replace directory data_load as 'D:\\';
create table TransportTypeLoad(
	id int,
    name varchar(50)
) organization external(
    type ORACLE_LOADER
    default directory data_load
    access parameters(
        records delimited by newline
        fields terminated by ','
        missing field values are null
    )
    location ('loading.txt')
); insert into TransportType select * from TransportTypeLoad;

--Завдання 3
update TransportType set name = 'Автобус' where name = 'Автобу';

--Завдання 4
delete from TransportType where name = 'Автобус';
delete from TransportType where name = 'Поїзд' or name = 'Маршрутка';
truncate table TransportType;