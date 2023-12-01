# 임직원을 연봉 기준으로 오름차순 정렬

select *
from employee
order by salary;

# 임직원을 부서 아이디 기준으로 정렬한 후, 연봉 기준으로 내림차순 정렬

select *
from employee
order by dept_id, salary desc;

