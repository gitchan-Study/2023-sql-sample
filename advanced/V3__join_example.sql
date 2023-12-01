# 아이디가 1003인 부서에 속하는 임직원 중 리더를 제외한 부서원의 아이디, 이름, 연봉 조회

select e.id, e.name, e.salary
from employee e
         join department d on e.dept_id = d.id
where d.id = 1003
  and d.leader_id != e.id;

# 아이디가 2001인 프로젝트에 참여한 임직원들의 이름과 직군과 소속 부서의 이름 조회

select e.name,
       e.position,
       (select d.name from department d where d.id = e.dept_id) as department_name
from employee e
         join works_on wo on e.id = wo.empl_id
where wo.proj_id = 2001;

select e.name, e.position, d.name as department_name
from employee e
         join works_on wo on e.id = wo.empl_id
         left join department d on d.id = e.dept_id
where wo.proj_id = 2001;
