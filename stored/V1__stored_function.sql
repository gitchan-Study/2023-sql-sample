create function dept_avg_salary(d_id int)
    returns int
    reads sql data
begin
    declare avg_sal int;
    select avg(salary)
    into avg_sal
    from employee
    where dept_id = d_id;
    return avg_sal;
end;

SELECT *, dept_avg_salary(id)
FROM department;

# DB에 등록된 stored function 조회
show function status where DB = '2023_sql_sample';

# 등록된 stored function 코드 조회
show create function dept_avg_salary;
