create table book (
	book_id		varchar2(5) primary key,
	book_name	varchar2(50),
	title		varchar2(50),
	author		varchar2(50),
	subject		varchar2(50),
	availability	number,
	price			number
);

desc book;

insert into book values ('bk1', 'Fundamentals of Data Structure', 	'Data Structure', 	'Debasis Samanta', 		'Computer Science', 5, 200);
insert into book values ('bk2', 'Fundamentals of Operating System', 'Operating System', 'Peter Galvin', 		'Computer Science', 5, 400);
insert into book values ('bk3', 'Linear Programming Problems', 		'LPP', 				'Narendra Singh', 		'Mathematics', 		5, 100);
insert into book values ('bk4', 'Let Us C', 						'C Language', 		'Yashawant Kanetkar', 	'Computer Science', 3, 200);
insert into book values ('bk5', 'System Programming', 				'System Software', 	'John J. Donovan', 		'Computer Science', 2, 150);
insert into book values ('bk6', 'Modern Algebra', 					'Higher Algebra', 	'Pallab Mukherjee', 	'Mathematics', 		2, 300);

create table borrower (
	brwr_id		varchar2(5)	primary key,
	brwr_name	varchar2(50),
	city		varchar2(50),
	phone		number(10)
);

desc borrower;

insert into borrower values ('br1',	'John', 'Kolkata', 5738573713);
insert into borrower values ('br2', 'Scully', 'Delhi', 9837263647);
insert into borrower values ('br3', 'Neil', 'Mumbai', 8472727174);
insert into borrower values ('br4', 'Patrick', 'Kolkata', 6472636472);
insert into borrower values ('br5', 'Amanda', 'Kolkata', 9572535163);
insert into borrower values ('br6', 'Roger', 'Bangalore', 8473623642);

create table borrows (
	book_id varchar2(5) references book on delete cascade,
	brwr_id	varchar2(5) references borrower on delete cascade,
	do_issue	Date,
	do_return	Date,
	primary key (book_id, brwr_id)
);

desc borrows;

insert into borrows values ('bk1', 'br1', '09-feb-2015', '19-feb-2015');
insert into borrows values ('bk5', 'br2', '10-feb-2015', '11-feb-2015');
insert into borrows values ('bk2', 'br6', '11-feb-2015', '22-feb-2015');
insert into borrows values ('bk2', 'br3', '11-feb-2015', '22-feb-2015');
insert into borrows values ('bk3', 'br4', '15-feb-2015', '26-feb-2015');
insert into borrows values ('bk3', 'br5', '15-feb-2015', '26-feb-2015');
insert into borrows values ('bk4', 'br2', '10-mar-2015', '22-mar-2015');
insert into borrows values ('bk6', 'br2', '15-mar-2015', '26-mar-2015');
insert into borrows values ('bk6', 'br5', '15-mar-2015', '26-mar-2015');

select b.book_id, b.title from book b where b.book_id in (
	select book_id from borrows where do_issue < '01-feb-2015' or do_issue > '28-feb-2015' );
	
select count(book_id) from borrows where book_id in (
	select book_id from book where price in (
		select max(price) from book
	)
);

select brwr_name from borrower where city = 'Kolkata' and brwr_id in (
	select brwr_id from borrows where book_id in (
		select book_id from book where subject = 'Mathematics'
	)
);