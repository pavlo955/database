--Завдання 1
alter table Rozklad
    drop constraint rmarshrut;
   
--Завдання 2
alter table Driver
    drop column zmina;
alter table Driver
    modify id int not null;

--Завдання 3
alter table TransportType
    rename column name to typename;

--Завдання 4
alter table Ticket
    add tiket1 int;
alter table Ticket
    add tiket2 int;
alter table Ticket 
    add constraint tiket unique (tiket1, tiket2);
    
--Завдання 5
alter table Transport
    drop constraint driver;
alter table Transport
    add constraint driver foreign key (driver) references Driver(id) on delete cascade;
