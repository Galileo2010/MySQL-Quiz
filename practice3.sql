#取得平均薪水最高的公司
#输出公司名称和平均薪水：companyName avgSalary
select distinct(companyName), avgSalary
from Company, 
     Employee,
     (select companyId, avg(salary) avgSalary from Employee group by companyId) A
where Employee.companyId = A.companyId and Employee.companyId = Company.id;

