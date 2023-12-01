update employee
set dept_id=1001
where position in ('CEO', 'CTO', 'CFO');

update employee
set dept_id =1002
where position = 'HR';

update employee
set dept_id=1003
where position like 'DEV%';

update employee
set dept_id=1004
where position = 'DSGN';

update employee
set dept_id=1005
where position in ('PO', 'PLN');
