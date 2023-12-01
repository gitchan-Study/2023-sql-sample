# JOHN의 퇴사
delete
from works_on
where empl_id = (select id
                 from employee
                 where name = 'JOHN');

delete
from employee
where name = 'JOHN';

# JANE의 휴가
delete
from works_on
where empl_id = 2;

# DINGYO가 프로젝트 2001에만 집중하고, 나머지에서는 하차
delete
from works_on
where empl_id = 5
  and proj_id != 2001;


