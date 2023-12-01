insert into works_on
values (2, 2003);

# 디자이너들이 참여하고 있는 프로젝트들의 ID와 이름
select distinct p.id, p.name
from project p,
     employee e,
     works_on w
where e.position = 'DSGN'
  and e.id = w.empl_id
  and w.proj_id = p.id;

# 이름에 N이 들어가는 임직원의 이름 찾기
select name
from employee
where name like '%N%';

# 이름이 J로 시작하면서 5글자인 임지원의 이름 찾기
select name
from employee
where name like 'J____';
