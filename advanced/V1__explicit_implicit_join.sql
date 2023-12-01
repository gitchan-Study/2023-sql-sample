# ID = 1인 임직원이 속한 부서의 이름
# Implicit Join

select *
from employee e,
     department d
where e.id = 1
  and e.dept_id = d.id;

# Explicit Join

select *
from employee e
         join department d on d.id = e.dept_id
where e.id = 1;
