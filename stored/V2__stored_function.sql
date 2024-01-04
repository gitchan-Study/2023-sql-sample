# 두 정수의 곱셈 결과를 가져오는 프로시저

create procedure product(in a int, in b int, out result int)
begin
    set result = a * b;
end;

call product(5, 7, @result);
select @result;

# 각 부서별 평균 연봉을 가져오는 프로시저

create procedure get_dept_avg_salary()
begin
    select dept_id, avg(salary)
    from employee
    group by dept_id;
end;

call get_dept_avg_salary();
