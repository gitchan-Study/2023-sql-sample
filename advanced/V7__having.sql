# 프로젝트에 참여한 인원이 7명 이상인 프로젝트에 대해서 각 프로젝트 별 참여한 임직원 수, 최대 연봉, 최소 연봉, 평균 연봉 조회

select wo.proj_id, count(e.id), max(e.salary), min(e.salary), avg(e.salary)
from employee e
         join works_on wo on e.id = wo.empl_id
group by wo.proj_id
having count(e.id) >= 7;
