# 각 부서별 인원수를 인원수가 많은 순서대로 정렬해서 조회

select e.dept_id as dept_id, count(*) as empl_count
from employee e
group by e.dept_id
order by empl_count desc;

# 각 부서별 성별 인원수를 인원수가 많은 순서대로 정렬해 조회

select e.dept_id as dept_id, e.sex, count(*) as empl_count
from employee e
group by e.dept_id, e.sex
order by empl_count desc;

# 회사 전체의 평균 연봉보다 평균 연봉이 적은 부서들의 평균 연봉 조회
select e.dept_id, avg(e.salary) as avg_salary
from employee e
group by e.dept_id
having avg_salary < (select avg(e.salary)
                     from employee e);

# 각 프로젝트 별로 프로젝트에 참여한 90년대 생들의 수와 이들의 평균 연봉 조회

select wo.proj_id as proj_id, count(e.id) as count_90s, avg(e.salary) as avg_salary
from employee e
         join works_on wo on e.id = wo.empl_id
where e.birth_date between '1990-01-01' and '1999-12-31'
group by wo.proj_id;

# 프로젝트 참여 인원이 7명 이상인 프로젝트에만 한정해 각 프로젝트 별로 프로젝트에 참여한 90년대 생들의 수와 이들의 평균 연봉 조회

select wo.proj_id as proj_id, count(e.id) as count_90s, avg(e.salary) as avg_salary
from employee e
         join works_on wo on e.id = wo.empl_id
where e.birth_date between '1990-01-01' and '1999-12-31'
  and wo.proj_id in (select proj_id
                     from works_on
                     group by proj_id
                     having count(*) >= 7)
group by wo.proj_id;
