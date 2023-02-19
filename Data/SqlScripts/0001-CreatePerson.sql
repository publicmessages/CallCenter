﻿drop table if exists myperson;

create table myperson
(
	id int primary key generated by default as identity, 
	externalid uuid not null unique default gen_random_uuid (),
	title varchar(2000) null,
	legalname varchar(4000) not null,
	preferredname varchar(4000) null,
	alias varchar(50) not null unique,
	createdby int not null default 0,
	createddate timestamp with time zone not null default now(),
	modifiedby int not null default 0,
	modifieddate timestamp with time zone not null default now()
);

insert into myperson
(
	title,
	legalname,
	preferredname,
	alias
) values
(
	'Mr',
	'Abraham Lincoln',
	'Abe',
	'abraham.lincoln'
);

insert into myperson
(
	title,
	legalname,
	preferredname,
	alias,
	createdby,
	modifiedby
) values
(
	'Mr',
	'George Herbert Walker Bush',
	'Bush',
	'v-georgebush', 
	1,
	1
);

insert into myperson
(
	title,
	legalname,
	preferredname,
	alias,
	createdby,
	modifiedby
) values
(
	'Mr',
	'George Walker Bush',
	'W',
	'v-bushgeorge', 
	1,
	1
);

insert into myperson
(
	title,
	legalname,
	preferredname,
	alias,
	createdby,
	modifiedby
) values
(
	'Mr',
	'Shawn Corey Carter',
	'Jay Z',
	'v-shawncarter',
	1,
	1
);