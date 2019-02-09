create table students (
	roll number(3) primary key,
	sname varchar2(20),
	course varchar2(5),
	yr number(4)
);

desc students;

insert into students values (1, 'James', 'BSc', 1);
insert into students values (2, 'Taylor','BCom', 3);
insert into students values (3, 'Eddy', 'MSc', 	1);
insert into students values (4, 'Gwen', 'BA', 	2);
insert into students values (5, 'Josh', 'BCA', 	1);
insert into students values (6, 'Hamilton', 'MSc', 2);
insert into students values (7, 'Albert', 'BSc', 3);
insert into students values (8, 'David', 'BA', 	1);
insert into students values (9, 'Amanda', 'MSc', 2);
insert into students values (10, 'Lucy', 'BBA', 3);

select * from students;

create table teacher (
	tid number(3) primary key,
	tname varchar2(30),
	code varchar2(2)
);

insert into teacher values (1, 'Pijush Ghosh', 'PG');
insert into teacher values (2, 'Bibhas Mukherjee','AM');
insert into teacher values (3, 'Karan Paul', 'KP');
insert into teacher values (4, 'Srestha Saha', 'SS');
insert into teacher values (5, 'Mousumi Nag', 'MN');
insert into teacher values (6, 'Koushiki Chakraborty', 'KC');
insert into teacher values (7, 'Rathin Basu', 'RB');
insert into teacher values (8, 'Soumo Sengupta', 'SS');
insert into teacher values (9, 'Sayantan Biswas', 'SB');
insert into teacher values (10, 'Soumik Deb', 'SD');

select * from teacher;

create table attends (
	roll number(3) references students on delete cascade,
	tid number(3) references teacher on delete cascade,
	subject varchar2(20),
	dt date
);

desc attends;

insert into attends values (3, 1, 'Data Structure', 		'19-Feb-2019');
insert into attends values (9, 1, 'Data Structure', 		'19-Feb-2019');
insert into attends values (2, 1, 'Data Structure', 		'19-Feb-2019');
insert into attends values (3, 1, 'Visual Basic', 			'20-Feb-2019');
insert into attends values (9, 1, 'Visual Basic', 			'20-Feb-2019');
insert into attends values (4, 1, 'Visual Basic', 			'20-Feb-2019');
insert into attends values (2, 3, 'Operating System', 		'20-Feb-2019');
insert into attends values (8, 3, 'Operating System', 		'20-Feb-2019');
insert into attends values (6, 4, 'Computer Networking', 	'21-Feb-2019');
insert into attends values (8, 4, 'Computer Networking', 	'21-Feb-2019');
insert into attends values (4, 5, 'Mathematical Methods', 	'21-Feb-2019');
insert into attends values (7, 5, 'Mathematical Methods', 	'21-Feb-2019');
insert into attends values (5, 6, 'Theory of Relativity', 	'19-Feb-2019');
insert into attends values (2, 6, 'Theory of Relativity', 	'19-Feb-2019');
insert into attends values (1, 7, 'Computer Security', 		'15-Feb-2019');
insert into attends values (6, 7, 'Computer Security', 		'15-Feb-2019');

select sname from students where roll in (
	select roll from attends where tid in (
		select tid from teacher where tname = 'Pijush Ghosh'
	) group by roll having count(dt) >= 2
) and sname like 'D%';

select sname from students where roll in (
	select roll from attends group by roll having count(subject) >= ALL (
		select count(subject) from attends group by roll
	)
);

select tname from teacher where tid in (
	select tid from attends group by tid having count(roll) >= ALL (
		select count(roll) from attends group by tid
	)
);