# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name
select CompanyName, name, M.max_salary 
from Company Com, 
     Employee Emp, 
     (select companyId, max(salary) max_salary from Employee group by companyId) M 
where Emp.companyId = Com.id 
      and Emp.companyId = M.companyId 
      and Emp.salary = M.max_salary;