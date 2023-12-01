create table department
(
    id        int primary key,
    name      varchar(20) not null unique,
    leader_id int
) engine = innoDB;

create table employee
(
    id         int primary key,
    name       varchar(30) not null,
    birth_date date,
    sex        char(1) check ( sex in ('M', 'F') ),
    position   varchar(10),
    salary     int default 50000000,
    dept_id    int,
    foreign key (dept_id) references department (id)
        on delete set null
        on update cascade,
    CHECK ( salary >= 50000000 )
) engine = InnoDB;

create table project
(
    id         int primary key,
    name       varchar(30) not null,
    leader_id  int,
    start_date date,
    end_date   date,
    foreign key (leader_id) references employee (id)
        on delete SET NULL
        on update CASCADE,
    CHECK ( start_date < end_date )
) engine = InnoDB;

create table works_on
(
    empl_id int,
    proj_id int,
    foreign key (empl_id) references employee (id)
        on delete SET NULL
        on update CASCADE,
    foreign key (proj_id) references project (id)
        on delete SET NULL
        on update CASCADE
) engine = InnoDB;
