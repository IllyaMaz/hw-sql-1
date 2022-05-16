create table developer_project(
	developer_id int,
	progect_id int,
	foreign key (developer_id) references developers(id),
	foreign key (progect_id) references projects(id)
);

create table developer_skills(
	developer_id int,
	skill_id int,
	foreign key (developer_id) references developers(id),
	foreign key (skill_id) references skills(id)
);

create table company_project(
	company_id int,
	project_id int,
	foreign key (company_id) references companies(id),
	foreign key (project_id) references projects(id)
);

create table customer_project(
	customer_id int,
	project_id int,
	foreign key (project_id) references projects(id),
	foreign key (customer_id) references customers(id)
);

create table developers(
	id int primary key,
	first_name varchar(15) not null,
	age int,
	gender varchar(10)
);

create table skills(
	id int primary key,
	name_skill varchar(15),
	level_skill varchar(15)
);

create table projects(
	id int primary key,
	name_project varchar(20),
	deadline varchar(30)
);

create table companies(
	id int primary key,
	name_company varchar(30)
);

create table customers(
	id int primary key,
	first_name varchar(15)
);
