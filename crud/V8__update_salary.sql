# 개발팀의 연봉을 2배로 인상
update employee
set salary = salary * 2
where dept_id = 1003;

insert into works_on
values (5, 2003),
       (11, 2003);

# 프로젝트 ID 2003에 참여한 임직원의 연봉을 2배로 인상
update employee as e, works_on as w
set e.salary = e.salary * 2
where e.id = w.empl_id
  and w.proj_id = 2003;

# 모든 임직원의 연봉을 2배로 인상
update employee
set salary = salary * 2;

