--INSERT


insert into department values(10, 'HR');
insert into department values(20, 'MARKETING');
insert into department values(30, 'PLANNING');
insert into department values(40, 'DEVELOPMENT');

insert into evaluation values('A', 10, 'Y');
insert into evaluation values('B', 5, 'Y');
insert into evaluation values('C', 0, 'N');
insert into evaluation values('D', -1, 'N');


insert into employee values(7369, 10, 'A','SMITH', 35, 'M', 'DEPUTY', 'NORMAL', 3000);
insert into employee values(1100, 20, 'D','TEST1', 45, 'M', 'CHIEF', 'RESIGN', 4000);
insert into employee values(1200, 30, 'B','TEST2', 30, 'F', 'DEPUTY', 'NORMAL', 3500);
insert into employee values(1500, 40, 'B','TEST3', 50, 'F', 'WORKER', 'VACATION', 5900);



COMMIT;
