# 쿼리 비교를 위해 데이터 변경

insert into employee
    value (15, 'GITCHAN', '2000-04-16', 'F', 'DEV_BACK', 120000000, null);

update employee
set dept_id = 1003
where id = 9;

update department
set leader_id =null
where id = 1002;


# Inner Join

select *
from employee e
         inner join department d on e.dept_id = d.id;

# Outer Join

select *
from employee e
         left outer join department d on e.dept_id = d.id;


select *
from employee e
         right outer join department d on e.dept_id = d.id;

select *
from employee
where dept_id = 1002;

select *
from employee;
select *
from department;

# Cross Join

select *
from employee
         cross join department;
