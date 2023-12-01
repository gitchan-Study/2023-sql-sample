# 임직원 수 조회

select count(*) as total_number
from employee;

# 프로젝트 2002에 참여한 임직원 수, 최대 연봉, 최소 연봉, 평균 연봉 조회

select count(e.id), max(e.salary), min(e.salary), avg(e.salary)
from employee e
         join works_on wo on e.id = wo.empl_id
where wo.proj_id = 2002;
