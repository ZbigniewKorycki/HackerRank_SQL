SELECT DISTINCT
    Company.company_code,
    Company.founder,
    COUNT(DISTINCT Lead_Manager.lead_manager_code),
    COUNT(DISTINCT Senior_Manager.senior_manager_code),
    COUNT(DISTINCT Manager.manager_code),
    COUNT(DISTINCT Employee.employee_code)
 FROM
    Company
 LEFT JOIN
    Lead_Manager ON Lead_Manager.company_code = Company.company_code
 LEFT JOIN
    Senior_Manager ON Senior_Manager.lead_manager_code = Lead_Manager.lead_manager_code
 LEFT JOIN
    Manager ON Manager.senior_manager_code = Senior_Manager.senior_manager_code
 LEFT JOIN
    Employee ON Employee.manager_code = Manager.manager_code
 GROUP BY
    Company.company_code, Company.founder
 ORDER BY
    Company.company_code;